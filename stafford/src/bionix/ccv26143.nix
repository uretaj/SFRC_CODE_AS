with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "W5/jj/SHA256E-s3829257221--4a3512e8c0b4d887ffe8a67819f0bc0feb559b2664c2d637b5b67b12ec38d87c.gz/SHA256E-s3829257221--4a3512e8c0b4d887ffe8a67819f0bc0feb559b2664c2d637b5b67b12ec38d87c.gz";
      r2 = "jf/1w/SHA256E-s3852851283--2220d641c853e29f554ab9a214c6548623e2a236f3a5a36f3e74d6f77159957c.gz/SHA256E-s3852851283--2220d641c853e29f554ab9a214c6548623e2a236f3a5a36f3e74d6f77159957c.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xZ/WG/SHA256E-s3655239438--0b22332a680a4bb9ed5b9cc4683cddb0b999d9c3d8cb8eb64624740049c81f0a.gz/SHA256E-s3655239438--0b22332a680a4bb9ed5b9cc4683cddb0b999d9c3d8cb8eb64624740049c81f0a.gz";
      r2 = "1x/68/SHA256E-s3651449407--17a8d23bb5b44243fa8ca4ca6ad3ba0507eecd9abed3813e72cee8f84c922c85.gz/SHA256E-s3651449407--17a8d23bb5b44243fa8ca4ca6ad3ba0507eecd9abed3813e72cee8f84c922c85.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV26143";
  }
