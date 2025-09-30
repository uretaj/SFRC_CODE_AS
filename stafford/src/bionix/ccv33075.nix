with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "pG/66/SHA256E-s3001654768--11c2d43cb3b75b895c30862928057c809074357b377b23a96a458eaa794feafe.gz/SHA256E-s3001654768--11c2d43cb3b75b895c30862928057c809074357b377b23a96a458eaa794feafe.gz";
      r2 = "9p/42/SHA256E-s3054348319--4f9be60c2a6a7660a910c58124e1bb745d1636fb6a1d3d38d1a0fc017ee3f86a.gz/SHA256E-s3054348319--4f9be60c2a6a7660a910c58124e1bb745d1636fb6a1d3d38d1a0fc017ee3f86a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mg/f4/SHA256E-s3031634383--ac7eab4a4861ceb6b0b238f3a04d6257ff1f9c236c928ded603ee00a4929fe25.gz/SHA256E-s3031634383--ac7eab4a4861ceb6b0b238f3a04d6257ff1f9c236c928ded603ee00a4929fe25.gz";
      r2 = "2V/WW/SHA256E-s3085023931--a9d96a38559ee66d391857b2f2a0ea349e0dea2f08caed51b41e003522416c40.gz/SHA256E-s3085023931--a9d96a38559ee66d391857b2f2a0ea349e0dea2f08caed51b41e003522416c40.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV33075";
  }
