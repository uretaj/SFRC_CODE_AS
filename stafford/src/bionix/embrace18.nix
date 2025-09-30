with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "9x/vm/SHA256E-s1528225285--2c62caf8c470b978328a0bd465f22053fa96ce178426fada80cfc03af4436e5b.gz/SHA256E-s1528225285--2c62caf8c470b978328a0bd465f22053fa96ce178426fada80cfc03af4436e5b.gz";
      r2 = "0W/5Z/SHA256E-s1509787091--eeb7021a4b521b7d7e8186648a03b5c636fc2701777995b9b2cf4f72fab4735b.gz/SHA256E-s1509787091--eeb7021a4b521b7d7e8186648a03b5c636fc2701777995b9b2cf4f72fab4735b.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "MM/Q1/SHA256E-s1523715815--885d0c4a200bfa588aa0ed01c1254f4e3e8f9f34d6f19dc3e8b83b0d5d4cb80d.gz/SHA256E-s1523715815--885d0c4a200bfa588aa0ed01c1254f4e3e8f9f34d6f19dc3e8b83b0d5d4cb80d.gz";
      r2 = "Wq/ZF/SHA256E-s1513256958--d45c6a95c895799fe2fd6c61740111d56c01b302394e4cb518817340a577cfa5.gz/SHA256E-s1513256958--d45c6a95c895799fe2fd6c61740111d56c01b302394e4cb518817340a577cfa5.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "qz/XJ/SHA256E-s1529101260--055a53b6e5144275da7f753cb19957b9ed72d7fc78d5650fb68950989af1c30a.gz/SHA256E-s1529101260--055a53b6e5144275da7f753cb19957b9ed72d7fc78d5650fb68950989af1c30a.gz";
      r2 = "j8/GP/SHA256E-s1515086346--d998369ad7c0184d9c9ac078c9f3f0718161eaa3252ecb42ced964caa7afb522.gz/SHA256E-s1515086346--d998369ad7c0184d9c9ac078c9f3f0718161eaa3252ecb42ced964caa7afb522.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "zK/pW/SHA256E-s1495510698--15f4321f7b5cfe21653fd082210cd1a6ada242183b311c777c531de86f6c6d42.gz/SHA256E-s1495510698--15f4321f7b5cfe21653fd082210cd1a6ada242183b311c777c531de86f6c6d42.gz";
      r2 = "4k/xF/SHA256E-s1489385833--7e1cb883676107bba4f14d97461c6d0fde046bcd3363b0b8114c5f17d7e8bab7.gz/SHA256E-s1489385833--7e1cb883676107bba4f14d97461c6d0fde046bcd3363b0b8114c5f17d7e8bab7.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "x4/8z/SHA256E-s635433399--f2a2de57ecd4bcf9e2049ba99841b81b4a8aa1ad305551f753f2abaf3c0ab69a.gz/SHA256E-s635433399--f2a2de57ecd4bcf9e2049ba99841b81b4a8aa1ad305551f753f2abaf3c0ab69a.gz";
      r2 = "kZ/4x/SHA256E-s640850142--53e0553fbff07073c52adbd29931ae09c70cfcb1bdb37c6d0b3b9c5f1bbb9ed8.gz/SHA256E-s640850142--53e0553fbff07073c52adbd29931ae09c70cfcb1bdb37c6d0b3b9c5f1bbb9ed8.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "4j/qX/SHA256E-s640351739--6da141645e07c801aab6dbd0e74ff7a6831d7389bbdcc521ae8449ea8611d743.gz/SHA256E-s640351739--6da141645e07c801aab6dbd0e74ff7a6831d7389bbdcc521ae8449ea8611d743.gz";
      r2 = "P5/7W/SHA256E-s649972878--adb136268d67d90daaec0597c67c25d787dbc698d29f745a33e9278cc6c5f7bb.gz/SHA256E-s649972878--adb136268d67d90daaec0597c67c25d787dbc698d29f745a33e9278cc6c5f7bb.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "f3/pM/SHA256E-s634783573--f733c635817b76db85ed41cb90ca59ce228d9a1536b18fc4ec093dcd7d1dd942.gz/SHA256E-s634783573--f733c635817b76db85ed41cb90ca59ce228d9a1536b18fc4ec093dcd7d1dd942.gz";
      r2 = "kX/wV/SHA256E-s642503841--85b1396ac97dbd8ea4e2f95a5897260ab0e0d134f8a18dbbcc999b0ce913fb10.gz/SHA256E-s642503841--85b1396ac97dbd8ea4e2f95a5897260ab0e0d134f8a18dbbcc999b0ce913fb10.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "pK/vQ/SHA256E-s687019660--87300814eadf37356f8785eb3e1758087830230e84fed83180328cc6fb457d3e.gz/SHA256E-s687019660--87300814eadf37356f8785eb3e1758087830230e84fed83180328cc6fb457d3e.gz";
      r2 = "xJ/K3/SHA256E-s700314838--ba41c1c1be6254103e0b8f2864aff565611ecfb3cc7751293b53c792421359fc.gz/SHA256E-s700314838--ba41c1c1be6254103e0b8f2864aff565611ecfb3cc7751293b53c792421359fc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE18";
    capture = TwistV2HR;
  }
