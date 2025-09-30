{bionix}: samples:
with bionix;
with lib; let
  concatMapAttrsStringsSep = d: f: xs: concatStringsSep d (mapAttrsToList f xs);

  procCHORDSite = n: v: let
    script = pkgs.writeText "procCNVSite.awk" ''
      BEGIN{
        OFS=","
        FS="|"
      }
      /cannot_be_determined/{next}
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
        name = "procCHORDSite";
        buildCommand = ''
          awk -f ${script} ${v.chord} > $out
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
        name = "procCHORDSample";
        buildCommand = ''
          cat ${concatMapAttrsStringsSep " " procCHORDSite v.manta} > input
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
    name = "concat-chord-stats";
    buildCommand =
      concatMapAttrsStringsSep "\n"
      (n: v: ''
        cat ${procSample n v} >> $out
      '')
      (filterAttrs (_: v: v ? manta) samples);
  }
