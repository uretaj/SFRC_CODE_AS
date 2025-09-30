{
  bionix ? import <bionix> {},
  vcf,
  name,
  mosdepth,
  facets,
  neoantigens ? null,
  analysisType,
  redcap ? null,
  svs ? {},
  germlineOnly ? false,
  fusions ? {},
  mchord ? null,
  hla,
  samples,
  msi,
  viralInsertions,
}:
with bionix;
with lib; let
  inherit (pkgs) writeText;

  # Get site ids for labelling columns
  siteids = mapAttrs (_: y: attrNames (groupBy (x: x.site) y)) (
    let
      groups = groupBy (x: x.class) samples;
    in {
      inherit (groups) normals;
      tumours = groups.tumours or [];
    }
  );
  normalid = assert length siteids.normals == 1; head siteids.normals;
  tumourids = siteids.tumours;

  fmtHlaTypes = exec'' (stage {
    name = "fmt-hla-types";
    buildInputs = with pkgs; [jq];
    buildCommand = ''
      cat ${hla}/*json | jq -r '.hla.alleles|join("\n")' \
        | tr ' ' '\n' | sed 's/^/|/' > $out
    '';
  });

  fmtTsv = exec' (input:
    stage {
      name = "fmt-tsv";
      buildInputs = with pkgs; [gawk];
      buildCommand = ''
        cat ${input} |  \
          tr '|' ';' | \
          tr '\t' '|' | \
          awk 'FNR==2{print "|-"}{print "|" $0 "|"}' > $out
      '';
    });

  db = dbs.db {id = name;} vcf;
  inherit (refdbs) cosmic fcc canoc dbnsfp overrep geneLocationsDB;

  oneHeaderOnly = let
    strip-org-hdr = pkgs.writers.writeHaskellBin "strip-org-hdr" {} ../strip-org-hdr.hs;
    in exec' (xs:
    stage {
      name = "oneHeaderOnly";
      buildInputs = [strip-org-hdr];
      buildCommand =
        ''
          cat ${head xs} > $out
        ''
        + concatMapStringsSep "\n" (p: "strip-org-hdr ${p} >> $out") (tail xs);
    });

  addOrgColumn = exec ({
    hdr,
    val,
  }: input:

    let prefix-org-column = pkgs.writers.writeHaskellBin "prefix-org-column" {} ../prefix-org-column.hs;
    in
    stage {
      inherit input hdr val;
      name = "add-org-column";
      buildInputs = [prefix-org-column];
      buildCommand = ''
        prefix-org-column "$input" "$hdr" "$val" > "$out"
      '';
    });

  concatSites = f:
    flip pipe [
      (mapAttrsToList (n: v:
        addOrgColumn {
          hdr = "site";
          val = n;
        } (f v)))
      oneHeaderOnly
    ];

  pragmas = {
    cache_size = 100000;
    temp_store = "memory";
    journal_mode = "OFF";
    synchronous = "OFF";
    mmap_size = 30000000000;
  };
  fmtPragmas = ps: ''
    .output /dev/null
    ${concatStrings (mapAttrsToList (n: v: "pragma ${n}=${toString v};") ps)}
    .output stdout
  '';

  query = header: qname: body:
    exec'' (stage rec {
      name = "query-" + qname;
      buildInputs = with pkgs; [sqlite];
      outputs = ["out" "csv"];
      buildCommand = ''
        sqlite3 -tabs ${optionalString header "-header"} ${db} < ${writeText "query.sql" ((fmtPragmas pragmas) + body)} > $csv
        cat $csv | \
          tr '|' ':' | \
          tr '\t' '|' | \
          awk '${optionalString header ''FNR==2{print "|-"}''}{print "|" $0 "|"}' > $out
      '';
    });

  vars = {
    count = query false "varcount" ''
      ATTACH "${canoc}" AS canoc;

      SELECT
          'Germline',
          count(DISTINCT mutid)
      FROM
          calls
          NATURAL JOIN haplotypes
          NATURAL JOIN callfilters
      WHERE
          FILTER == 'PASS'
          AND NOT somatic;

      SELECT
          'Somatic',
          count(DISTINCT mutid)
      FROM
          calls
          NATURAL JOIN haplotypes
          NATURAL JOIN callfilters
      WHERE
          FILTER == 'PASS'
          AND somatic;

      SELECT
          'Somatic coding',
          count(DISTINCT mutid)
      FROM
          calls
          NATURAL JOIN haplotypes
          NATURAL JOIN callfilters
          NATURAL JOIN hgvs_ps
          NATURAL JOIN annotations
          INNER JOIN canoc.canoc ON canoc.stable_id = transcriptid
      WHERE
          annotation != 'synonymous_variant'
          AND FILTER == 'PASS'
          AND somatic;

    '';

    tmb = query false "tmb" ''
      ATTACH "${canoc}" AS canoc;

      SELECT
          siteid,
          count(*) / 36 AS TMB,
          count(*) FILTER (WHERE frequency > 0.2) / 36 AS TMB20
      FROM
          calls
          NATURAL JOIN callfilters
          NATURAL JOIN hgvs_ps
          NATURAL JOIN haplotypes
          NATURAL JOIN haplotypefrequencies
          NATURAL JOIN muts
          NATURAL JOIN samples
          NATURAL JOIN annotations
          INNER JOIN canoc.canoc ON canoc.stable_id = transcriptid
      WHERE
          somatic
          AND annotation != 'synonymous_variant'
          AND FILTER == 'PASS'
      GROUP BY
          siteid
      HAVING
          TMB > 0;
    '';

    germline = query true "germline" ''
      ATTACH "${fcc}" AS fcc;
      ATTACH "${canoc}" AS canoc;
      ATTACH "${dbnsfp}" AS dbnsfp;
      ATTACH "${cosmic}" AS cosmic;
      ATTACH "${overrep}" as overrep;

      SELECT
          canoc.gene,
          transcriptid || '.' || transcriptver AS transcript,
          hgvs_c,
          hgvs_p,
          annotation,
          printf("%f", dbnsfp_gnomAD_genomes_AF) AS gnomAD,
          dbnsfp_clinvar_clnsig AS clinvar,
          CASE WHEN f.gene NOT NULL THEN "✓" END AS FCC,
          CASE WHEN o.pos NOT NULL THEN "✗" END AS Overrep,
          IFNULL(dbnsfp_REVEL_score, ".") || " "
          || IFNULL(dbnsfp_MutationTaster_pred, ".")
          || IFNULL(dbnsfp_SIFT_pred, ".")
          || IFNULL(dbnsfp_Polyphen2_HDIV_pred, ".")
          || IFNULL(dbnsfp_Polyphen2_HVAR_pred, ".") AS insilicos,
          ${concatMapStringsSep "," (site: "count(distinct haplotypeid) FILTER (WHERE siteid = '${site}') AS \"${site} alt count\"") ([normalid] ++ tumourids)},
          ${concatMapStringsSep "," (site: "min (frequency) FILTER (WHERE siteid = '${site}') AS \"${site} AF\"") ([normalid] ++ tumourids)}
      FROM
          hgvs_cs
          INNER JOIN canoc.canoc ON canoc.stable_id = transcriptid
          NATURAL JOIN calls
          NATURAL JOIN annotations
          NATURAL LEFT JOIN hgvs_ps
          NATURAL JOIN muts
          NATURAL JOIN allelefrequencies
          NATURAL JOIN haplotypes
          NATURAL LEFT JOIN (select mutid, sampleid, filter from callfilters where filter != 'PASS' and filter != 'AFB' and filter != 'FRF')
          NATURAL JOIN samples
          NATURAL JOIN impacts
          LEFT JOIN fcc AS f ON f.gene = canoc.gene
          LEFT JOIN (SELECT DISTINCT "Gene name" AS gene FROM cosmic) AS c ON c.gene = canoc.gene
          NATURAL LEFT JOIN dbnsfp.muts
          LEFT JOIN dbnsfp_Ensembl_transcriptid on dbnsfp_Ensembl_transcriptid.hmutid = dbnsfp.muts.hmutid and dbnsfp_Ensembl_transcriptid = transcriptid
          NATURAL LEFT JOIN dbnsfp_gnomAD_genomes_AF
          NATURAL LEFT JOIN dbnsfp_clinvar_clnsig
          NATURAL LEFT JOIN dbnsfp_REVEL_score
          NATURAL LEFT JOIN dbnsfp_MutationTaster_pred
          NATURAL LEFT JOIN dbnsfp_SIFT_pred
          NATURAL LEFT JOIN dbnsfp_Polyphen2_HDIV_pred
          NATURAL LEFT JOIN dbnsfp_Polyphen2_HVAR_pred
          NATURAL LEFT JOIN overrep as o
      WHERE NOT somatic
      AND (f.gene IS NOT NULL OR c.gene is not null)
      AND (clinvar IS NULL OR (clinvar != 'Benign' AND clinvar != 'Benign/Likely_benign' AND clinvar != 'Likely_benign'))
      AND (clinvar LIKE '%athogenic%'
          OR (filter is null
              AND (impact = 'HIGH' OR impact = 'MODERATE')
              AND (gnomAD IS NULL
                  OR cast(gnomAD AS real) < 0.01)))
      GROUP BY
          mutid,
          transcript;
    '';

    high = query true "high" ''
      ATTACH "${canoc}" AS canoc;
      ATTACH "${dbnsfp}" AS dbnsfp;
      ATTACH "${cosmic}" AS cosmic;
      ATTACH "${overrep}" as overrep;

      SELECT
          canoc.gene,
          transcriptid || '.' || transcriptver AS transcript,
          hgvs_c,
          hgvs_p,
          annotation,
          printf("%f", dbnsfp_gnomAD_genomes_AF) AS gnomAD,
          dbnsfp_clinvar_clnsig AS clinvar,
          CASE WHEN c.gene NOT NULL THEN "✓" END AS Cosmic,
          CASE WHEN o.pos NOT NULL THEN "✗" END AS Overrep,
          IFNULL(dbnsfp_REVEL_score, ".") || " "
          || IFNULL(dbnsfp_MutationTaster_pred, ".")
          || IFNULL(dbnsfp_SIFT_pred, ".")
          || IFNULL(dbnsfp_Polyphen2_HDIV_pred, ".")
          || IFNULL(dbnsfp_Polyphen2_HVAR_pred, ".") AS insilicos,
          ${concatMapStringsSep "," (site: "group_concat (frequency,';') FILTER (WHERE siteid = '${site}') AS \"${site} HF\"") tumourids},
          max(frequency) as maxHF
      FROM
          hgvs_cs
          INNER JOIN canoc.canoc ON canoc.stable_id = transcriptid
          NATURAL JOIN calls
          NATURAL JOIN annotations
          NATURAL LEFT JOIN hgvs_ps
          NATURAL JOIN muts
          NATURAL LEFT JOIN haplotypefrequencies
          NATURAL JOIN haplotypes
          NATURAL LEFT JOIN (select mutid, sampleid, filter from callfilters where filter != 'PASS' and filter != 'AFB' and filter != 'FRF')
          NATURAL JOIN samples
          NATURAL JOIN impacts
          LEFT JOIN (SELECT DISTINCT "Gene name" AS gene FROM cosmic) AS c ON c.gene = canoc.gene
          NATURAL LEFT JOIN dbnsfp.muts
          LEFT JOIN dbnsfp_Ensembl_transcriptid on dbnsfp_Ensembl_transcriptid.hmutid = dbnsfp.muts.hmutid and dbnsfp_Ensembl_transcriptid = transcriptid
          NATURAL LEFT JOIN dbnsfp_gnomAD_genomes_AF
          NATURAL LEFT JOIN dbnsfp_clinvar_clnsig
          NATURAL LEFT JOIN dbnsfp_REVEL_score
          NATURAL LEFT JOIN dbnsfp_MutationTaster_pred
          NATURAL LEFT JOIN dbnsfp_SIFT_pred
          NATURAL LEFT JOIN dbnsfp_Polyphen2_HDIV_pred
          NATURAL LEFT JOIN dbnsfp_Polyphen2_HVAR_pred
          NATURAL LEFT JOIN overrep as o
      WHERE (clinvar IS NULL OR (clinvar != 'Benign' AND clinvar != 'Benign/Likely_benign' AND clinvar != 'Likely_benign'))
      AND (clinvar LIKE '%athogenic%'
          OR (c.gene = 'TERT' and hgvs_c = 'c.-124C>T')
          OR (filter is null
              AND (impact = 'HIGH' OR impact = 'MODERATE')
              AND (gnomAD IS NULL
                  OR cast(gnomAD AS real) < 0.01)))
      GROUP BY mutid, transcript
      HAVING min(somatic)
      ORDER BY maxHF desc
      LIMIT 3000;
    '';
  };

  circularGenes = exec'' (stage rec {
    name = "query-gridss-ecdna";
    buildInputs = with pkgs; [sqlite];
    outputs = ["out" "csv"];
    buildCommand = ''
      printf "%s" "$query" | sqlite3 -tabs ${svs.gridss.circles} > $csv
      cat $csv | \
        tr '|' ':' | \
        tr '\t' '|' | \
        awk 'FNR==2{print "|-"}{print "|" $0 "|"}' > $out
    '';
    query = ''
      ATTACH "${cosmic}" AS cosmic;
      ATTACH "${geneLocationsDB}" AS genes;
      .header on
      select distinct genelocs.gene
      from regions
      inner join genelocs on regions.chr = genelocs.chr and regions.start <= genelocs.end and regions.end >= genelocs.start
      inner join cosmic on gene = "Gene name";
    '';
  });

  mosdepthPlot = let
    app = import ../mosdepth-plot;
    toPairs = mosdepth @ {
      name,
      what,
      ...
    }: "${escapeShellArg name} ${mosdepth}/out.mosdepth.${what}.dist.txt";
  in
    stage {
      name = "mosdepth-plot";
      buildInputs = [app];
      buildCommand = ''
        plot -c ${concatMapStringsSep " " toPairs mosdepth} > $out
      '';
    };

  mutsigsOrg = let
    gensigs = ver: let
      fmt = {name, ...}: ''
        #+CAPTION: Mutational signatures (${ver}) for ${name}
        #+ATTR_HTML: :class dataTable
        ${mutsigs."${ver}" {inherit vcf;} name}
      '';
    in
      concatMapStringsSep "\n" fmt
      (filter (x: x.class == "tumours") mosdepth);
  in
    genAttrs ["v2" "v3"] gensigs;

  cnv =
    mapAttrs (_: bionix.facets.reporting.plot {inherit analysisType;}) facets;

  ## R functions to read and write pipe-separated tables
  tableFunctions = writeText "tableFunc.r" ''
    ## function to convert pipe-separated org-mode to R data frames
         orgToRtable <- function( orgtable) {
          Rtable <- read.table(
              sep = "|", skip = 2, stringsAsFactors = FALSE, header = FALSE,
              file = orgtable
          ) %>% select( ., -1, -ncol(.) )
          colnames( Rtable) <- read.table(
              sep = "|", nrows = 1, colClasses = c("character"), header = FALSE,
              comment.char = "", file = orgtable
          ) %>% select( ., -1, -ncol(.) ) %>% unlist
          return( Rtable )
         }

    ## function to write data frame to pipe-separated markdown table
         writepipetable <- function( Rtable, mdfilename, colHeader=TRUE ) {
             if (colHeader) {
               write.table( as.list( colnames( Rtable ) ),
                 file = mdfilename, sep = '|',
                 quote = FALSE, row.names = FALSE, col.names = FALSE )
             } else {
               write.table( as.list(
                 rep( '|', times = length( colnames( Rtable ) ) - 1 ) ),
                     file = mdfilename,
                     quote = FALSE, row.names = FALSE, col.names = FALSE )
             }
             headerline <- str_pad( "", width = str_length( colnames( Rtable ) ),
                           side = "right", pad = "-" )
             write.table( as.list( headerline ),
                 file = mdfilename, sep = '|', append = TRUE,
                 quote = FALSE, row.names = FALSE, col.names = FALSE )
             write.table( Rtable,
                 file = mdfilename, sep = '|', append = TRUE,
                 quote = FALSE, row.names = FALSE, col.names = FALSE )
         }
  '';

  filtvar = import ../summaries/variantFilter.nix {
    inherit bionix vars cnv analysisType tableFunctions;
  };
  summdepth = import ../summaries/summDepth.nix {
    inherit bionix mosdepth cnv analysisType tableFunctions;
  };
  summstats = import ../summaries/summStats.nix {
    inherit bionix vars cnv svs analysisType tableFunctions;
  };

  summarytemplate = writeText (name + "summary.txt") ''
    # STAFFORD FOX RARE CANCER DNA ANALYSIS #

    # Patient Internal ID: ${name}  \  \  Analysis Type: ${analysisType} #

    ### REDCap clinical details ###
    ${
      optionalString (redcap ? case_details) ''
        ${redcap.case_details}
      ''
    }
    ${
      optionalString (redcap ? pre_analysis_mutations) ''
        ${redcap.pre_analysis_mutations}
      ''
    }

    ### Sequencing Depth ###
    ${summdepth}

    ### Counts of Small Mutations ###
    ${summstats.counts}

    ### Copy Number Overview ###
    ${summstats}

    ### Mutation Overview ###
    ${summstats.tmbhrd}

    ## Filtered Germline Variants ##
    ${filtvar.germline}
    ${filtvar.germfilttext}

    ${filtvar.germomit}

    ## Filtered Somatic Variants ##
    ${filtvar}
    ${filtvar.somomit}

    ${filtvar.somfilttext}

    ${
      optionalString (analysisType != "CCP") ''
        \

        ## CNV focal events: COSMIC genes in regions less than 3 Mbp wide, where Total CN >= 8 or complete deletion ##
          ${
          forConcatAttrs cnv (n: v: ''

            ### ${n} ###
            ${v.filteredRegions}
            \
          '')
        }
      ''
    }

    ### Previous meeting discussion from REDCap ###
    ${
      optionalString (redcap ? meeting_discussions_follow_up) ''
        ${redcap.meeting_discussions_follow_up}
      ''
    }
  ''; # end summarytemplate

  # Pizzly fusion tables
  pizzly2org = x:
    exec'' (stage {
      name = "pizzly2org";
      buildInputs = [pkgs.jq];
      buildCommand = ''
        echo "|Gene a|Gene b|" > $out
        echo "|-" >> $out
        cat ${x}/output.json \
          | jq -r '.genes|map(select(.splitcount>=10))|map("|" + .geneA.name + "|" +.geneB.name + "|")|@csv' \
          | tr -d '"' | tr ',' '\n' >> $out
      '';
    });

  # Neoantigen table reformatting
  neo2org = x:
    stage {
      name = "neo2org";
      buildCommand = ''
        echo '|gene|transcript|germline|mutant|position|HLA|rank|score|combined|' > $out
        echo '|-' >> $out
        tr '\t' '|' < ${x} | sed 's/^/|/' | sed 's/$/|/' | sed 's/HLA-//' >> $out
      '';
    };

  forConcatAttrs = x: f: concatStrings (mapAttrsToList f x);

  org-html-themes = pkgs.fetchFromGitHub {
    owner = "fniessen";
    repo = "org-html-themes";
    rev = "39a8ce24babbf55667e3f4be21e37c619f55f257";
    sha256 = "1miwn1mlbq62i61l6nlgh25dzvcqdllhyyzgwjn5chz0zz749jk9";
  };

  germlineTemplate = writeText (name + ".org") ''
    #+TITLE: ${name} germline report
    #+OPTIONS: ^:nil
    #+SETUPFILE: ${org-html-themes}/org/theme-readtheorg.setup
    #+ATTR_HTML: :class dataTable
    #+HTML_HEAD: <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
    #+HTML_HEAD: <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    #+HTML_HEAD: <script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
    #+HTML_HEAD: <script type="text/javascript">$(document).ready( function () {$('.dataTable').DataTable();});</script>
    #+HTML_HEAD: <style>body{overflow-x:auto;}</style>

    * Introduction

    Analysis Type: ${analysisType} (germline only)

    ${
      optionalString (hasPrefix "SFRC" name) ''
        ** Redcap info

        [[https://redcap.wehi.edu.au/redcap_v14.3.9/DataEntry/record_home.php?pid=247&id=${name}][RedCap entry]]

        ${
          optionalString (redcap != null) (concatMapStrings (field: ''
            *** ${field}

            ${redcap."${field}"}
          '') (attrNames redcap))
        }
      ''
    }

    ** Basic stats

    ${mosdepthPlot}

    * Variants

    #+CAPTION: Germline mutations
    #+ATTR_HTML: :class dataTable
    ${vars.germline}

    * Appendix: Predictor nomenclature
    ** Mutation taster
    - A: automatic disease causing
    - D: disease causing
    - N: polymorphism
    - P: automatic polymorphism

    ** PolyPhen
    - D: probably damaging
    - P: possibly damaging
    - B: benign

    ** SIFT
    - D: damaging
    - T: tolerated
  '';

  template = writeText (name + ".org") ''
    #+TITLE: ${name} report
    #+OPTIONS: ^:nil
    #+SETUPFILE: ${org-html-themes}/org/theme-readtheorg.setup
    #+ATTR_HTML: :class dataTable
    #+HTML_HEAD: <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
    #+HTML_HEAD: <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    #+HTML_HEAD: <script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
    #+HTML_HEAD: <script type="text/javascript">$(document).ready( function () {$('.dataTable').DataTable();});</script>
    #+HTML_HEAD: <style>body{overflow-x:auto;}</style>

    * ${name}

    Analysis Type: ${analysisType}

    ${
      optionalString (hasPrefix "SFRC" name) ''
        ** Redcap info

        [[https://redcap.wehi.edu.au/redcap_v8.3.2/DataEntry/record_home.php?pid=247&id=${name}][RedCap entry]]

        ${
          optionalString (redcap != null) (concatMapStrings (field: ''
            *** ${field}

            ${redcap."${field}"}
          '') (attrNames redcap))
        }
      ''
    }

    ** Basic stats

    #+CAPTION: Counts
    ${vars.count}

    ${
      optionalString (hasPrefix "WES" analysisType || hasPrefix "WGS" analysisType) ''
        #+CAPTION: TMB
        |sample|TMB|TMB(>20%)|
        |-
        ${vars.tmb}
      ''
    }

    ${
      optionalString (hla != null) ''
        #+CAPTION: HLA types
        |HLA allele|
        |-
        ${fmtHlaTypes}
      ''
    }

    ** Copy number statistics

    #+CAPTION: HRD scores
    |site|ntai|lst|hrd|sum|
    |-
    ${hrscore.score {} (bionix.facets.reporting.db {} (mapAttrsToList (siteid: val: {
        donor = name;
        inherit siteid;
        postproc = bionix.facets.reporting.preprocess {inherit analysisType;} val;
      })
      facets))}

    #+CAPTION: CNV statistics
    ${concatSites (v: v.stats) cnv}

    #+CAPTION: GD status
    |site|genome doubled|
    |-
    ${concatSites (v: v.gdtest) cnv}

    #+CAPTION: Microsatellite instability
    ${concatSites (v: fmtTsv v) msi}

    ${optionalString (svs ? manta) (
      ''
      #+CAPTION: CHORD
      ${concatSites (v: v.chord) svs.manta}
      '')}

    ${optionalString (mchord != null) ''
      ** McHoRD
      #+CAPTION: McHoRD probabilities
      |sample|p|
      |-
      ${mchord}
    ''}

    ${mosdepthPlot}

    * Variants

    ** Germline

    #+CAPTION: Germline mutations
    #+ATTR_HTML: :class dataTable
    ${vars.germline}

    ** Somatic

    #+CAPTION: High impact mutations
    #+ATTR_HTML: :class dataTable
    ${vars.high}

    * Mutational signatures

    ${mutsigsOrg.v2}

    * Copy number

    ${
      forConcatAttrs cnv (n: v: ''
        ** ${n}

        [[${v.spider}]]\\
        ${v.spider.warning}

        #+CAPTION: Modified regions
        #+ATTR_HTML: :class dataTable
        ${v.regions}

        [[${v.first}]]

        [[${v.second}]]

        [[${v.third}]]
      '')
    }

    ${
      optionalString (neoantigens != null) ''
        * Neoantigens

        ${
          forConcatAttrs neoantigens (n: v: ''
            #+CAPTION: Predicted neoantigens ${n}
            #+ATTR_HTML: :class dataTable
            ${neo2org v}
          '')
        }
      ''
    }

    ${
      optionalString (svs ? gridss) ''
        * GRIDSS
        [[${svs.gridss.linear}]] [[${svs.gridss.circos}]]

        #+CAPTION: Putative fusions
        #+ATTR_HTML: :class dataTable
        ${svs.gridss.fusions}

        #+CAPTION: COSMIC genes on putative circular segments
        #+ATTR_HTML: :class dataTable
        ${circularGenes}
      ''
    }

    ${
      optionalString (svs ? manta) (forConcatAttrs svs.manta (n: v: ''
        * Manta ${n}
        [[${v.linear}]] [[${v.circos}]]
      ''))
    }

    ${
      optionalString (fusions != {}) (forConcatAttrs fusions (n: v: ''
        * Fusions ${n}

        #+CAPTION: Fusions detected from RNA for ${n}
        #+ATTR_HTML: :class dataTable
        ${pizzly2org v}
      ''))
    }

    ${optionalString (viralInsertions != {}) "* Virus Breakend"}

    ${forConcatAttrs viralInsertions (n: v: ''
      #+CAPTION: Viral insertions - ${n}
      #+ATTR_HTML: :class dataTable
      ${fmtTsv (v + "/summary.tsv")}
    '')}

    * Appendix: Predictor nomenclature

    Order of the in-silico predictors are Mutation taster, SIFT, PolyPhen (HDIV), PolyPhen (HVAR).
    Absent calls are indicated with a period.

    ** REVEL
    REVEL is an ensemble score based on 13 individual scores for predicting the
    pathogenicity of missense variants. Scores range from 0 to 1. The larger the score the more
    likely the SNP has damaging effect.

    ** Mutation taster
    - A: automatic disease causing
    - D: disease causing
    - N: polymorphism
    - P: automatic polymorphism

    ** SIFT
    - D: damaging
    - T: tolerated

    ** PolyPhen
    - D: probably damaging
    - P: possibly damaging
    - B: benign
  '';

  templater = writeText "templater.awk" ''
    /^\//{
      while (getline line < $0) {
        print line
      }
      next
    }
    {print}
  '';
in
  rec {
    reportTemplate =
      (
        if germlineOnly
        then germlineTemplate
        else template
      )
      // {inherit vars cnv germlineOnly analysisType mosdepthPlot name;};
    fullReport = exec'' (stage {
      name = "report";
      buildInputs = with pkgs; [gawk];
      buildCommand = ''
        awk -f ${templater} ${reportTemplate} > $out
      '';
      stripStorePaths = false;
      passthru = {inherit vars cnv germlineOnly analysisType mosdepthPlot name;};
    });
  }
  // optionalAttrs (!germlineOnly) {
    summary = exec'' (stage {
      name = "variantsummary";
      buildInputs = with pkgs; [gawk];
      buildCommand = ''
        awk -f ${templater} ${summarytemplate} > $out
      '';
      stripStorePaths = false;
    });
  }
