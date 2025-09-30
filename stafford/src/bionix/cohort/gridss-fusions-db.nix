{subset ? null}:
with import ../milton-slurm.nix {};
with bionix;
with lib; let
  all = callBionix ./sample-subset.nix {inherit subset;};
  subset' = filterAttrs (_: v: v ? gridss."fusions.tsv") all;
in
  gridss.fusionDB {} (
    mapAttrsToList (
      _: s @ {gridss, ...}: {
        donor = s."report.org".name;
        fusions = gridss."fusions.tsv";
      }
    )
    subset'
  )
