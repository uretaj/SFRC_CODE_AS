with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "vW/0V/SHA256E-s723407434--d2fc68e193903b4a77b132006776b14eafc9e139e8c3b266af6a64d97ff891f9.gz/SHA256E-s723407434--d2fc68e193903b4a77b132006776b14eafc9e139e8c3b266af6a64d97ff891f9.gz";
      r2 = "7W/6f/SHA256E-s723646604--305cc68aca4136a9bcd794011630fa5f634f564d068acc4552bdc2b4051f00fb.gz/SHA256E-s723646604--305cc68aca4136a9bcd794011630fa5f634f564d068acc4552bdc2b4051f00fb.gz";
    }

    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "1V/9K/SHA256E-s753955617--11842aeea885f78ed4224426927bf31fc652cf63ecc54c87ad426f6e52cef8dd.gz/SHA256E-s753955617--11842aeea885f78ed4224426927bf31fc652cf63ecc54c87ad426f6e52cef8dd.gz";
      r2 = "6w/W0/SHA256E-s756065403--67f05b31a94db6a580ccb25ab207f59e67ef8926e2234b27ad91be8fe3e8fc3c.gz/SHA256E-s756065403--67f05b31a94db6a580ccb25ab207f59e67ef8926e2234b27ad91be8fe3e8fc3c.gz";
    }

    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "PG/WG/SHA256E-s750902653--dc5cdebe19398b1b9e68287f021085c47983cb28561ecbd2defe1c613d2143c3.gz/SHA256E-s750902653--dc5cdebe19398b1b9e68287f021085c47983cb28561ecbd2defe1c613d2143c3.gz";
      r2 = "26/gM/SHA256E-s753955546--fbaa6c3aa97e3d60d9857b74d625d13ce15a42f3bcbf184ea1406e770886627d.gz/SHA256E-s753955546--fbaa6c3aa97e3d60d9857b74d625d13ce15a42f3bcbf184ea1406e770886627d.gz";
    }

    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "VZ/mw/SHA256E-s745393398--8edbc015fd17b46ecc9f3ca85ccb923a025b761c0cd3b73bc1c61ea857e17efe.gz/SHA256E-s745393398--8edbc015fd17b46ecc9f3ca85ccb923a025b761c0cd3b73bc1c61ea857e17efe.gz";
      r2 = "Kx/pQ/SHA256E-s747785077--975cccebd0dd5bf95838ab996e66ab12e244250c6d53eeb9eb06ff275bed1ad0.gz/SHA256E-s747785077--975cccebd0dd5bf95838ab996e66ab12e244250c6d53eeb9eb06ff275bed1ad0.gz";
    }

    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "4m/04/SHA256E-s766333952--7440c021e533ec6ed2ee3849956bdfc63d86085472ee8c8292d1081474079a6e.gz/SHA256E-s766333952--7440c021e533ec6ed2ee3849956bdfc63d86085472ee8c8292d1081474079a6e.gz";
      r2 = "Q3/zM/SHA256E-s769091633--86aef89387e2bc6168f2e07668c42d3c54e82189bb1e0b4ca241aa34a7261fcc.gz/SHA256E-s769091633--86aef89387e2bc6168f2e07668c42d3c54e82189bb1e0b4ca241aa34a7261fcc.gz";
    }

    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "WV/JG/SHA256E-s771228995--49c7c5a7c6d68f288ec6300f40934f4f8871ace4663176929812219dc64d2549.gz/SHA256E-s771228995--49c7c5a7c6d68f288ec6300f40934f4f8871ace4663176929812219dc64d2549.gz";
      r2 = "5w/QM/SHA256E-s770813862--7a439bebef642e026663f99962852b0154b6f633bdc49afe959c508bc39468a7.gz/SHA256E-s770813862--7a439bebef642e026663f99962852b0154b6f633bdc49afe959c508bc39468a7.gz";
    }

    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "7m/v0/SHA256E-s773852822--856b503cf54c83939d7a2de0555d57ea7b6bb22bfde09d780a5f37e1be3be4f9.gz/SHA256E-s773852822--856b503cf54c83939d7a2de0555d57ea7b6bb22bfde09d780a5f37e1be3be4f9.gz";
      r2 = "mm/47/SHA256E-s776086917--ea97b82d4bbf15872f8555050015535bb8dbaddbd5f4e92584824256bb5898c5.gz/SHA256E-s776086917--ea97b82d4bbf15872f8555050015535bb8dbaddbd5f4e92584824256bb5898c5.gz";
    }

    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "gp/64/SHA256E-s750772553--06be2b579f22635e51834a44a43ecf5cc56d4a427fee93e36afd471a72d80ce3.gz/SHA256E-s750772553--06be2b579f22635e51834a44a43ecf5cc56d4a427fee93e36afd471a72d80ce3.gz";
      r2 = "wg/KM/SHA256E-s749487982--b1da284d8651f457f77e44a639da00caa55a80563f15c34111733fe20c07ac43.gz/SHA256E-s749487982--b1da284d8651f457f77e44a639da00caa55a80563f15c34111733fe20c07ac43.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "JJ/2J/SHA256E-s765104768--1a35571bde06b9a762f3069608b6d2cf5b01d8a34c3f75e5d614e54d0f6f2b81.gz/SHA256E-s765104768--1a35571bde06b9a762f3069608b6d2cf5b01d8a34c3f75e5d614e54d0f6f2b81.gz";
      r2 = "6q/Gx/SHA256E-s768429758--0369e252c0a2f04f37f6a1efc74bdabdf6c4bcf75b23851a6d8368f5947fd7c0.gz/SHA256E-s768429758--0369e252c0a2f04f37f6a1efc74bdabdf6c4bcf75b23851a6d8368f5947fd7c0.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6p/Vk/SHA256E-s771521862--459d743c44cd6b7e637f2e0947c7193f342f05a15a8e031bf71faf843e0e0ccd.gz/SHA256E-s771521862--459d743c44cd6b7e637f2e0947c7193f342f05a15a8e031bf71faf843e0e0ccd.gz";
      r2 = "qG/62/SHA256E-s780052888--e24f5a5f0552f0aa9b7d2a4b42ee09dce70745ea9ed2678077df139dd9b9092e.gz/SHA256E-s780052888--e24f5a5f0552f0aa9b7d2a4b42ee09dce70745ea9ed2678077df139dd9b9092e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "kp/Xw/SHA256E-s763132800--385f3aaec0fe497fcc9a0601799ec4e55b848e36a7bcddace9ca92af6df42fe8.gz/SHA256E-s763132800--385f3aaec0fe497fcc9a0601799ec4e55b848e36a7bcddace9ca92af6df42fe8.gz";
      r2 = "Qw/xj/SHA256E-s769277239--5ddb2a7cedecbe248166c7d1564a499f230736ee9d063991b6a29589668579b7.gz/SHA256E-s769277239--5ddb2a7cedecbe248166c7d1564a499f230736ee9d063991b6a29589668579b7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "9x/5w/SHA256E-s815091260--9fa83ecb03dd8bfa95a379053c7243e922a7a83e159c24755f406fbfcf08648c.gz/SHA256E-s815091260--9fa83ecb03dd8bfa95a379053c7243e922a7a83e159c24755f406fbfcf08648c.gz";
      r2 = "vP/xw/SHA256E-s827459285--960768675fe73774d044492c31c38eab5447a3dacc570503c051106a447277c0.gz/SHA256E-s827459285--960768675fe73774d044492c31c38eab5447a3dacc570503c051106a447277c0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0110";
    typeHla = true;
    capture = TwistV2HR;
  }
