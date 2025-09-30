attrs @ {bionix ? (import ../milton-slurm.nix {}).bionix, ...}: let
  all = bionix.callBionix ./all.nix attrs;
in
  bionix.lib.filterAttrs (_: v: v.redcap ? mp_subgroup_sfrcp4_new_id) all
