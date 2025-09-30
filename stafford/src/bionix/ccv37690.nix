with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "28/ZF/SHA256E-s1436122962--66ffaa08dbaedefeb1d415e31f09a9d2d99b467b3539a4301173c17caac4e027.gz/SHA256E-s1436122962--66ffaa08dbaedefeb1d415e31f09a9d2d99b467b3539a4301173c17caac4e027.gz";
      r2 = "W9/3j/SHA256E-s1450349752--4ac743ab902945e6894ab650ca348f8ee576f4fced2cdcb0beeea9f50ee2e153.gz/SHA256E-s1450349752--4ac743ab902945e6894ab650ca348f8ee576f4fced2cdcb0beeea9f50ee2e153.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "XG/Ff/SHA256E-s1452363076--e52259b44a2221eb3dafe91c45788b2880c2c52062804321ecc80c81acf5e5fc.gz/SHA256E-s1452363076--e52259b44a2221eb3dafe91c45788b2880c2c52062804321ecc80c81acf5e5fc.gz";
      r2 = "p9/Q6/SHA256E-s1466779909--10ebee721c70a3927e1792f80375c017b5a0f75c2f8ca3a46374a1c1bb2440eb.gz/SHA256E-s1466779909--10ebee721c70a3927e1792f80375c017b5a0f75c2f8ca3a46374a1c1bb2440eb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV37690";
  }
