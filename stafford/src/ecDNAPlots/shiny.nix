{
  bionix ?
    import ../nix/bionix {
      overlays = [
        ../bionix/config.nix
        ../bionix/extra-tools.nix
      ];
    },
  sample,
}:
with bionix; let
  drv = import sample {};
  renv = pkgs.callPackage ./r-env.nix {};
  inherit (refdbs) geneLocations cosmic chromlengths;
in
  pkgs.runCommand "shiny" {
    nativeBuildInputs = [renv];
    preferLocalBuilds = true;
    allowSubstitutes = false;
    shellHookOnly = true;
    shellHook = ''
      Rscript ${./run-shiny.r} ${./plot-functions.r} \
        ${linkOutputs drv.linkInputs.facets} ${drv.linkInputs.gridss."somatic.vcf"} ${chromlengths} ${geneLocations} ${cosmic}
    '';
  } ''
        echo "This derivation is not buildable; run it with nix-shell"
        exit 1
  ''
