with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "3x/j0/SHA256E-s1027653548--8e608eb84a245c4ad139f44a9a30e18720b42c780f774e9a9e6dc7f421dd8d7d.gz/SHA256E-s1027653548--8e608eb84a245c4ad139f44a9a30e18720b42c780f774e9a9e6dc7f421dd8d7d.gz";
      r2 = "38/X6/SHA256E-s1030497620--b386e19d62f315c671e6915bd562321e3e2732b01ebc6c38059e633341e6ffda.gz/SHA256E-s1030497620--b386e19d62f315c671e6915bd562321e3e2732b01ebc6c38059e633341e6ffda.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "W5/kX/SHA256E-s1042870557--dda3b63e033757de5c3ab853a2542473e451fd5b6d601febf2aa1d44921ac526.gz/SHA256E-s1042870557--dda3b63e033757de5c3ab853a2542473e451fd5b6d601febf2aa1d44921ac526.gz";
      r2 = "4z/pX/SHA256E-s1044187576--46d0b0e739eddea65ced07f82d639034f1e30f5d725492e25acf805d5f18e4e5.gz/SHA256E-s1044187576--46d0b0e739eddea65ced07f82d639034f1e30f5d725492e25acf805d5f18e4e5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "MV/XG/SHA256E-s1047256481--55fb298a5734cff0ee48d302aadf59d180dac0dc2d96dfa727968c9bf4876a5e.gz/SHA256E-s1047256481--55fb298a5734cff0ee48d302aadf59d180dac0dc2d96dfa727968c9bf4876a5e.gz";
      r2 = "XV/VJ/SHA256E-s1044045728--c389e251bb97831845a7299456b393ac2d90b60b41924e75e65c1cadc2d405f1.gz/SHA256E-s1044045728--c389e251bb97831845a7299456b393ac2d90b60b41924e75e65c1cadc2d405f1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0047";
    capture = TwistV2HR;
  }
