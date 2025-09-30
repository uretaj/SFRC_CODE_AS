with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wW/F5/SHA256E-s3451157292--41b3737bd815b367ea386d6c65847cfc305703e6fd7991f44e150f91f951e822.gz/SHA256E-s3451157292--41b3737bd815b367ea386d6c65847cfc305703e6fd7991f44e150f91f951e822.gz";
      r2 = "MJ/PZ/SHA256E-s3531535215--7aa9c1b8db9345d78f82fe6d0affe2b9cc5148808e13dcf4d0339e600b8b39f8.gz/SHA256E-s3531535215--7aa9c1b8db9345d78f82fe6d0affe2b9cc5148808e13dcf4d0339e600b8b39f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV38477";
  }
