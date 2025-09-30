{
  bionix,
  targets,
}:
with bionix; let
  script = pkgs.writeText "fmt-mchord.awk" ''
    NR>2{
      for(i = 1; i <= NF; i++)
        printf "|%s", $i
      print "|"
    }
  '';
in
  calls:
    stage {
      name = "McHoRD";
      buildInputs = [(pkgs.callPackage ./src {})];
      buildCommand = ''
        mchord.py \
          --targets ${targets} \
          --null_distribution ${./null_dist_twist_1mb.json} \
          --outfile out \
          ${calls}
        awk -f ${script} out > $out
      '';
    }
