{
  bionix ? (import ./milton-slurm.nix {}).bionix,
  sample,
}: let
  s = import sample {annotateOctopus = true;};
in
  bionix.dbs.db {id = s.name;} (s.only "octopus.vcf")
