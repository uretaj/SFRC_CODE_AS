with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "QK/Kv/SHA256E-s2053475901--0d29544c55de18ccd34efcf5f91978507aba8c75f23a58376109dbf74223ac2a.gz/SHA256E-s2053475901--0d29544c55de18ccd34efcf5f91978507aba8c75f23a58376109dbf74223ac2a.gz";
      r2 = "K9/jw/SHA256E-s2070549788--bf149ebbc3b38903fd2fd5f75e0ea43762158c3cd2b2ac47e875ba088095c7fd.gz/SHA256E-s2070549788--bf149ebbc3b38903fd2fd5f75e0ea43762158c3cd2b2ac47e875ba088095c7fd.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "JX/J9/SHA256E-s2049965678--9ea53f51b3051f80887ae3ca0b09bd9f6e18f8ba0c706d749f92235a5abdeb5a.gz/SHA256E-s2049965678--9ea53f51b3051f80887ae3ca0b09bd9f6e18f8ba0c706d749f92235a5abdeb5a.gz";
      r2 = "7P/9g/SHA256E-s2076749844--1ca0f5201c5f27c642a65cdf22955e27fa3730eb07ba24a5f05902a8946fced6.gz/SHA256E-s2076749844--1ca0f5201c5f27c642a65cdf22955e27fa3730eb07ba24a5f05902a8946fced6.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "Wg/qJ/SHA256E-s2060294315--8d22e0089f5d318cff3f58d7c88e8a05a6fb4c662a055891adda7978aaccb267.gz/SHA256E-s2060294315--8d22e0089f5d318cff3f58d7c88e8a05a6fb4c662a055891adda7978aaccb267.gz";
      r2 = "2w/8v/SHA256E-s2084071842--d94e80b6080ba58f4a63ea48424fae291bf718fe368e43246e3446d30897c534.gz/SHA256E-s2084071842--d94e80b6080ba58f4a63ea48424fae291bf718fe368e43246e3446d30897c534.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "Pz/x6/SHA256E-s1952527650--c667f6150887b5d2c859af0261b5500bd5eb014f2171c0c50142738ee43adacc.gz/SHA256E-s1952527650--c667f6150887b5d2c859af0261b5500bd5eb014f2171c0c50142738ee43adacc.gz";
      r2 = "QZ/10/SHA256E-s1985188026--b91451432d0b7a4b998987eb50278fa91284cf8f39b399819c346aca206da03d.gz/SHA256E-s1985188026--b91451432d0b7a4b998987eb50278fa91284cf8f39b399819c346aca206da03d.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "QG/gm/SHA256E-s648395104--8c494515ee4ee9cc1bfb14ed7ba576cb30cbfd1fdac961673ce577ada98418ef.gz/SHA256E-s648395104--8c494515ee4ee9cc1bfb14ed7ba576cb30cbfd1fdac961673ce577ada98418ef.gz";
      r2 = "Q2/FP/SHA256E-s652823909--956e3ae28d458ff57d21dee229a20c6ed287046bd802c497b5d50991926da2d9.gz/SHA256E-s652823909--956e3ae28d458ff57d21dee229a20c6ed287046bd802c497b5d50991926da2d9.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "W9/QK/SHA256E-s652034155--81b0d914a3f4b4944981460e4a11672abbb2abea6d2390456b0cfd8ee135b6eb.gz/SHA256E-s652034155--81b0d914a3f4b4944981460e4a11672abbb2abea6d2390456b0cfd8ee135b6eb.gz";
      r2 = "7x/Z4/SHA256E-s660953605--03774aa3178acb05025ee2dcfe021774ea815fe4a4d43449ee2fdd82489b6a53.gz/SHA256E-s660953605--03774aa3178acb05025ee2dcfe021774ea815fe4a4d43449ee2fdd82489b6a53.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Fm/5G/SHA256E-s643800864--34473ee4682f8ca62d2e8ff3ab41f803f7080c00c9b2d5f46e05c40bfd7977d2.gz/SHA256E-s643800864--34473ee4682f8ca62d2e8ff3ab41f803f7080c00c9b2d5f46e05c40bfd7977d2.gz";
      r2 = "V7/fG/SHA256E-s650769414--6d142156b30b18a18c848210b82c07c44cef3d30dd0526f022f33673e1988d08.gz/SHA256E-s650769414--6d142156b30b18a18c848210b82c07c44cef3d30dd0526f022f33673e1988d08.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "xX/g9/SHA256E-s685771390--5346143264625ec9cf83c582d867bc2579a1b6123721dcf336d84a2558de20b0.gz/SHA256E-s685771390--5346143264625ec9cf83c582d867bc2579a1b6123721dcf336d84a2558de20b0.gz";
      r2 = "x9/QW/SHA256E-s697845206--ee140eed99fbdcf1e2c40f9fd08dec23e72bb168a1a8baf5237291e9e2cc47ba.gz/SHA256E-s697845206--ee140eed99fbdcf1e2c40f9fd08dec23e72bb168a1a8baf5237291e9e2cc47ba.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE03";
    capture = TwistV2HR;
  }
