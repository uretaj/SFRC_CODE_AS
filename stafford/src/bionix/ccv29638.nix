with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZF/gm/SHA256E-s2312351641--88c819d143e9b0b8e3d55d3ca6595f3d527eab5577cb342cbe4649d38d90e2a1.gz/SHA256E-s2312351641--88c819d143e9b0b8e3d55d3ca6595f3d527eab5577cb342cbe4649d38d90e2a1.gz";
      r2 = "7Z/5M/SHA256E-s2337312022--d3b63a63cab2661f8debf7b12dd279b7e092e994886d5b0e11b1d0f5cf96391f.gz/SHA256E-s2337312022--d3b63a63cab2661f8debf7b12dd279b7e092e994886d5b0e11b1d0f5cf96391f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6g/w1/SHA256E-s2333694670--a40f66eaaebe41e429c7c398d5d381863e20d2a893c8db0bb80d3182c926f929.gz/SHA256E-s2333694670--a40f66eaaebe41e429c7c398d5d381863e20d2a893c8db0bb80d3182c926f929.gz";
      r2 = "q7/31/SHA256E-s2358815173--9d7ba939b4d106e076632ab514a7faa3d3c11e3c76d497a7d40e3edee436b9ca.gz/SHA256E-s2358815173--9d7ba939b4d106e076632ab514a7faa3d3c11e3c76d497a7d40e3edee436b9ca.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV29638";
  }
