with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1_1";
      class = "tumours";
      pdx = false;
      r1 = "Wv/13/SHA256E-s4721903707--f39219bf34f77d59d502efc755ec33dbe5b2d75991bed73bb4bccf65a4d951ee.gz/SHA256E-s4721903707--f39219bf34f77d59d502efc755ec33dbe5b2d75991bed73bb4bccf65a4d951ee.gz";
      r2 = "M1/2X/SHA256E-s4651481796--4a5e8119fa354a3322661e24f3a7bb7165946fb6c5d0eadbf839afd7b862b29a.gz/SHA256E-s4651481796--4a5e8119fa354a3322661e24f3a7bb7165946fb6c5d0eadbf839afd7b862b29a.gz";
    }

    {
      site = "1_1";
      class = "tumours";
      pdx = false;
      r1 = "79/zJ/SHA256E-s4766523775--00a23eea2ffc923a20684414fd08ec3d28455d87e06470d30d8df58d69f17d05.gz/SHA256E-s4766523775--00a23eea2ffc923a20684414fd08ec3d28455d87e06470d30d8df58d69f17d05.gz";
      r2 = "3p/ZW/SHA256E-s4704052552--a854551b9ef862e4b6252b691fbc840ff986a33e64f48b98bee94c7c9d2df104.gz/SHA256E-s4704052552--a854551b9ef862e4b6252b691fbc840ff986a33e64f48b98bee94c7c9d2df104.gz";
    }

    {
      site = "1";
      class = "tumours";
      pdx = false;
      r1 = "zf/p4/SHA256E-s2153196241--f0cfd9e72b87d52ec5532b46ff37ace1adb986b60dd6c7dc499d387f10e527b0.gz/SHA256E-s2153196241--f0cfd9e72b87d52ec5532b46ff37ace1adb986b60dd6c7dc499d387f10e527b0.gz";
      r2 = "Qm/jG/SHA256E-s2117489753--8079b81447c8a7df00026aa893149f6547aee8e3bad25004686cf78a9bbb53da.gz/SHA256E-s2117489753--8079b81447c8a7df00026aa893149f6547aee8e3bad25004686cf78a9bbb53da.gz";
    }

    {
      site = "1";
      class = "tumours";
      pdx = false;
      r1 = "xv/5g/SHA256E-s2190214584--ef62fca4f1d5fd75f61a871bb4264cba4c74d23d0c865a5fbe331cd0ad97e74f.gz/SHA256E-s2190214584--ef62fca4f1d5fd75f61a871bb4264cba4c74d23d0c865a5fbe331cd0ad97e74f.gz";
      r2 = "2G/wv/SHA256E-s2157552129--50730a82fcc43c41626cdeac2c344037fbf1c878676c47f4d970486910b8dc56.gz/SHA256E-s2157552129--50730a82fcc43c41626cdeac2c344037fbf1c878676c47f4d970486910b8dc56.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "wF/5k/SHA256E-s1036603386--09c5a48d82bfcdf70b86bfa99d841b116ac75d983ac82c2a1545af00e69ff906.gz/SHA256E-s1036603386--09c5a48d82bfcdf70b86bfa99d841b116ac75d983ac82c2a1545af00e69ff906.gz";
      r2 = "1v/w9/SHA256E-s1044881238--01d22b7d4c44556185d0d82f8797b316194f3b0d2fc01647b40e31c08433c62e.gz/SHA256E-s1044881238--01d22b7d4c44556185d0d82f8797b316194f3b0d2fc01647b40e31c08433c62e.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "Gz/jz/SHA256E-s1078479850--a62c9a2d67e410b16e3b235377ea85abecb8d2dcdc3a619547f3cd9969897fb2.gz/SHA256E-s1078479850--a62c9a2d67e410b16e3b235377ea85abecb8d2dcdc3a619547f3cd9969897fb2.gz";
      r2 = "WV/jg/SHA256E-s1088941095--601a352f54f68f0d7430608f29247ebd6f8cceb3b612e80283f6cb270fdaa590.gz/SHA256E-s1088941095--601a352f54f68f0d7430608f29247ebd6f8cceb3b612e80283f6cb270fdaa590.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TwistV2HR;
    name = "SOL2_0118";
  }
