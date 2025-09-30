{
  bionix,
  gd ? false,
}: samples:
assert (
  if !gd
  then abort "cnv-stats table has been deprecated"
  else true
);
with bionix;
with lib; let
  concatMapAttrsStringsSep = d: f: xs: concatStringsSep d (mapAttrsToList f xs);

  procCNVSite = n: v: let
    script = pkgs.writeText "procCNVSite.awk" ''
      BEGIN{
        OFS=","
        FS="|"
      }
      {
        for(i=2; i < NF; i++)
          line[i]=$i
        n = NF;
      }
      END{
        printf("${n}")
        for(i=2; i < n; i++)
          printf(",%s",line[i])
        printf("\n")
      }
    '';
  in
    exec
    (_: _:
      stage {
        name = "procCNVSite";
        buildCommand =
          if gd
          then ''
            echo -n "${n}," > $out
            cat ${v.gdtest} >> $out
          ''
          else ''
            awk -f ${script} ${v.stats} > $out
          '';
      })
    {
      walltime = "0:01:00";
      mem = 1;
    }
    {};

  procSample = n: v:
    exec
    (_: _:
      stage {
        name = "procCNVSample";
        buildCommand = ''
          cat ${
            concatMapAttrsStringsSep " " procCNVSite v."report.org".cnv
          } > input
          awk '{print "${n},${v."report.org".analysisType}," $0}' input > $out
        '';
      })
    {
      walltime = "0:01:00";
      mem = 1;
    }
    {};
in
  stage {
    name = "concat-cnv-stats";
    buildCommand =
      concatMapAttrsStringsSep "\n"
      (n: v: ''
        cat ${procSample n v} >> $out
      '')
      (filterAttrs (_: v: !v."report.org".germlineOnly) samples);
  }
