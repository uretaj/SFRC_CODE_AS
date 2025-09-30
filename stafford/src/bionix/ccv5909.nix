with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J4/v7/SHA256E-s5626115010--04421584df42a61b38802919e1c8e7207eac9e5b6f2c3fe7f17aa7b6bb3a51e8.gz/SHA256E-s5626115010--04421584df42a61b38802919e1c8e7207eac9e5b6f2c3fe7f17aa7b6bb3a51e8.gz";
      r2 = "kj/Jm/SHA256E-s5634985311--ffcb34d6a1ab1d5f1782e6d6668ff15f84e137d5b646ea5909ae5e47129a088c.gz/SHA256E-s5634985311--ffcb34d6a1ab1d5f1782e6d6668ff15f84e137d5b646ea5909ae5e47129a088c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV5909";
  }
