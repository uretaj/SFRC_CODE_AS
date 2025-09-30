with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7W/p7/SHA256E-s4396325497--60ab0809d13890add937068910f274d10848f9bca82f8b146e4afe7d36990d44.gz/SHA256E-s4396325497--60ab0809d13890add937068910f274d10848f9bca82f8b146e4afe7d36990d44.gz";
      r2 = "f9/F3/SHA256E-s4381278998--f8af0069cb4d2d73dbd909cab3ccd85ec02499d478abc01a695e8511074481f8.gz/SHA256E-s4381278998--f8af0069cb4d2d73dbd909cab3ccd85ec02499d478abc01a695e8511074481f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV17343";
  }
