{bionix}:
with bionix;
with pkgs; let
  noAlt = let
    script = pkgs.writeText "noAlt.awk" ''
      /^>/{flag=0}
      /^>chr/{flag++}
      flag{print}
    '';
  in
    exec' (input:
      stage {
        name = "noAlt";
        buildInput = with pkgs; [gawk];
        buildCommand = "LANG=C awk -f ${script} ${input} > $out";
        passthru.filetype = input.filetype;
      });
  inherit (bionix.config.ensembl) version;
in {
  cosmic = exec'' (stage rec {
    name = "cosmic";
    buildInputs = with pkgs; [curl jq sqlite];
    sql = writeText "cosmic-import.sql" ''
      pragma temp_store=memory;
      .mode tabs
      .import ./cosmic.tsv cosmic
      CREATE INDEX hgvs_c on cosmic("Mutation CDS");
      CREATE INDEX gene on cosmic("Gene name");
    '';
    buildCommand = ''
      url=$(curl -kH "Authorization: Basic $(cat /stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/lib/secrets/cosmic.key)" https://cancer.sanger.ac.uk/cosmic/file_download/GRCh38/cosmic/v99/CosmicMutantExportCensus.tsv.gz | jq -r '.url')
      curl -k "$url" | gunzip > cosmic.tsv
      sqlite3 $out < ${sql}
    '';
    outputHash = "sha256-95l2jEAbgCyF4RpFJSXdux9IEc43QRUQbdGJkb5SIl0=";
    outputHashAlgo = "sha256";
  });

  ## Nature paper with important germline genes 10.1038/s41467-020-16067-1
  nature = let
    sql = writeText "import.sql" ''
      .mode csv
      .import genes nature
    '';
  in
    exec'' (stage {
      name = "nature-germline-genes";

      src = pkgs.fetchurl {
        url = "https://static-content.springer.com/esm/art%3A10.1038%2Fs41467-020-16067-1/MediaObjects/41467_2020_16067_MOESM5_ESM.xlsx";
        sha256 = "05jnfwfjnihmhy191pcl7p2m6dmicfkbb8bmlbpwddppjfsxsfln";
      };

      buildInputs = with pkgs; [xlsx2csv sqlite];

      buildCommand = ''
        xlsx2csv $src | sed 1d | sed 1d > genes
        sqlite3 $out < ${sql}
      '';
    });

  ## the FCC shortlist of important genes
  fcc = let
    sql = writeText "import.sql" ''
      .mode csv
      .import ${../../lib/fcc-genes.txt} fcc
    '';
  in
    exec'' (stage {
      name = "fcc-germline-genes";
      buildInputs = with pkgs; [sqlite];
      buildCommand = ''
        sqlite3 $out < ${sql}
      '';
    });

  # DBNSFP database
  dbnsfp = exec'' (stage rec {
    name = "dbnsfp-${version}";
    version = "4.7a";
    src = fetchurl {
      url = "https://dbnsfp.s3.amazonaws.com/dbNSFP${version}.zip";
      sha256 = "sha256-yJcBlDCIAohrfsbBjoiUTc2GNxCeHqN4dHYTx1CNAXI=";
    };
    nativeBuildInputs = [(pkgs.callPackage ../vardb {})];
    buildCommand = ''
      dbnsfp db $src
      cp db $out
    '';
    stripStorePaths = false;
  });

  chromlengths = exec'' (stage {
    name = "chromlen";
    buildCommand = ''
      awk '$0 ~ ">" {if (NR > 1) {print c;} c=0
        printf substr($1, 2) "\t"; } $0 !~ ">" {c+=length($0);}
        END { print c; }' ${refdbs.ref} > $out
    '';
  });

  canoc = let
    export = writeText "export.sql" ''
      select transcript.stable_id, gene_attrib.value as gene
      from gene
      inner join transcript on transcript_id = canonical_transcript_id
      inner join gene_attrib on gene.gene_id = gene_attrib.gene_id
      where
        attrib_type_id = 4
      order by
        stable_id;
    '';
    import = writeText "import.sql" ''
      pragma temp_store=memory;
      .mode tabs
      .import table canoc
      create index id on canoc(stable_id);
    '';
  in
    exec'' (stage {
      name = "fetch-canoc";
      buildInputs = [sqlite mysql];
      buildCommand = ''
        mysql -h ensembldb.ensembl.org -u anonymous -D homo_sapiens_core_${toString version}_38 < ${export} > table
        sqlite3 $out < ${import}
      '';
      outputHashMode = "flat";
      outputHashAlgo = "sha256";
      outputHash = "sha256-6MIAHsQv8kgDtdhtGJzjqD/6TllQwP5AjS64sCMWvwY=";
    });

  ref = noAlt bionix.ref.grch38.seq;

  refMouse = noAlt bionix.ref.grcm38.seq;

  geneLocations = let
    sql = writeText "sql" ''
      select a.value, r.name, g.seq_region_start, g.seq_region_end
      from gene as g
      inner join gene as g2 on g.stable_id = g2.stable_id
      inner join seq_region as r on g.seq_region_id = r.seq_region_id
      inner join gene_attrib as a on a.gene_id = g2.gene_id
      where a.attrib_type_id  = 4 and g2.is_current = 1;
    '';
  in
    exec'' (stage {
      name = "fetch-gene-locations";
      buildInputs = with pkgs; [mysql];
      buildCommand = "mysql -u anonymous -h ensembldb.ensembl.org -D ${bionix.config.ensembl.dbname} < ${sql} > $out";
      outputHash = "sha256-iY21xZlyOsIQVqJGc8UHfg9teciNG/89tqKtjnRJRBg=";
      outputHashAlgo = "sha256";
    });

  geneLocationsDB = exec'' (stage {
    name = "sqlite-gene-locations";
    buildInputs = with pkgs; [sqlite];
    buildCommand = ''
      ln -s ${refdbs.geneLocations} genelocs
      sqlite3 $out < $sql
    '';
    sql = writeText "sql" ''
      pragma temp_store=memory;
      .mode tabs
      create table genelocs(gene, chr, start, end, primary key (chr, start, end));
      .import genelocs genelocs --skip 1
    '';
  });

  overrep = fetchers.fetchAnnexFile "qM/Kg/SHA256E-s18907136--10f20f474a998f964cc411068c05ebb09d764d6b09e741bf44f98eeb020874a1.db/SHA256E-s18907136--10f20f474a998f964cc411068c05ebb09d764d6b09e741bf44f98eeb020874a1.db";
}
