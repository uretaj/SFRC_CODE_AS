{bionix}:
with bionix;
with pkgs; let
  peptidesApp = import ../../src/peptides;
  ncbi-epitopes = fetchers.fetchAnnexFile "P4/wp/SHA256E-s991541--4215db0c9e38a9c2f4b87a96e9b1ad77d385280970df3ed6d741384242b5b1f5/SHA256E-s991541--4215db0c9e38a9c2f4b87a96e9b1ad77d385280970df3ed6d741384242b5b1f5";
in {
  transStart = ensembl.query {
    sql = ''
      select concat(s.stable_id, '.', s.version)
      , t.seq_start
      from translation as t
      inner join transcript as s on s.transcript_id = t.transcript_id;
    '';
    sha256 = "sha256-IDlFCLqUNT3UdLUrkeP0Wme5vO2Q/wexxAuMvTEjJPM=";
  };
  cdnaAligned = let
    script = writeText "align.awk" ''
      BEGIN{
        FS = "[ \t]"
      }
      FNR == NR {
        tab[$1] = $2
        next
      }
      /^>/{
        start = tab[substr($1, 2)]
        print
        next
      }
      {
        if(start > length($0)){
          start = start - length($0)
          next
        }
        print substr($0, start)
        start = 1
      }
    '';
  in
    exec (_: _:
      stage {
        name = "align-cdna";
        buildCommand = ''
          gunzip < ${dbs.snpeff.cds} > ref.fa
          awk -f ${script} ${neoantigens.transStart} ref.fa > $out
        '';
      });
  peptides = exec (attrs: {
    samples ? null, # Deprecated
    vcf,
    facets,
    minf ? 0.25,
    ...
  }:
    assert samples == null; let
      sql = writeText "query.sql" ''
        attach '${bionix.facets.reporting.db {} [facets]}' as facets;
        SELECT
            transcriptid,
            replace(group_concat (DISTINCT h), ',', ' ')
        FROM (
            SELECT
                transcriptid,
                ifnull (group_concat (hgvs_c, '|') FILTER (WHERE NOT somatic), ${"''"}) || ':' ||
                ifnull (group_concat (hgvs_c, '|') FILTER (WHERE somatic), ${"''"}) AS h
            FROM
                hgvs_cs
            NATURAL JOIN hgvs_ps
            NATURAL JOIN calls
            NATURAL JOIN haplotypes
            NATURAL JOIN callfilters
            NATURAL JOIN samples
            NATURAL JOIN annotations
            NATURAL JOIN haplotypeFrequencies
        WHERE
            FILTER = 'PASS'
            AND annotation != 'LOW'
            AND annotation != 'MODIFIER'
            AND frequency > (select ${assert minf > 0; toString minf} * purity from facets.stats)
        GROUP BY
            transcriptid,
            haplotypeid)
        GROUP BY
            transcriptid;
      '';
    in
      stage {
        name = "epimuts";
        buildInputs = [sqlite gawk];
        buildCommand = ''
          sqlite3 -tabs -noheader ${dbs.db {inherit (attrs) id;} vcf} < ${sql} | \
            ${peptidesApp}/bin/peptides ${neoantigens.cdnaAligned {} {}} 9 > $out
        '';
      });
  antigens = let
    netmhc = callPackage ../../src/nix/netMHCpan.nix {};
    matchAlleles = writeText "matchAlleles.awk" ''
      FNR==NR{tab[$2]=$1;next}
      tab[$1]{print tab[$1]}
    '';
  in
    exec (attrs: {
      alleles,
      vcf,
      facets,
      ...
    }:
      stage {
        name = "antigens";
        buildInputs = [gawk netmhc mysql jq];
        buildCommand = ''
          # Figure out alleles
          cat ${alleles}/*json | jq -r '.hla.alleles|join("\n")' | sed 's/^/HLA-/' > alleles
          awk -f ${matchAlleles} ${netmhc}/lib/netmhc/data/allelenames alleles > alleles-known

          tr '\n' ',' < alleles-known | \
            sed 's/,$//' | \
            xargs netMHCpan -f ${neoantigens.peptides attrs {inherit vcf facets;}} -xls -l 9 -a
          cp NetMHCpan_out.xls $out
        '';
      });
  trans2gene = let
    dumpsql = writeText "trans2gene.sql" ''
      select A.value
        , T.transcript_id = G.canonical_transcript_id
        , T.stable_id
      from gene as G
        , gene_attrib as A
        , transcript as T
      where T.gene_id = G.gene_id
        and A.gene_id = G.gene_id
        and A.attrib_type_id = 4;
    '';
    importsql = writeText "import.sql" ''
      pragma temp_store=memory;
      create table t2g(gene, canoc, transcript);
      .separator "\t"
      .import ./dump t2g
      create index t2g_gene on t2g(gene);
      create index t2g_trans on t2g(transcript);
    '';
  in
    exec (_: _:
      stage {
        name = "trans2gene";
        buildInputs = [mysql sqlite];
        buildCommand = ''
          mysql --user=anonymous --host=ensembldb.ensembl.org -A -D ${bionix.config.ensembl.dbname} -s < ${dumpsql} > dump
          sqlite3 sqlite.db < ${importsql}
          cp sqlite.db $out
        '';
        outputHashMode = "flat";
        outputHashAlgo = "sha256";
        outputHash = "sha256-DaMWWAKcgMwoEISIn7C/cat8PYDDkwhy6xS1KcdKMks=";
      });
  antigensProc = let
    sql = writeText "sql" ''
      pragma temp_store=memory;
      create table results(enst, gt, mt, pos, hla, rank REAL);
      create table align(mt, score REAL);
      .separator "\t"
      .import ./tmp results
      .import ./tmp2 align
      attach "${neoantigens.trans2gene {} {}}" as t2g;
      select * from (select distinct gene, enst, gt, mt, pos, hla, rank, score, (rank () over (order by score))*(rank () over (order by rank desc)) as combined from t2g
        inner join results on substr(enst,1,15) = transcript
        natural join align
        where canoc
        order by combined desc)
      where rank < 5
      limit 1000;
    '';
    script = writeText "proc.awk" ''
      BEGIN{
        SUBSEP=OFS="\t"
        T=4
      }
      FNR == NR && /^>/ {
        enst[$2]=$3
        gt[$2]=$4
        pos[$2]=$5
        id = $2
        next
      }
      FNR == NR {mt[id] = $1;next}
      FNR == 1 {
        for(i = 1; i <= NF; i++)
          hlaidx[i]=$i
      }
      FNR <= 2 { next }
      {
        split($3, arr, "_")
        id = arr[1]
        for(i = 7; i <= NF; i+= 4){
          if(1){
            hla = hlaidx[1+(i-7)/4]
            print enst[id], gt[id], mt[id], pos[id], hla, $i
          }
        }
      }
    '';
  in
    exec (attrs: inputs:
      stage {
        name = "antigens-processed";
        buildInputs = [gawk sqlite];
        buildCommand = ''
          awk -f ${script} ${neoantigens.peptides attrs inputs} ${neoantigens.antigens attrs inputs} > tmp
          awk '{print $3}' tmp | ${peptidesApp}/bin/align ${ncbi-epitopes} > tmp2
          sqlite3 ':memory:' < ${sql} > $out
        '';
      });
}
