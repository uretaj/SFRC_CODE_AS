with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6G/Q0/SHA256E-s1008085178--db58bc2169092cfa2cd218c51d312fb15fd3563e9b3c7f44136000aea92ec74f.gz/SHA256E-s1008085178--db58bc2169092cfa2cd218c51d312fb15fd3563e9b3c7f44136000aea92ec74f.gz";
      r2 = "fP/fw/SHA256E-s1007610396--e5250d5e0e4dad4971968aca4b79a44b3e752b7009769754c204e45a336dec55.gz/SHA256E-s1007610396--e5250d5e0e4dad4971968aca4b79a44b3e752b7009769754c204e45a336dec55.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "X1/kK/SHA256E-s1019630265--e0db40f6955d880574384b911517c261db04576c2d2aa18e649366509666f7c1.gz/SHA256E-s1019630265--e0db40f6955d880574384b911517c261db04576c2d2aa18e649366509666f7c1.gz";
      r2 = "7k/9Q/SHA256E-s1017989193--b9d7ced3269d30a1e7d944b7e1984d89d2ddd47cf6933e5664bab2e0eef77ebe.gz/SHA256E-s1017989193--b9d7ced3269d30a1e7d944b7e1984d89d2ddd47cf6933e5664bab2e0eef77ebe.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jk/59/SHA256E-s1020835221--c8c9e0b318f267137d3f71919c4fb37a74c7c72d92e85050f0057ddbb374b6c6.gz/SHA256E-s1020835221--c8c9e0b318f267137d3f71919c4fb37a74c7c72d92e85050f0057ddbb374b6c6.gz";
      r2 = "Mf/vQ/SHA256E-s1015209884--66bc017533956474906f336a2088ecb2091ae68e37182229bc55ed435269725e.gz/SHA256E-s1015209884--66bc017533956474906f336a2088ecb2091ae68e37182229bc55ed435269725e.gz";
    }

    {
      site = "S4";
      class = "tumours";
      pdx = false;
      r1 = "Wg/G2/SHA256E-s2388636586--e61435f495b2a13a75f64fbe51c08753dafc7ec0153fe516639214bbac82abfb.gz/SHA256E-s2388636586--e61435f495b2a13a75f64fbe51c08753dafc7ec0153fe516639214bbac82abfb.gz";
      r2 = "XX/mJ/SHA256E-s2458760473--a79de48937002f4c10094327f9b4849a9d733bdb2a1d62170d8b06a92b00ca69.gz/SHA256E-s2458760473--a79de48937002f4c10094327f9b4849a9d733bdb2a1d62170d8b06a92b00ca69.gz";
    }

    {
      site = "S4";
      class = "tumours";
      pdx = false;
      r1 = "Pg/M8/SHA256E-s2279633736--8b66f76609cf43de9b5f9423e3c2b6a6bd1ad5c3860c1f0dce8a244b9546a875.gz/SHA256E-s2279633736--8b66f76609cf43de9b5f9423e3c2b6a6bd1ad5c3860c1f0dce8a244b9546a875.gz";
      r2 = "Jq/4p/SHA256E-s2336355550--4e6900c27edd148c5518588fd5267d0fcc5ee4562931c8a90e072b8ad0e76bad.gz/SHA256E-s2336355550--4e6900c27edd148c5518588fd5267d0fcc5ee4562931c8a90e072b8ad0e76bad.gz";
    }

    {
      site = "S4";
      class = "tumours";
      pdx = false;
      r1 = "j7/1F/SHA256E-s2271187661--2e301eba5a0ea3f3062d3a6815e45326ee21d641dfe6d8069fa27b9e227a0fbf.gz/SHA256E-s2271187661--2e301eba5a0ea3f3062d3a6815e45326ee21d641dfe6d8069fa27b9e227a0fbf.gz";
      r2 = "K1/xW/SHA256E-s2321464090--c01f19f444b2655631b97dff0f16f22e051abb8ed5063db6bd256db49dea2a12.gz/SHA256E-s2321464090--c01f19f444b2655631b97dff0f16f22e051abb8ed5063db6bd256db49dea2a12.gz";
    }

    {
      site = "S4";
      class = "tumours";
      pdx = false;
      r1 = "MJ/p6/SHA256E-s2318868625--6ab5fddb372898b233788162c174e86e10c04d9e31656a42606fba23f6c38079.gz/SHA256E-s2318868625--6ab5fddb372898b233788162c174e86e10c04d9e31656a42606fba23f6c38079.gz";
      r2 = "25/W4/SHA256E-s2368523285--50260a7c820d029bbd8ea4c5d7577b7ce2698cd2f96b5a78cb4eeebb2d426bae.gz/SHA256E-s2368523285--50260a7c820d029bbd8ea4c5d7577b7ce2698cd2f96b5a78cb4eeebb2d426bae.gz";
    }

    {
      site = "S5T1";
      class = "tumours";
      pdx = false;
      r1 = "pp/p5/SHA256E-s258233777--29d3306c4f756d670f1ae1b327f62b489241e92afc9202a328ae96373cc9d407.gz/SHA256E-s258233777--29d3306c4f756d670f1ae1b327f62b489241e92afc9202a328ae96373cc9d407.gz";
      r2 = "WF/81/SHA256E-s267655711--6573a8837fec2431ac94f34239c9b06d3d6e7f605702d1e9fa0a3bcd3eaef6e7.gz/SHA256E-s267655711--6573a8837fec2431ac94f34239c9b06d3d6e7f605702d1e9fa0a3bcd3eaef6e7.gz";
    }

    {
      site = "S5T1";
      class = "tumours";
      pdx = false;
      r1 = "ZP/Qf/SHA256E-s247056357--d93688b91558345c7cba5f605779c42c9da981382df9e77dfbca8d0a84ffcb1e.gz/SHA256E-s247056357--d93688b91558345c7cba5f605779c42c9da981382df9e77dfbca8d0a84ffcb1e.gz";
      r2 = "f9/g8/SHA256E-s255234352--5651d56d5a53fb16a1b05e849b5a82a763dfdc59d9d5c8df049c68e78602f68c.gz/SHA256E-s255234352--5651d56d5a53fb16a1b05e849b5a82a763dfdc59d9d5c8df049c68e78602f68c.gz";
    }

    {
      site = "S5T1";
      class = "tumours";
      pdx = false;
      r1 = "Jq/X8/SHA256E-s246152909--ca79ecf36e13163c66809dc1ef2bdbefefd5d3be4b8cbfbb43171663ab3cc11f.gz/SHA256E-s246152909--ca79ecf36e13163c66809dc1ef2bdbefefd5d3be4b8cbfbb43171663ab3cc11f.gz";
      r2 = "wZ/VQ/SHA256E-s253655744--b72d1cd23491ba7fac5d490826bf27cda9413f05caa0738ea41383b406947180.gz/SHA256E-s253655744--b72d1cd23491ba7fac5d490826bf27cda9413f05caa0738ea41383b406947180.gz";
    }

    {
      site = "S5T1";
      class = "tumours";
      pdx = false;
      r1 = "87/2p/SHA256E-s251525053--55b955688a564ba0098fba009c3e950aabfb2b5dd4b5d88a0689421dbc446823.gz/SHA256E-s251525053--55b955688a564ba0098fba009c3e950aabfb2b5dd4b5d88a0689421dbc446823.gz";
      r2 = "j6/wP/SHA256E-s259070548--cbcbe491743c88c21833258f75648b7fd7f993e443b8ae9b822f030136e73f29.gz/SHA256E-s259070548--cbcbe491743c88c21833258f75648b7fd7f993e443b8ae9b822f030136e73f29.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0054";
    typeHla = true;
    capture = TwistV2HR;
  }
