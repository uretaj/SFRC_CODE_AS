{bionix ? (import ../milton-slurm.nix {}).bionix}:
with bionix; let
  vardb = import ./vardb.nix {
    subset = "solace";
    somaticOnly = false;
  };
  facetsdb = import ./facetsdb.nix {subset = "solace";};

  query = exec' (qry:
    stage {
      inherit qry;
      name = "asha-query.tsv";
      buildInputs = [pkgs.sqlite];
      buildCommand = ''
        printf "%s" "$qry" | sqlite3 -tabs -header > $out
      '';
    });

  inherit (refdbs) canoc dbnsfp overrep geneLocationsDB;
in
  linkOutputs {
    "variants.tsv" = query ''
      ATTACH "${vardb}" AS vardb;
      ATTACH "${canoc}" AS canoc;
      ATTACH "${dbnsfp}" AS dbnsfp;
      ATTACH "${overrep}" as overrep;

      create temporary table genes(gene not null, primary key(gene));
      insert into genes values ('TP53');
      insert into genes values ('BRCA1');
      insert into genes values ('BRCA2');
      insert into genes values ('RAD51C');
      insert into genes values ('RAD51D');
      insert into genes values ('PALB2');
      insert into genes values ('BRIP1');

      SELECT
          donor,
          canoc.gene,
          transcriptid || '.' || transcriptver AS transcript,
          hgvs_c,
          hgvs_p,
          annotation,
          printf("%f", dbnsfp_gnomAD_genomes_AF) AS gnomAD,
          dbnsfp_clinvar_clnsig AS clinvar,
          CASE WHEN o.pos NOT NULL THEN "✗" END AS Overrep,
          IFNULL(dbnsfp_MutationTaster_pred, ".")
          || IFNULL(dbnsfp_SIFT_pred, ".")
          || IFNULL(dbnsfp_Polyphen2_HDIV_pred, ".")
          || IFNULL(dbnsfp_Polyphen2_HVAR_pred, ".") AS insilicos,
          group_concat (frequency) as HF,
          group_concat (distinct filter) filter (where filter != 'PASS') as flags
      FROM
          hgvs_cs
          NATURAL JOIN genes
          INNER JOIN canoc.canoc ON canoc.stable_id = transcriptid and canoc.gene = genes.gene
          NATURAL JOIN calls
          NATURAL JOIN annotations
          NATURAL LEFT JOIN hgvs_ps
          NATURAL JOIN muts
          NATURAL LEFT JOIN haplotypefrequencies
          NATURAL JOIN haplotypes
          NATURAL JOIN callfilters
          NATURAL JOIN samples
          NATURAL JOIN impacts
          NATURAL LEFT JOIN dbnsfp.muts
          LEFT JOIN dbnsfp_Ensembl_transcriptid on dbnsfp_Ensembl_transcriptid.hmutid = dbnsfp.muts.hmutid and dbnsfp_Ensembl_transcriptid = transcriptid
          NATURAL LEFT JOIN dbnsfp_gnomAD_genomes_AF
          NATURAL LEFT JOIN dbnsfp_clinvar_clnsig
          NATURAL LEFT JOIN dbnsfp_MutationTaster_pred
          NATURAL LEFT JOIN dbnsfp_SIFT_pred
          NATURAL LEFT JOIN dbnsfp_Polyphen2_HDIV_pred
          NATURAL LEFT JOIN dbnsfp_Polyphen2_HVAR_pred
          NATURAL LEFT JOIN overrep as o
      WHERE (clinvar IS NULL OR (clinvar != 'Benign' AND clinvar != 'Benign/Likely_benign' AND clinvar != 'Likely_benign'))
      AND (clinvar LIKE '%athogenic%'
          OR ((impact = 'HIGH' OR impact = 'MODERATE')
              AND (IFNULL(cast(gnomAD AS real), 0) < 0.01)))
      GROUP BY mutid, transcript;
    '';
    "cnv.tsv" = query ''
      attach "${facetsdb}" as facets;
      attach "${geneLocationsDB}" as genes;

      create temporary table genes(gene not null, primary key(gene));
      insert into genes values ('MYCN');
      insert into genes values ('CCNE1');

      select donor, siteid, regions.chr, regions.start, regions.end, tcn, lcn, group_concat(genes.gene) as genes from regions
      inner join genelocs on regions.chr = genelocs.chr and regions.start <= genelocs.end and regions.end >= genelocs.start
      inner join genes on genes.gene = genelocs.gene
      where tcn >= 7
      group by
        donor, siteid, regions.chr, regions.start, regions.end;
    '';
  }
