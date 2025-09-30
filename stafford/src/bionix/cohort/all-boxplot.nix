attrs @ {bionix ? (import ../milton-slurm.nix {}).bionix, ...}:
with bionix;
with pkgs.lib; let
  allSamples = callBionix ./all.nix {};
  inherit (callBionix ./utils.nix {}) select;
in
  callBionixE ./kallisto-boxplot.nix (builtins.removeAttrs attrs ["bionix"])
  (select "kallisto" allSamples)
