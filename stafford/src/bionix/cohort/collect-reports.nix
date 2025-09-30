{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  what ? "WES (CREv2)",
  subset ? "myriad",
}:
with bionix;
with lib; let
  samples = callBionix ./sample-subset.nix {
    inherit what subset;
  };
in
  linkOutputs (mapAttrs' (_: v: nameValuePair "${v."report.org".name}.html" v."report.html") samples)
