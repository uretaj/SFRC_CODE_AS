{bionix}:
with bionix; let
  renv = pkgs.callPackage ./r-env.nix {};
  inherit (refdbs) geneLocations cosmic chromlengths;
in
  {
    facets,
    gridss,
  }:
    stage {
      name = "ecDNA-plot.png";
      buildInputs = [renv];
      buildCommand = ''
        mkdir out
        touch out.png
        Rscript ${./generate-plot.r} ${./plot-functions.r} \
          ${facets} ${gridss} ${chromlengths} ${geneLocations} ${cosmic}
        cp out.png $out
      '';
    }
