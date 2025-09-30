with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "zq/GF/SHA256E-s702610748--9bb61ccb39c11ddc9cd71d00614257f0c3f085ac7b9aaa3de3cd0e3d7535ad86.gz/SHA256E-s702610748--9bb61ccb39c11ddc9cd71d00614257f0c3f085ac7b9aaa3de3cd0e3d7535ad86.gz";
      r2 = "9J/Gv/SHA256E-s705343633--d9dda6f9c59710faabf95f729518669555f17e74dd5082559ed9c65bbf4e0683.gz/SHA256E-s705343633--d9dda6f9c59710faabf95f729518669555f17e74dd5082559ed9c65bbf4e0683.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "2f/Pv/SHA256E-s728611950--1805b6c3010ba19fc4688e04277553e86c12b54a03c71408b3b18654879b7af6.gz/SHA256E-s728611950--1805b6c3010ba19fc4688e04277553e86c12b54a03c71408b3b18654879b7af6.gz";
      r2 = "j7/vG/SHA256E-s733041477--4409662404b81f3d41ded6931d94e5a1aec5f06e3262b5969b370a83db352296.gz/SHA256E-s733041477--4409662404b81f3d41ded6931d94e5a1aec5f06e3262b5969b370a83db352296.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "qv/z4/SHA256E-s733414769--13a5b2cabab066c5a6f55b2c9d51c8bde989ad4a47b7485648b7538b356b6f51.gz/SHA256E-s733414769--13a5b2cabab066c5a6f55b2c9d51c8bde989ad4a47b7485648b7538b356b6f51.gz";
      r2 = "kK/VG/SHA256E-s738924100--601763186c16189ff12b28d57e795b3d080bb1ec377e894e5e0de682b14d1548.gz/SHA256E-s738924100--601763186c16189ff12b28d57e795b3d080bb1ec377e894e5e0de682b14d1548.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "mZ/VV/SHA256E-s748297211--4997ff7dd9ae341d2fb812dd7b6702144facad6710e73b3867a0d0ccb28d1aa1.gz/SHA256E-s748297211--4997ff7dd9ae341d2fb812dd7b6702144facad6710e73b3867a0d0ccb28d1aa1.gz";
      r2 = "F6/66/SHA256E-s753222008--ca77bc18d256fbe05f64ecf1ac07458299edfe9d5094302ffa7d98623db4f24a.gz/SHA256E-s753222008--ca77bc18d256fbe05f64ecf1ac07458299edfe9d5094302ffa7d98623db4f24a.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "zX/gP/SHA256E-s759564328--cdbce6be6b27cb1bbd54181ec95cdc4d16f8c91bfbc22183099b456a20b4d807.gz/SHA256E-s759564328--cdbce6be6b27cb1bbd54181ec95cdc4d16f8c91bfbc22183099b456a20b4d807.gz";
      r2 = "Gz/qv/SHA256E-s764834625--a114731f9aacdbc33ecb84da88781338414accb792435d9442ffc9c6a56522c5.gz/SHA256E-s764834625--a114731f9aacdbc33ecb84da88781338414accb792435d9442ffc9c6a56522c5.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "x0/fg/SHA256E-s733681357--659988fa0b7a581c9bfd4d5d24adc0c7ea14dbb46f62514aae2e7811f2b1af24.gz/SHA256E-s733681357--659988fa0b7a581c9bfd4d5d24adc0c7ea14dbb46f62514aae2e7811f2b1af24.gz";
      r2 = "wz/zM/SHA256E-s736385766--26d549e6fdfed07f09037a3f6fb09cad13f6bbadf9a264c1539d6f83cddcca74.gz/SHA256E-s736385766--26d549e6fdfed07f09037a3f6fb09cad13f6bbadf9a264c1539d6f83cddcca74.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "26/V4/SHA256E-s751744958--4c7810998c8cc2a367f3baaf9ba9dfa98e795fb0a6e359d2e000b1953318a92f.gz/SHA256E-s751744958--4c7810998c8cc2a367f3baaf9ba9dfa98e795fb0a6e359d2e000b1953318a92f.gz";
      r2 = "1v/35/SHA256E-s756621487--bff4d76eb807216b7c4a3c54c22d250de80bdcfb232d8349954da6278efe4d37.gz/SHA256E-s756621487--bff4d76eb807216b7c4a3c54c22d250de80bdcfb232d8349954da6278efe4d37.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "2V/g1/SHA256E-s717065830--d62da51f72e9dbf40190c450dfadee8e810354ac50113981b0394608a7cac364.gz/SHA256E-s717065830--d62da51f72e9dbf40190c450dfadee8e810354ac50113981b0394608a7cac364.gz";
      r2 = "xg/Pp/SHA256E-s719144201--bd8328938b6140dce6afac2388073b6efd1d63adbd8260379b2b522d9bc04548.gz/SHA256E-s719144201--bd8328938b6140dce6afac2388073b6efd1d63adbd8260379b2b522d9bc04548.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "78/XJ/SHA256E-s1060094346--a69263fb5128d54326ede3f825870fd4ba6d0abdb0deef09532c86230cf15455.gz/SHA256E-s1060094346--a69263fb5128d54326ede3f825870fd4ba6d0abdb0deef09532c86230cf15455.gz";
      r2 = "xG/Kx/SHA256E-s1065318278--488aacd30025e1505a461b602bf8b4e734f14ad3c1ebff6af19d7ef88cf02afd.gz/SHA256E-s1065318278--488aacd30025e1505a461b602bf8b4e734f14ad3c1ebff6af19d7ef88cf02afd.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "KG/VJ/SHA256E-s1074179625--ebe5e07429f7fd0edfd81da43ffec54120866f1c4c115a4148314420a845ee1f.gz/SHA256E-s1074179625--ebe5e07429f7fd0edfd81da43ffec54120866f1c4c115a4148314420a845ee1f.gz";
      r2 = "Q0/93/SHA256E-s1077464110--62bdb71b6a4a44ec0227707334e33c03a97867301393266c9689cd9d7ddce5fb.gz/SHA256E-s1077464110--62bdb71b6a4a44ec0227707334e33c03a97867301393266c9689cd9d7ddce5fb.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Q8/Mp/SHA256E-s1072669590--28768f276516fd0f0f422ebce591f8ccbab56f2bcfacef8b0d2b5872047b40e2.gz/SHA256E-s1072669590--28768f276516fd0f0f422ebce591f8ccbab56f2bcfacef8b0d2b5872047b40e2.gz";
      r2 = "4Z/q5/SHA256E-s1071209900--cb1ba8d47ebd347cbbcc8d294f3138871fd47afe4404d86d5168042c460b2344.gz/SHA256E-s1071209900--cb1ba8d47ebd347cbbcc8d294f3138871fd47afe4404d86d5168042c460b2344.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0004";
    typeHla = true;
    capture = TwistV2HR;
  }
