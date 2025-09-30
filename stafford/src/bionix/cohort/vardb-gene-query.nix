{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  subset ? "procan",
  genes ? ["TP53" "RB1" "ATRX" "PTEN" "BRCA1" "BRCA2"],
}: let
  inherit (bionix) callBionix stage exec'' linkOutputs pkgs refdbs lib;

  dbwgs = callBionix ./vardb.nix {
    what = "WGS";
    subset = "procan";
    somaticOnly = true;
  };
  dbwes = callBionix ./vardb.nix {
    what = "WES";
    subset = "procan";
    somaticOnly = true;
  };

  getmuts = vardb:
    exec'' (stage {
      name = "vardb-query";
      buildInputs = [pkgs.sqlite];
      buildCommand = ''
        printf "%s" "$sql" | sqlite3 -header -csv > $out
      '';
      sql = ''
        PRAGMA temp_store = memory;
        PRAGMA mmap_size = 30000000000;
        attach "${vardb}" as db;
        attach "${refdbs.canoc}" as canoc;
        attach "${refdbs.dbnsfp}" AS dbnsfp;
        attach "${refdbs.overrep}" as overrep;

        WITH tmb AS (
            SELECT
                donor,
                siteid,
                count(*) / 36 AS TMB,
                count(*) FILTER (WHERE frequency > 0.2) / 36 AS TMB20
            FROM
                calls
                NATURAL JOIN callfilters
                NATURAL JOIN hgvs_ps
                NATURAL JOIN haplotypes
                NATURAL JOIN haplotypefrequencies
                NATURAL JOIN samples
                NATURAL JOIN annotations
                INNER JOIN canoc.canoc ON canoc.stable_id = transcriptid
            WHERE
                annotation != 'synonymous_variant'
                AND FILTER = 'PASS'
            GROUP BY
                donor, siteid
        )
        SELECT
            donor,
            siteid,
            TMB,
            TMB20,
            gene,
            transcriptid || '.' || transcriptver AS transcript,
            hgvs_c,
            hgvs_p,
            frequency
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
            NATURAL JOIN tmb
            NATURAL LEFT JOIN dbnsfp.muts
            LEFT JOIN dbnsfp_Ensembl_transcriptid on dbnsfp_Ensembl_transcriptid.hmutid = dbnsfp.muts.hmutid and dbnsfp_Ensembl_transcriptid = transcriptid
            NATURAL LEFT JOIN dbnsfp_gnomAD_genomes_AF
            NATURAL LEFT JOIN dbnsfp_clinvar_clnsig
            NATURAL LEFT JOIN overrep as o
        WHERE (dbnsfp_clinvar_clnsig IS NULL OR (dbnsfp_clinvar_clnsig != 'Benign' AND dbnsfp_clinvar_clnsig != 'Benign/Likely_benign' AND dbnsfp_clinvar_clnsig != 'Likely_benign'))
        AND (dbnsfp_clinvar_clnsig LIKE '%athogenic%'
            OR (canoc.gene = 'TERT' and hgvs_c = 'c.-124C>T')
            OR (filter is null
                AND (impact = 'HIGH' OR impact = 'MODERATE')
                AND (dbnsfp_gnomAD_genomes_AF IS NULL
                    OR cast(dbnsfp_gnomAD_genomes_AF AS real) < 0.01)))
        AND (${lib.concatMapStringsSep " or " (g: "gene = '${g}'") genes});
      '';
    });
in
  linkOutputs {
    "wes.csv" = getmuts dbwes;
    "wgs.csv" = getmuts dbwgs;
  }
