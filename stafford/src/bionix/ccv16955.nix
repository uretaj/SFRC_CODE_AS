with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7P/Pz/SHA256E-s4083367008--d38599a22f349a7d9bc50c1cd08a00a2b3934101effba1847adb4bc4ef141fd6.gz/SHA256E-s4083367008--d38599a22f349a7d9bc50c1cd08a00a2b3934101effba1847adb4bc4ef141fd6.gz";
      r2 = "Z7/X4/SHA256E-s4088786593--703845141e4afaca0e70001adf016a6dd4088df2d6b9b7bada8d8ea4dde53495.gz/SHA256E-s4088786593--703845141e4afaca0e70001adf016a6dd4088df2d6b9b7bada8d8ea4dde53495.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV16955";
  }
