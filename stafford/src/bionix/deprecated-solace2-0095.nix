with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "v4/Gg/SHA256E-s13036769143--7936ea82782839bb03b9124783c96bb20b14244cfad688c7949fd0c27abf9212.gz/SHA256E-s13036769143--7936ea82782839bb03b9124783c96bb20b14244cfad688c7949fd0c27abf9212.gz";
      r2 = "Q5/8V/SHA256E-s13355002608--e1da00eca5e7229be6228a71ab842db965a041fe994b7806ba2545b3db46c676.gz/SHA256E-s13355002608--e1da00eca5e7229be6228a71ab842db965a041fe994b7806ba2545b3db46c676.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "4x/Z9/SHA256E-s5093906068--c91b163ba67d1af26f2a224bb7ca95406758f4ffbd92c86c255f3ad1351c0875.gz/SHA256E-s5093906068--c91b163ba67d1af26f2a224bb7ca95406758f4ffbd92c86c255f3ad1351c0875.gz";
      r2 = "jg/Q5/SHA256E-s5323605144--423cda81e9e697a63f1eb3cbe1165abf96caa820809ccac6eeea72b4b0ebc40c.gz/SHA256E-s5323605144--423cda81e9e697a63f1eb3cbe1165abf96caa820809ccac6eeea72b4b0ebc40c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0095";
  }
