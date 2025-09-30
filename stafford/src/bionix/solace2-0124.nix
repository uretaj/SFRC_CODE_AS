with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "6C";
      class = "tumours";
      pdx = false;
      r1 = "q7/X3/SHA256E-s3566339461--4b07383dafb6d14938a75c8452fda738b29ad64bb563ebf74c34b2fa5ace11db.gz/SHA256E-s3566339461--4b07383dafb6d14938a75c8452fda738b29ad64bb563ebf74c34b2fa5ace11db.gz";
      r2 = "X2/QM/SHA256E-s3656351684--75f91a511be009cd71e6bf5534028832779b3eb37bfc624f9d273a21593dcc32.gz/SHA256E-s3656351684--75f91a511be009cd71e6bf5534028832779b3eb37bfc624f9d273a21593dcc32.gz";
    }

    {
      site = "6C";
      class = "tumours";
      pdx = false;
      r1 = "1p/xz/SHA256E-s3436627376--a1d1fc658a86b2b8f7e331e50e8e7d9fbd0856b05639b49f0050d4e713c24e6a.gz/SHA256E-s3436627376--a1d1fc658a86b2b8f7e331e50e8e7d9fbd0856b05639b49f0050d4e713c24e6a.gz";
      r2 = "76/8F/SHA256E-s3506316196--736d5b9ba7eeac0f5cc92be1c49239e4f8dd21cbdf11faa4cb633bb2590bd4f6.gz/SHA256E-s3506316196--736d5b9ba7eeac0f5cc92be1c49239e4f8dd21cbdf11faa4cb633bb2590bd4f6.gz";
    }

    {
      site = "6C";
      class = "tumours";
      pdx = false;
      r1 = "99/kF/SHA256E-s3460326812--a06b4cc4efb27c19fdbf63cdf6994d62cea592262e9df3bb0a6999ab24f39955.gz/SHA256E-s3460326812--a06b4cc4efb27c19fdbf63cdf6994d62cea592262e9df3bb0a6999ab24f39955.gz";
      r2 = "28/G6/SHA256E-s3521814914--b5238fced3f4f1de7495242acc97028ef6fd49d78a5d4b46cbda132398810d4f.gz/SHA256E-s3521814914--b5238fced3f4f1de7495242acc97028ef6fd49d78a5d4b46cbda132398810d4f.gz";
    }

    {
      site = "6C";
      class = "tumours";
      pdx = false;
      r1 = "PJ/F5/SHA256E-s3538599862--b05c10ad9ac210b2386e10c097ab7f3105f5248cda4b9d7a1d7d61ba9cc4ef9e.gz/SHA256E-s3538599862--b05c10ad9ac210b2386e10c097ab7f3105f5248cda4b9d7a1d7d61ba9cc4ef9e.gz";
      r2 = "kg/Zw/SHA256E-s3599588038--2d654307d75cf8b1d02d310934f00dbd872ebe72fefff9f5f3b77387e07e9e43.gz/SHA256E-s3599588038--2d654307d75cf8b1d02d310934f00dbd872ebe72fefff9f5f3b77387e07e9e43.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VZ/XM/SHA256E-s929423591--35ea5b151d3e7a7fb83c7653e1bdfb9b76b704e66a6f25dcca9ff04a41fc3f48.gz/SHA256E-s929423591--35ea5b151d3e7a7fb83c7653e1bdfb9b76b704e66a6f25dcca9ff04a41fc3f48.gz";
      r2 = "kj/Qw/SHA256E-s932776308--1e0ac1af9c950c51cf39455e2984b7203e8106253c1035c14b3497e3d3a6e433.gz/SHA256E-s932776308--1e0ac1af9c950c51cf39455e2984b7203e8106253c1035c14b3497e3d3a6e433.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "37/2p/SHA256E-s931222764--026b8e8d5d2f79f96a9f28a8e37f2257a2918e46980bde707239a08867c9d410.gz/SHA256E-s931222764--026b8e8d5d2f79f96a9f28a8e37f2257a2918e46980bde707239a08867c9d410.gz";
      r2 = "1F/6X/SHA256E-s933029086--b65399587b7ff59a1b5c0cf1deda3f22107dc49bcd4f6a2b528f436eadcf9488.gz/SHA256E-s933029086--b65399587b7ff59a1b5c0cf1deda3f22107dc49bcd4f6a2b528f436eadcf9488.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "9g/8p/SHA256E-s929525836--b31eeb87bc795e00996b778df9495fb60561d2bd81f844f0c9886365840d8228.gz/SHA256E-s929525836--b31eeb87bc795e00996b778df9495fb60561d2bd81f844f0c9886365840d8228.gz";
      r2 = "P3/0f/SHA256E-s927212559--69c8195031864668cc434a5adb75803274f220a6aa220ac0a76f49ada9089ac7.gz/SHA256E-s927212559--69c8195031864668cc434a5adb75803274f220a6aa220ac0a76f49ada9089ac7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0124";
    typeHla = true;
    capture = TwistV2HR;
  }
