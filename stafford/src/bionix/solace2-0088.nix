with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "Qx/4Z/SHA256E-s1423370689--ed15aadcc9c69137ae94576d54ef646eae5ca364384f9ecd39f58e0e13489c89.gz/SHA256E-s1423370689--ed15aadcc9c69137ae94576d54ef646eae5ca364384f9ecd39f58e0e13489c89.gz";
      r2 = "V6/84/SHA256E-s1424110174--6276db6dc0f08f3049060fff0fb5ca5705c417fe7a1070ccd44c6a51ae377021.gz/SHA256E-s1424110174--6276db6dc0f08f3049060fff0fb5ca5705c417fe7a1070ccd44c6a51ae377021.gz";
    }

    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "7F/Xx/SHA256E-s1470217994--ad0050ba59f0b885da8ac8daa7fb3cea896de182e45640b91a62470daecffb98.gz/SHA256E-s1470217994--ad0050ba59f0b885da8ac8daa7fb3cea896de182e45640b91a62470daecffb98.gz";
      r2 = "xF/x9/SHA256E-s1474191714--1b91d43a41012a36cc28e71c1e9bd19a6730de4dd55b154be721150ab04b3a35.gz/SHA256E-s1474191714--1b91d43a41012a36cc28e71c1e9bd19a6730de4dd55b154be721150ab04b3a35.gz";
    }

    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "1V/v9/SHA256E-s1476551078--9d7585ec484ef8773ff689fbb90b705d5ee5f44c2d6b8d3837fe9e70bc4d5035.gz/SHA256E-s1476551078--9d7585ec484ef8773ff689fbb90b705d5ee5f44c2d6b8d3837fe9e70bc4d5035.gz";
      r2 = "1X/42/SHA256E-s1482491433--0ee137fd44ef9be4dcd833bf26412645244422d72a98a84a423a75e21339534a.gz/SHA256E-s1482491433--0ee137fd44ef9be4dcd833bf26412645244422d72a98a84a423a75e21339534a.gz";
    }

    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "Xp/M0/SHA256E-s1505106507--fa220354204ca4f5fc05968dd5ab85109f0b06610449fa7b897dab8ea8139e65.gz/SHA256E-s1505106507--fa220354204ca4f5fc05968dd5ab85109f0b06610449fa7b897dab8ea8139e65.gz";
      r2 = "9P/MZ/SHA256E-s1510188352--0fa095bd7ea38d61290faf86ee7a10f8d4c67973d96ccf9fc4700295b4f2c384.gz/SHA256E-s1510188352--0fa095bd7ea38d61290faf86ee7a10f8d4c67973d96ccf9fc4700295b4f2c384.gz";
    }

    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "Jf/ZJ/SHA256E-s1527670284--b4e71d864855846a43c29f91022d3917a95b9eb6f21fa7e095427eb9a7af4f2e.gz/SHA256E-s1527670284--b4e71d864855846a43c29f91022d3917a95b9eb6f21fa7e095427eb9a7af4f2e.gz";
      r2 = "mW/98/SHA256E-s1533625429--eb9b74d37f9be83f147173412fcd24e770c3af0e26bb5aa05d35f9d25c1aaf66.gz/SHA256E-s1533625429--eb9b74d37f9be83f147173412fcd24e770c3af0e26bb5aa05d35f9d25c1aaf66.gz";
    }

    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "gq/wM/SHA256E-s1469884076--62fb8e35cd68f6dcd51f8b2cdd49a82219624049ee1b861997867f8c34eeb509.gz/SHA256E-s1469884076--62fb8e35cd68f6dcd51f8b2cdd49a82219624049ee1b861997867f8c34eeb509.gz";
      r2 = "G9/p2/SHA256E-s1470805371--a70496df24b249605ab27c8a5dd20476c6a3a0eb1294696c8d02373cd40ecab2.gz/SHA256E-s1470805371--a70496df24b249605ab27c8a5dd20476c6a3a0eb1294696c8d02373cd40ecab2.gz";
    }

    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "Mm/wg/SHA256E-s1513680664--f45011c8ecaf8bf8726bb88e5c12ee46a7169db6ee58463ed11b89e5d0c2a282.gz/SHA256E-s1513680664--f45011c8ecaf8bf8726bb88e5c12ee46a7169db6ee58463ed11b89e5d0c2a282.gz";
      r2 = "1m/2X/SHA256E-s1518899647--c391e8e6d8862c74675f2e7f99311fae24d44b03149a6c79cf864514815312ee.gz/SHA256E-s1518899647--c391e8e6d8862c74675f2e7f99311fae24d44b03149a6c79cf864514815312ee.gz";
    }

    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "w5/48/SHA256E-s1441964228--ac745d1147220244658b6fd0c0cee8173f41beab27c001803a03a6a55c9799e3.gz/SHA256E-s1441964228--ac745d1147220244658b6fd0c0cee8173f41beab27c001803a03a6a55c9799e3.gz";
      r2 = "Pz/M4/SHA256E-s1441664245--711a15c22a752dddfcb84b9a70f46c2881390f0688c15a960b3c31c06bdd2c5f.gz/SHA256E-s1441664245--711a15c22a752dddfcb84b9a70f46c2881390f0688c15a960b3c31c06bdd2c5f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "20/pm/SHA256E-s1071915112--cf82c299fd47bff3a4e7a4f67c846a89d387ad58124f011ee9970349ca168a67.gz/SHA256E-s1071915112--cf82c299fd47bff3a4e7a4f67c846a89d387ad58124f011ee9970349ca168a67.gz";
      r2 = "MZ/4M/SHA256E-s1072837094--13963b2ba27c8aa290f863638c66c76e174572fd42c14d5128eb28b238baaef3.gz/SHA256E-s1072837094--13963b2ba27c8aa290f863638c66c76e174572fd42c14d5128eb28b238baaef3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8p/ZZ/SHA256E-s1091711835--c29ae52887be24d5e1095a77fef5d8ad62ce9a3c8b58df4f564ecf34178f4395.gz/SHA256E-s1091711835--c29ae52887be24d5e1095a77fef5d8ad62ce9a3c8b58df4f564ecf34178f4395.gz";
      r2 = "wj/Fp/SHA256E-s1091390016--39dba8b3daf031758b8d8c4535f8e95ed3cdd5e4881975ec0f67a8ceb1e6f529.gz/SHA256E-s1091390016--39dba8b3daf031758b8d8c4535f8e95ed3cdd5e4881975ec0f67a8ceb1e6f529.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "K3/WZ/SHA256E-s1097436158--d90e6b41d514189245ab1f5d66c5d6ab03cca63e928eacd4ce14db2e8eaca49c.gz/SHA256E-s1097436158--d90e6b41d514189245ab1f5d66c5d6ab03cca63e928eacd4ce14db2e8eaca49c.gz";
      r2 = "77/Vw/SHA256E-s1092630097--e3a41e7e0cdda61635cb138d7f76736535f1aff8f17c2fb95cd6588e3de028a5.gz/SHA256E-s1092630097--e3a41e7e0cdda61635cb138d7f76736535f1aff8f17c2fb95cd6588e3de028a5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0088";
    typeHla = true;
    capture = TwistV2HR;
  }
