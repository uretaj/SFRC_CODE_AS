with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "x9/KQ/SHA256E-s810221783--f0f4ed7d7b57f1f4b8e02c58503bc2ddfbe8f66c874b9642ec41fd600b98318d.gz/SHA256E-s810221783--f0f4ed7d7b57f1f4b8e02c58503bc2ddfbe8f66c874b9642ec41fd600b98318d.gz";
      r2 = "MJ/g0/SHA256E-s810136363--a6ee9be5434e520d8946b1fd1392207a0717de3e0a1871108b4f7b7ee51c1c71.gz/SHA256E-s810136363--a6ee9be5434e520d8946b1fd1392207a0717de3e0a1871108b4f7b7ee51c1c71.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "ZG/Vq/SHA256E-s814546022--13dd206c9b8df02b73a310bfb674681a7ffc86c94506ed211668255910e29883.gz/SHA256E-s814546022--13dd206c9b8df02b73a310bfb674681a7ffc86c94506ed211668255910e29883.gz";
      r2 = "w6/PG/SHA256E-s819676653--79e5c13444e14d16f60f003fbe366b849fa215ce8e16ad5502c4084b4b6412ba.gz/SHA256E-s819676653--79e5c13444e14d16f60f003fbe366b849fa215ce8e16ad5502c4084b4b6412ba.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Gx/kQ/SHA256E-s807094643--2a1812261afe949f5918bcd3157062dade52da1d434adae49e30f941aaf47202.gz/SHA256E-s807094643--2a1812261afe949f5918bcd3157062dade52da1d434adae49e30f941aaf47202.gz";
      r2 = "0G/x0/SHA256E-s809903954--af57cb827141ebba7d4596dba88b5c6329dc3c34e58ded34a339f98998ee79fc.gz/SHA256E-s809903954--af57cb827141ebba7d4596dba88b5c6329dc3c34e58ded34a339f98998ee79fc.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "6v/jp/SHA256E-s852457033--8b39ac16c3b25ee1828e6ea6e947820e2253b210fe5c30fd1cc39e5cad35470b.gz/SHA256E-s852457033--8b39ac16c3b25ee1828e6ea6e947820e2253b210fe5c30fd1cc39e5cad35470b.gz";
      r2 = "86/G7/SHA256E-s861142038--5ddf5171102e59c2ad57f6340c726c92c3fdf85a696458ebbcaa9f8dc2f5fab5.gz/SHA256E-s861142038--5ddf5171102e59c2ad57f6340c726c92c3fdf85a696458ebbcaa9f8dc2f5fab5.gz";
    }

    {
      site = "G2";
      class = "tumours";
      pdx = false;
      r1 = "Q1/Wm/SHA256E-s1261490430--2e5b9df664d7c603eb0ead8d52b1a01f9be3b893e40a4aca516f66587f1dbddb.gz/SHA256E-s1261490430--2e5b9df664d7c603eb0ead8d52b1a01f9be3b893e40a4aca516f66587f1dbddb.gz";
      r2 = "w1/x9/SHA256E-s1251459863--3c31c5042bcf11a3625ddbf4d0935432d0d5d5a9ac68755b2327fe9537fedeb9.gz/SHA256E-s1251459863--3c31c5042bcf11a3625ddbf4d0935432d0d5d5a9ac68755b2327fe9537fedeb9.gz";
    }

    {
      site = "G2";
      class = "tumours";
      pdx = false;
      r1 = "6K/z3/SHA256E-s1264458994--46c253b2ca9ba27889b33e6576837cb1c17d539c04359c37f67eb6310401849d.gz/SHA256E-s1264458994--46c253b2ca9ba27889b33e6576837cb1c17d539c04359c37f67eb6310401849d.gz";
      r2 = "Q4/4j/SHA256E-s1260508504--04ebd7162002f9f02159f4565a02347e49189fc2485276b05e7eb12f3f06c11b.gz/SHA256E-s1260508504--04ebd7162002f9f02159f4565a02347e49189fc2485276b05e7eb12f3f06c11b.gz";
    }

    {
      site = "G2";
      class = "tumours";
      pdx = false;
      r1 = "M0/3F/SHA256E-s1263931011--84d4eea50ff3e5e27d0f5ebb034c143487beeee2f240c59a59bef3b4185d1fe9.gz/SHA256E-s1263931011--84d4eea50ff3e5e27d0f5ebb034c143487beeee2f240c59a59bef3b4185d1fe9.gz";
      r2 = "Jx/z4/SHA256E-s1257680530--86d93f131ebf3b5984589cce10df224f60278bc132569f37fceb69e661215797.gz/SHA256E-s1257680530--86d93f131ebf3b5984589cce10df224f60278bc132569f37fceb69e661215797.gz";
    }

    {
      site = "G2";
      class = "tumours";
      pdx = false;
      r1 = "2x/fP/SHA256E-s1227754765--af8d624465e458a2bbd8b468a2848e37f5c7bad32507dc4e01d73e23fb4fc6ef.gz/SHA256E-s1227754765--af8d624465e458a2bbd8b468a2848e37f5c7bad32507dc4e01d73e23fb4fc6ef.gz";
      r2 = "Fg/p4/SHA256E-s1227149442--a2979c9680c5046cb7c53a4a53143832170a8d25601bc8666f39882c99755c2d.gz/SHA256E-s1227149442--a2979c9680c5046cb7c53a4a53143832170a8d25601bc8666f39882c99755c2d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE16";
    capture = TwistV2HR;
  }
