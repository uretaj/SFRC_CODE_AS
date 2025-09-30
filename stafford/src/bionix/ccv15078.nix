with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Xq/WX/SHA256E-s3517585409--a3ef00e30509d044c7b9824e7584a235080ad47988680b763f20417c80ea0c33.gz/SHA256E-s3517585409--a3ef00e30509d044c7b9824e7584a235080ad47988680b763f20417c80ea0c33.gz";
      r2 = "87/pq/SHA256E-s3540295813--f4da60f57147a82e3ce012af3bf4be00a9618a1e671c052adf9c652febbd409c.gz/SHA256E-s3540295813--f4da60f57147a82e3ce012af3bf4be00a9618a1e671c052adf9c652febbd409c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV15078";
  }
