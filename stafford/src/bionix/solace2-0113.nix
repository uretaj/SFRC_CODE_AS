with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1M";
      class = "tumours";
      pdx = false;
      r1 = "qW/65/SHA256E-s3209815966--74cedfc3d139b2619c620453ca2fbfd7a3dd5be1e6f6ec876de5678e4ee25877.gz/SHA256E-s3209815966--74cedfc3d139b2619c620453ca2fbfd7a3dd5be1e6f6ec876de5678e4ee25877.gz";
      r2 = "5W/Qj/SHA256E-s3264099907--6ee85d1c40e4cf0ba9f7d1e016aaacad962589114c8d21edaa50f54867298617.gz/SHA256E-s3264099907--6ee85d1c40e4cf0ba9f7d1e016aaacad962589114c8d21edaa50f54867298617.gz";
    }

    {
      site = "1M";
      class = "tumours";
      pdx = false;
      r1 = "69/qF/SHA256E-s3229053781--1ecf6bdb79cdb50085921d9a3effd668aff81b8711ad61cc2e31754e4a941b46.gz/SHA256E-s3229053781--1ecf6bdb79cdb50085921d9a3effd668aff81b8711ad61cc2e31754e4a941b46.gz";
      r2 = "5v/0M/SHA256E-s3269343008--e6505ee6c0e1249f6f54fdcc8f27d787259b917b107c36cd59cf9dfcbe57b697.gz/SHA256E-s3269343008--e6505ee6c0e1249f6f54fdcc8f27d787259b917b107c36cd59cf9dfcbe57b697.gz";
    }

    {
      site = "1M";
      class = "tumours";
      pdx = false;
      r1 = "Gq/0F/SHA256E-s3258332946--c096af4ebb804e743c58f658586ec3f3ef763d8fba9862553d99d5fab206f15b.gz/SHA256E-s3258332946--c096af4ebb804e743c58f658586ec3f3ef763d8fba9862553d99d5fab206f15b.gz";
      r2 = "gW/4q/SHA256E-s3291055918--ef49ca8bcbe757d97b7550c90d77253d87c188b17ccc7263230b603c7e335303.gz/SHA256E-s3291055918--ef49ca8bcbe757d97b7550c90d77253d87c188b17ccc7263230b603c7e335303.gz";
    }

    {
      site = "1M";
      class = "tumours";
      pdx = false;
      r1 = "4W/jF/SHA256E-s3215787585--69123bd80c9d13cf1e3904022719c45071b48090347d26ce955b9ea969419f17.gz/SHA256E-s3215787585--69123bd80c9d13cf1e3904022719c45071b48090347d26ce955b9ea969419f17.gz";
      r2 = "34/wW/SHA256E-s3247620991--7d3d728e059abeeb4c3939cf5d55b89391b4d7a49ba9f7042c86172cfaeade43.gz/SHA256E-s3247620991--7d3d728e059abeeb4c3939cf5d55b89391b4d7a49ba9f7042c86172cfaeade43.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5x/6p/SHA256E-s998837665--d234f8b583c7364c9ce5ef1011ff2584f977d4c15af466d96f88e3dc124dc0f8.gz/SHA256E-s998837665--d234f8b583c7364c9ce5ef1011ff2584f977d4c15af466d96f88e3dc124dc0f8.gz";
      r2 = "ZW/gP/SHA256E-s989373039--355c5f24b599c12cc7f0bd595a70765c97bafc9df20ac90cd3ff97ba7d9e8f45.gz/SHA256E-s989373039--355c5f24b599c12cc7f0bd595a70765c97bafc9df20ac90cd3ff97ba7d9e8f45.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "QW/pP/SHA256E-s1018619151--ba3d7cfccee337a897ab764db868f19c012b9ebe3676698b7bced7595b6a6248.gz/SHA256E-s1018619151--ba3d7cfccee337a897ab764db868f19c012b9ebe3676698b7bced7595b6a6248.gz";
      r2 = "Xw/Q2/SHA256E-s1007924197--eb3622c1958f1d0ca88215d88954956a0cd1c5edebb97f6fec6e30ec903621d9.gz/SHA256E-s1007924197--eb3622c1958f1d0ca88215d88954956a0cd1c5edebb97f6fec6e30ec903621d9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "0X/X0/SHA256E-s1031104173--b946abe43be98bc16d961247c2076383b86a9cab1f0acb8c89d8f73cb4a30d15.gz/SHA256E-s1031104173--b946abe43be98bc16d961247c2076383b86a9cab1f0acb8c89d8f73cb4a30d15.gz";
      r2 = "KQ/MJ/SHA256E-s1016107171--40c7b973629ef6abca639540dd25962dfe51b33a9335a685d95ab1870d653fef.gz/SHA256E-s1016107171--40c7b973629ef6abca639540dd25962dfe51b33a9335a685d95ab1870d653fef.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0113";
    typeHla = true;
    capture = TwistV2HR;
  }
