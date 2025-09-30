{subset ? "100g"}:
with import ../milton-slurm.nix {};
with bionix;
with lib; let
  all = callBionix ./sample-subset.nix {inherit subset;};
in
  linkOutputs (mapAttrs (_: x: x.gridss) all)
