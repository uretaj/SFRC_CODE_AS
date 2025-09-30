with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fF/0Z/SHA256E-s3138369699--95c8e54c65981f2eb06135f17342ef16748e9fbf2fc57a3f63991fdfac462b0b.gz/SHA256E-s3138369699--95c8e54c65981f2eb06135f17342ef16748e9fbf2fc57a3f63991fdfac462b0b.gz";
      r2 = "P9/M3/SHA256E-s3170185773--091a69728f6e718ad7ec424852272fff03a0cb8637a01b8ae942eeff6e855f37.gz/SHA256E-s3170185773--091a69728f6e718ad7ec424852272fff03a0cb8637a01b8ae942eeff6e855f37.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8z/3Z/SHA256E-s3011667898--3fd0f84305d4421e8aaeac273b0ff9003a8dff12a69aaba817c8627b05c2f945.gz/SHA256E-s3011667898--3fd0f84305d4421e8aaeac273b0ff9003a8dff12a69aaba817c8627b05c2f945.gz";
      r2 = "kZ/1x/SHA256E-s3019728233--e9e58a88f76b5dc1b5a44e09904a546d0eeee0899d07bd044f6ca323bf54c7cf.gz/SHA256E-s3019728233--e9e58a88f76b5dc1b5a44e09904a546d0eeee0899d07bd044f6ca323bf54c7cf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV24337";
  }
