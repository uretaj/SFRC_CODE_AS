with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Zw/0x/SHA256E-s9907392584--dbbb99d241bc0971b567d31e9ba7ca09f8028adbdc3fdc83ddf4dfd35da2b784.gz/SHA256E-s9907392584--dbbb99d241bc0971b567d31e9ba7ca09f8028adbdc3fdc83ddf4dfd35da2b784.gz";
      r2 = "w9/gv/SHA256E-s9953823898--c2c126abb5facf1a9c5e9ff65d9c51e045d0742f78c35aa9d4ddad0fc026fca0.gz/SHA256E-s9953823898--c2c126abb5facf1a9c5e9ff65d9c51e045d0742f78c35aa9d4ddad0fc026fca0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV14141";
  }
