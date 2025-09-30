with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zM/87/SHA256E-s3204349113--770895ae90ccb6d5f6c160b3d716424e3769d1f182be49f1a93cfee34129fcef.gz/SHA256E-s3204349113--770895ae90ccb6d5f6c160b3d716424e3769d1f182be49f1a93cfee34129fcef.gz";
      r2 = "Gx/Mp/SHA256E-s3217937686--e8b5e905831ccd6797789fcfa08176a9a180a6b5bda1dc88371182427d7fdf9e.gz/SHA256E-s3217937686--e8b5e905831ccd6797789fcfa08176a9a180a6b5bda1dc88371182427d7fdf9e.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X9/8p/SHA256E-s3070056224--7b3ca9824fd537c359eafcdb62514a480b1f66fb8a094921768b0f36dc0e8bcd.gz/SHA256E-s3070056224--7b3ca9824fd537c359eafcdb62514a480b1f66fb8a094921768b0f36dc0e8bcd.gz";
      r2 = "9g/JJ/SHA256E-s3061267358--97da8ab3bd221675390c8b37e18adee77eacef096f7d20448e55b985e4f23a99.gz/SHA256E-s3061267358--97da8ab3bd221675390c8b37e18adee77eacef096f7d20448e55b985e4f23a99.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV20759";
  }
