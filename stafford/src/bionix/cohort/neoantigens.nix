{bionix ? (import ../milton-slurm.nix {}).bionix}: let
  inherit (bionix) callBionix lib linkOutputs;
  inherit (lib) filterAttrs mapAttrs;
  inherit (bionix.pkgs) writeText;

  all = callBionix ./all.nix {} // callBionix ./all-solace.nix {};

  subset = filterAttrs (_: x: x ? neoantigens) all;

  antigens = linkOutputs (mapAttrs (_: x: x.neoantigens) subset);

  labelScript = writeText "label.awk" ''
    BEGIN{
      OFS="\t"
    }
    {
      for(i = NF; i >= 1; i--)
        $(i+1) = $i
      $1 = donor
      $2 = sample
      print  
    }
    '';
in
  with bionix.pkgs;
    runCommand "neoantigens.txt" {} ''
      printf 'donor\tsample\ttranscript\tgermline\tmutant\tposition\tHLA\trank\tscore\tcombined\n' > neoantigens.txt
      for d in ${antigens}/* ; do       
        for s in $d/* ; do
          awk -f ${labelScript} \
            -v sample=$(basename $s) \
            -v donor=$(basename $d) \
            $s >> neoantigens.txt
        done
      done
      cp neoantigens.txt $out
    ''
