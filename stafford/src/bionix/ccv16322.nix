with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4z/0F/SHA256E-s2844923285--7072e5a98c32eda30b6cfdb46a134234ac25d716fe19dc5a0fe600517e3beaf0.gz/SHA256E-s2844923285--7072e5a98c32eda30b6cfdb46a134234ac25d716fe19dc5a0fe600517e3beaf0.gz";
      r2 = "v0/vV/SHA256E-s2852829693--ffc1927d2b2188ec48433ea27be7c1f8fec4e911df9116c8cbe6c9f770fe300f.gz/SHA256E-s2852829693--ffc1927d2b2188ec48433ea27be7c1f8fec4e911df9116c8cbe6c9f770fe300f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV16322";
  }
