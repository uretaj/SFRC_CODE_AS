with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "JG/qm/SHA256E-s6433228761--08d67d471c25ba9e5afbe77e2330edb15f349f5e27992534b3e92800d9fa0e88.gz/SHA256E-s6433228761--08d67d471c25ba9e5afbe77e2330edb15f349f5e27992534b3e92800d9fa0e88.gz";
      r2 = "6z/vv/SHA256E-s6428936852--ca9cc79e207c69b7201033cb87ec2e1ed83010e52cf38e6e7f35ec3d7189e360.gz/SHA256E-s6428936852--ca9cc79e207c69b7201033cb87ec2e1ed83010e52cf38e6e7f35ec3d7189e360.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV4816";
  }
