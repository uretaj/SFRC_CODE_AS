with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2X";
      class = "tumours";
      pdx = false;
      r1 = "J4/M2/SHA256E-s2051962821--778f521e80dc529424bf08a878624f215df681b0b31ae4bdca3b0eada82b8f8a.gz/SHA256E-s2051962821--778f521e80dc529424bf08a878624f215df681b0b31ae4bdca3b0eada82b8f8a.gz";
      r2 = "MV/jw/SHA256E-s2046791525--d19d53573cb93bbd6b27d12af21c141c3ec551c030be52fc60266f0ba36b7ac1.gz/SHA256E-s2046791525--d19d53573cb93bbd6b27d12af21c141c3ec551c030be52fc60266f0ba36b7ac1.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VP/7X/SHA256E-s1028646976--fd189b9a7199e6f7e24e03482b153a4ea189cfda5b70ad45d47953d285d99a73.gz/SHA256E-s1028646976--fd189b9a7199e6f7e24e03482b153a4ea189cfda5b70ad45d47953d285d99a73.gz";
      r2 = "z3/1X/SHA256E-s1024805077--6dcc99e13c08f72865452bf2c1aee7bf07f096ac47a6c4f3f43f2a0be51bd092.gz/SHA256E-s1024805077--6dcc99e13c08f72865452bf2c1aee7bf07f096ac47a6c4f3f43f2a0be51bd092.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Qp/q4/SHA256E-s1034658959--fa5951313a12ffc7e72a2d43c26751457c0153c5d5adf4730c4dd9b72fc75dc8.gz/SHA256E-s1034658959--fa5951313a12ffc7e72a2d43c26751457c0153c5d5adf4730c4dd9b72fc75dc8.gz";
      r2 = "3K/GK/SHA256E-s1029433457--1e2ca85e16b3160f54531d1f8930406486eea22e5476068f422cc8d2e6d8849b.gz/SHA256E-s1029433457--1e2ca85e16b3160f54531d1f8930406486eea22e5476068f422cc8d2e6d8849b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "V0/kW/SHA256E-s1030532462--70d23985a3bbd91f46d4f9b5df02b97d4343e9016c291f1db8249243524b99d4.gz/SHA256E-s1030532462--70d23985a3bbd91f46d4f9b5df02b97d4343e9016c291f1db8249243524b99d4.gz";
      r2 = "fX/Xm/SHA256E-s1021199704--b36898c8124e167b0b4bfe88dc4651cbbf323fdc752cb4b20f3bf9f80d5ffe77.gz/SHA256E-s1021199704--b36898c8124e167b0b4bfe88dc4651cbbf323fdc752cb4b20f3bf9f80d5ffe77.gz";
    }
    {
      site = "2X";
      class = "tumours";
      pdx = false;
      r1 = "8K/z2/SHA256E-s3688565059--515d8afdd3a4764f4af902eec3d07d46a96806c91070773fa74096c3eec8583f.gz/SHA256E-s3688565059--515d8afdd3a4764f4af902eec3d07d46a96806c91070773fa74096c3eec8583f.gz";
      r2 = "gZ/p1/SHA256E-s3698581876--8513f7ca636712411b672ccba0135d7871da38621c01328013cd176ce677c8c8.gz/SHA256E-s3698581876--8513f7ca636712411b672ccba0135d7871da38621c01328013cd176ce677c8c8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0059";
    typeHla = true;
    capture = TwistV2HR;
  }
