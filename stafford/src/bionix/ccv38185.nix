with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Q0/JG/SHA256E-s3700429794--e36805283688c0ee8969bf8c6c2ef79b80461339f8201a0b89664e406383e694.gz/SHA256E-s3700429794--e36805283688c0ee8969bf8c6c2ef79b80461339f8201a0b89664e406383e694.gz";
      r2 = "93/2X/SHA256E-s3773610563--6cb0a23f32ae0f07f2e71b5db392bba1f22d0073c4337a8b1a7d32b541c8de2d.gz/SHA256E-s3773610563--6cb0a23f32ae0f07f2e71b5db392bba1f22d0073c4337a8b1a7d32b541c8de2d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV38185";
  }
