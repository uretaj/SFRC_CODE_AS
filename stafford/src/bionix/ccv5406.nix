with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "x2/f8/SHA256E-s3550108336--1381ed616af9278f69506b3a1115446aa421d609a38365e69e42a741a5ff2a1c.gz/SHA256E-s3550108336--1381ed616af9278f69506b3a1115446aa421d609a38365e69e42a741a5ff2a1c.gz";
      r2 = "XM/fk/SHA256E-s3567735622--4c9fe5ab41aadca9e6d6d9f7a38c7da58b6fb51b1126305d5278bb269c1ff4c0.gz/SHA256E-s3567735622--4c9fe5ab41aadca9e6d6d9f7a38c7da58b6fb51b1126305d5278bb269c1ff4c0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV5406";
  }
