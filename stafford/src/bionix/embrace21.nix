with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "Jq/42/SHA256E-s2003440338--18884e99b70d99d128dfc8fdd816c8d077aabc1d40f110138a99c604fc810364.gz/SHA256E-s2003440338--18884e99b70d99d128dfc8fdd816c8d077aabc1d40f110138a99c604fc810364.gz";
      r2 = "1q/j3/SHA256E-s2029241551--4ed6cb901b338475b3c14bfa39e6f2b00815eea0c2e34780ce1c50817057e939.gz/SHA256E-s2029241551--4ed6cb901b338475b3c14bfa39e6f2b00815eea0c2e34780ce1c50817057e939.gz";
    }

    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "wF/QG/SHA256E-s1996619623--897ac4e2c0329efccb399a3adbce7475ab71bd195dfa4643fd33316ccbb99791.gz/SHA256E-s1996619623--897ac4e2c0329efccb399a3adbce7475ab71bd195dfa4643fd33316ccbb99791.gz";
      r2 = "KM/ZQ/SHA256E-s2032367677--4030a29fc4098a7cb19c30c55f57d0d52ad2f0350eb1c845cd7a7eba4fe4418a.gz/SHA256E-s2032367677--4030a29fc4098a7cb19c30c55f57d0d52ad2f0350eb1c845cd7a7eba4fe4418a.gz";
    }

    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "7m/z6/SHA256E-s2017799630--fd07dc376065d65720e2eded7b955084cfb0c1b63d8fde59d8e6fb39ffa4ae40.gz/SHA256E-s2017799630--fd07dc376065d65720e2eded7b955084cfb0c1b63d8fde59d8e6fb39ffa4ae40.gz";
      r2 = "G2/2G/SHA256E-s2050289286--9b704a273a4dc321214694ef0d94a78a74dfaa7f8a6e4e2fb1d778e8d887e051.gz/SHA256E-s2050289286--9b704a273a4dc321214694ef0d94a78a74dfaa7f8a6e4e2fb1d778e8d887e051.gz";
    }

    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "Qv/9p/SHA256E-s1871933281--53c3db2697d5f7ec3fd3fcfeabfd11c4c97ca880665fda373a8df5251e73df30.gz/SHA256E-s1871933281--53c3db2697d5f7ec3fd3fcfeabfd11c4c97ca880665fda373a8df5251e73df30.gz";
      r2 = "mQ/57/SHA256E-s1913627402--df17148d315d2dbe2b67c23c1a6f99cfc58c27c6c3c231bac439493b42ae9ffc.gz/SHA256E-s1913627402--df17148d315d2dbe2b67c23c1a6f99cfc58c27c6c3c231bac439493b42ae9ffc.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "qV/1p/SHA256E-s615479186--a7e99a5e1c43ce1e4e09b69c3cac0c73a6cc6e950e0700509227ce60461f9a16.gz/SHA256E-s615479186--a7e99a5e1c43ce1e4e09b69c3cac0c73a6cc6e950e0700509227ce60461f9a16.gz";
      r2 = "x7/q5/SHA256E-s619711636--a1a18eff9588a605d3f7e2c2aa458abba2e2b60754773183309c900f2124bdcd.gz/SHA256E-s619711636--a1a18eff9588a605d3f7e2c2aa458abba2e2b60754773183309c900f2124bdcd.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "9Z/57/SHA256E-s618846701--3532743a8025d88d65975dc73fd27decfafac3bf1a952de14778dea19e94d849.gz/SHA256E-s618846701--3532743a8025d88d65975dc73fd27decfafac3bf1a952de14778dea19e94d849.gz";
      r2 = "PQ/JQ/SHA256E-s627147427--1cb0fbbc990609d9e71028291f0f57af7cf66a764bd6b9fa259aeff16c979719.gz/SHA256E-s627147427--1cb0fbbc990609d9e71028291f0f57af7cf66a764bd6b9fa259aeff16c979719.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "x7/Qg/SHA256E-s616040663--1b09f8792de6e18d82d45c7ad3bb21d7df3d4ed21547c577596ac551bf9e5967.gz/SHA256E-s616040663--1b09f8792de6e18d82d45c7ad3bb21d7df3d4ed21547c577596ac551bf9e5967.gz";
      r2 = "mG/M0/SHA256E-s622955863--bb520a2350ecb2404bcfc2ca5a8aa6444030080b8e19312ec14b7b0b1cefab84.gz/SHA256E-s622955863--bb520a2350ecb2404bcfc2ca5a8aa6444030080b8e19312ec14b7b0b1cefab84.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Fm/5q/SHA256E-s662856924--77931b47cc280156bd1507cde8dbe17c0426018182d6d2b31425fd446733b598.gz/SHA256E-s662856924--77931b47cc280156bd1507cde8dbe17c0426018182d6d2b31425fd446733b598.gz";
      r2 = "zx/X2/SHA256E-s674726653--c01f9f5fcf19e991bb7b1810f44ddf5d83ba062b3c8ac18ae4925e68bd293767.gz/SHA256E-s674726653--c01f9f5fcf19e991bb7b1810f44ddf5d83ba062b3c8ac18ae4925e68bd293767.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE21";
    capture = TwistV2HR;
  }
