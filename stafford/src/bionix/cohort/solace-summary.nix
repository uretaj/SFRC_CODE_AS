{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  subset ? "solace",
  what ? "WES",
}:
with bionix;
with lib; let
  facetsdb = callBionix ./facetsdb.nix {inherit subset what;};
  vardb = callBionix ./vardb.nix {
    inherit subset what;
    somaticOnly = true;
  };
  samples = callBionix ./sample-subset.nix {inherit subset what;};

  tmb = exec'' (stage {
    name = "tmb.csv";
    buildInputs = [pkgs.sqlite];
    buildCommand = ''
      printf "%s" "$sql" | sqlite3 ${vardb} > $out
    '';
    sql = ''
      ATTACH "${refdbs.canoc}" AS canoc;

      .header on
      .mode csv

      SELECT
          donor,
          siteid,
          count(*) FILTER (WHERE frequency > 0.2) / 36 AS TMB
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
          annotation != 'synonymous_variant'
          AND FILTER == 'PASS'
      GROUP BY
          siteid;
    '';
  });

  cnv-stats = exec'' (stage {
    name = "tmb.csv";
    buildInputs = [pkgs.sqlite];
    buildCommand = ''
      printf "%s" "$sql" | sqlite3 ${facetsdb} > $out
    '';
    sql = ''
      .header on
      .mode csv
      SELECT * from stats;
    '';
  });

  hrd = callBionix ./hrd.nix {inherit subset what;};
  gd = (callBionix ./. {inherit subset what;}).gd;

  depth = exec'' (stage {
    name = "depth.csv";
    buildCommand = concatMapAttrsStringsSep "\n" (_: x:
      concatMapAttrsStringsSep "\n" (site: y: ''
        awk 'BEGIN{OFS=","}$1=="total" && $3 > (1/sqrt(2)){print "${x."report.org".name}", "${site}", $2;exit(0)}' ${y}/out.mosdepth.region.dist.txt >> $out
      '')
      x.mosdepth)
    samples;
  });
in
  linkOutputs {
    "tmb.csv" = tmb;
    "cnv-stats.csv" = cnv-stats;
    "hrd.csv" = hrd;
    "gd.csv" = gd;
    "depth.csv" = depth;
  }
