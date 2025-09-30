{bionix ? (import ../milton-slurm.nix {}).bionix}:
with bionix;
with lib; let
  maxGnomAD = 0.01;
  minHF = 0.15;

  wgs100 = callBionix ./vardb.nix {
    what = "WGS";
    subset = "100g";
    somaticOnly = true;
  };

  cnv = callBionix ./facetsdb.nix {
    what = "WGS";
    subset = "100g";
  };
  
  refsites = ./100genomes-ref-sites.json;

  parpiMatt = bionix.fetchers.fetchAnnexFile "jf/q2/SHA256E-s36864--26f67a2cf8a6baa2c1540dafd4a276c2ea59596a4fe7afaca55adeeb6c1ceb1f.db/SHA256E-s36864--26f67a2cf8a6baa2c1540dafd4a276c2ea59596a4fe7afaca55adeeb6c1ceb1f.db";
  FuentesFP = bionix.fetchers.fetchAnnexFile "w2/Q1/SHA256E-s28147--b327746ee290119327c2f459e97eada45cefc1f6dc4d8de636ce68a56d57f852.txt/SHA256E-s28147--b327746ee290119327c2f459e97eada45cefc1f6dc4d8de636ce68a56d57f852.txt";

  inherit (refdbs) cosmic canoc dbnsfp overrep;
  inherit (pkgs) writeText;

  filt100db = writeText "filterdb.sql" ''
    PRAGMA journal_mode = OFF;
    PRAGMA synchronous = OFF;
    PRAGMA temp_store = memory;
    PRAGMA mmap_size = 30000000000;
    PRAGMA page_size = 32768;
    PRAGMA cache_size = 100000;

    ATTACH "${wgs100}" AS vardb;
    ATTACH "${cnv}" AS cnv;
    ATTACH "${canoc}" AS canoc;
    ATTACH "${dbnsfp}" AS dbnsfp;
    ATTACH "${cosmic}" AS cosmic;
    ATTACH "${overrep}" as overrep;
    ATTACH "${parpiMatt}" AS Matt;

    CREATE TEMP TABLE IF NOT EXISTS fpgene (
      external_gene_name TEXT, ENSGlist TEXT);
    .import "${FuentesFP}" fpgene --csv

    CREATE TABLE IF NOT EXISTS filtsom100 AS
    SELECT
      sampleid,
      donor,
      siteid,
      haplotypeid,
      canoc.gene AS gene,
      hgvs_cs.transcriptid || '.' || hgvs_cs.transcriptver AS transcript,
      hgvs_c,
      adjHF,
      mutid,
      chr,
      pos,
      ref,
      alt,
      dbnsfp_clinvar_clnsig AS clinvar,
      CASE
        WHEN cosmicgenes.gene NOT NULL
        THEN 1
        ELSE 0
      END AS cosmicgene,
      CASE
        WHEN matt.PARPiGenes.Symbol NOT NULL
        THEN 1
        ELSE 0
      END AS MattPARPiGene,
      CASE
        WHEN fpgene.external_gene_name NOT NULL
        THEN 1
        ELSE 0
      END AS FPgene
    FROM
        samples -- columns sampleid, donor, siteid
    LEFT JOIN (
      SELECT 
        UPPER(key) AS donor, 
        json_extract(refsites.value, '$.siteid') as refsite
      FROM
        json_each(readfile('${refsites}') ) refsites
      ) USING (donor)
    INNER JOIN
      haplotypes -- sampleid, haplotypeid, hapindex, phasegroup, somatic
      USING (sampleid)
    INNER JOIN
      calls -- columns haplotypeid, mutid
      USING (haplotypeid)
    LEFT JOIN (
      SELECT
        *
        FROM callfilters
          WHERE ( filter != 'PASS'
          AND   filter != 'AFB'
          AND   filter != 'FRF')
      ) AS unacceptablefilters
        USING (mutid, sampleid)
    LEFT JOIN (
      SELECT
        case
          when purity is null OR purity = "NULL" -- use max frequency in sample as proxy
          then frequency / max(frequency) over (partition by sampleid)
          else frequency/purity
        end AS adjHF,
        haplotypeid
      FROM
          samples
      INNER JOIN
        haplotypes USING (sampleid)
      INNER JOIN
        haplotypefrequencies USING (haplotypeid)
      LEFT JOIN
        cnv.stats USING (donor, siteid)
      ) AS purityadjfreqs USING (haplotypeid)
    INNER JOIN
      muts -- table with genomic positions
      USING (mutid)
    INNER JOIN
      hgvs_cs -- for transcript details
      USING (mutid)
    LEFT JOIN
      overrep -- mutations over-common in cohort
      USING (chr, pos, ref, alt)
    LEFT JOIN
      dbnsfp.muts -- hmutid is ID for joining dbnsfp tables
      USING (chr, pos, ref, alt)
    LEFT JOIN -- get Ensemble transcript IDs where available
      dbnsfp_Ensembl_transcriptid
      ON dbnsfp_Ensembl_transcriptid.hmutid = dbnsfp.muts.hmutid
      AND dbnsfp_Ensembl_transcriptid = hgvs_cs.transcriptid
    INNER JOIN
      canoc -- get gene names, and restrict to mutations in named genes
      ON canoc.stable_id = hgvs_cs.transcriptid
    LEFT JOIN
      Matt.PARPiGenes
      ON (canoc.gene =  Matt.PARPiGenes.Symbol)
    LEFT JOIN
      fpgene
      ON fpgene.external_gene_name = canoc.gene
    LEFT JOIN
      (SELECT DISTINCT "Gene name" AS gene FROM cosmic) AS cosmicgenes
      ON cosmicgenes.gene = canoc.gene
    LEFT JOIN
      dbnsfp_gnomAD_genomes_AF
      USING (hmutid)
    LEFT JOIN
      dbnsfp_clinvar_clnsig
      USING (hmutid)
    INNER JOIN
      impacts
      USING (mutid, transcriptid, transcriptver)
    NATURAL LEFT JOIN dbnsfp_MutationTaster_pred
    NATURAL LEFT JOIN dbnsfp_SIFT_pred
    NATURAL LEFT JOIN dbnsfp_Polyphen2_HDIV_pred
    NATURAL LEFT JOIN dbnsfp_Polyphen2_HVAR_pred
      -- 4 in-silico predictors of pathogenicity all use hmutid and idx
    WHERE
      (refsite IS NULL OR siteid = refsite)
      -- use single siteid where there were multiple
      AND unacceptablefilters.filter IS NULL
      -- all values of callfilters for variant are in accepted set
      AND adjHF > ${toString minHF}
      -- variant Haplotype Frequency (MAP_HF) is above cut-off after purity adjustment
      AND overrep.pos IS NULL
      -- variant is not in db of variants over-represented in WES cohort
      AND (dbnsfp_gnomAD_genomes_AF IS NULL
        OR cast(dbnsfp_gnomAD_genomes_AF AS real) < ${toString maxGnomAD}
        )
      -- variant is not in gnomAD version in dbNSFP, or frequency less than cut-off
      AND (clinvar IS NULL OR clinvar NOT LIKE "%Benign%")
      -- Filter out variant if clinvar Benign, likely benign, or combination
      AND (impact = "HIGH" OR impact = "MODERATE"
        OR clinvar LIKE "%Pathogenic%"
        OR (canoc.gene = "TERT" AND hgvs_c = "c.-124C>T")
        )
        -- impact filtering from SNPeff, also removes synonymous
        -- Low impact variants retained if Pathogenic or Likely Pathogenic in ClinVar
        -- "TERT c.-124C>T" added to ClinVar in 2021 as pathogenic but not in our dbnsfp
      AND (
        (dbnsfp_MutationTaster_pred IS "N" OR dbnsfp_MutationTaster_pred IS "P") +
        (dbnsfp_SIFT_pred IS "T") +
        (dbnsfp_Polyphen2_HDIV_pred IS "B") +
        (dbnsfp_Polyphen2_HVAR_pred IS "B")
        ) < 3
      -- Exclude variants which 3 or 4 of the 4 predictors predict to be
      -- Polymorphic, Tolerated or Benign
    ;
  '';
in
  exec (_: _:
    stage {
      name = "filt100somaticdb";
      buildInputs = [pkgs.sqlite];
      buildCommand = ''
        sqlite3 $out -init "${filt100db}"
      '';
    })
  {mem = 80;} {}

