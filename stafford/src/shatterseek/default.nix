{bionix}:
with bionix; let
  renv = pkgs.callPackage ./r-env.nix {};
in
  {
    facets,
    manta,
  }:
    stage {
      name = "shatter-seek";
      buildInputs = [renv];
      buildCommand = ''
        mkdir out
        Rscript ${./shatterseek.r} ${facets} ${manta}/variants/somaticSV.vcf.gz $TMPDIR/out
        cp -r out $out
      '';
    }
