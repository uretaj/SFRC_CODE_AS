with (import ../milton-slurm.nix {}).bionix; let
  names = [
    "parp1"
    "OVCAR8"
    "PEO"
    "COV362"
    "UWB1"
    "WEHI-CS62"
    "ph003"
    "ph142"
    "ph419"
    "ml234051"
    "ml234052"
    "ml234053"
    "ml234056"
    "ml234096"
  ];

  samples = lib.genAttrs names read;

  read = n: (import (./. + "/${n}.nix") {}).linkInputs;

  concatMapAttrsStringsSep = sep: f: xs: with lib; concatStringsSep sep (zipListsWith f (attrNames xs) (attrValues xs));
in
  exec (_: _:
    stage {
      name = "cell-lines-db";
      buildInputs = [(pkgs.callPackage ../../vardb {})];
      buildCommand = ''
        ${concatMapAttrsStringsSep "\n" (n: v: "import db ${n} ${v."octopus.vcf"}") samples}
        cp db $out
      '';
    }) {
    walltime = "2-00:00:00";
  } {}
