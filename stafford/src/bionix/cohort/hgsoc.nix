attrs @ {bionix ? (import ../milton-slurm.nix {}).bionix, ...}: let
  all = bionix.callBionix ./all.nix attrs;
in
  bionix.lib.filterAttrs (_: v: v.redcap.tumour_type or "" == "HGSOC") all
