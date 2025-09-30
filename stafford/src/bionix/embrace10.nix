with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "11MP";
      class = "tumours";
      pdx = false;
      r1 = "Vp/f5/SHA256E-s1350105385--07eeac35109812a18ee1c29886eb8fc94855fa81d43ca08f795a111f0221d557.gz/SHA256E-s1350105385--07eeac35109812a18ee1c29886eb8fc94855fa81d43ca08f795a111f0221d557.gz";
      r2 = "jx/j7/SHA256E-s1367284255--ac5c53379a72072d0dc137a6456816f68f57a11b26e47302d9a0346f337f6191.gz/SHA256E-s1367284255--ac5c53379a72072d0dc137a6456816f68f57a11b26e47302d9a0346f337f6191.gz";
    }

    {
      site = "11MP";
      class = "tumours";
      pdx = false;
      r1 = "wQ/9v/SHA256E-s1348112402--c77669dc73ab4b8ee8840f9c25f4fba3bcf348af3c4c23c45561290bfe216ad6.gz/SHA256E-s1348112402--c77669dc73ab4b8ee8840f9c25f4fba3bcf348af3c4c23c45561290bfe216ad6.gz";
      r2 = "02/FK/SHA256E-s1371765862--12f787f8198cbaf3a7254304155913c5a6ee7a7afb5dcfffa4340d6babcab133.gz/SHA256E-s1371765862--12f787f8198cbaf3a7254304155913c5a6ee7a7afb5dcfffa4340d6babcab133.gz";
    }

    {
      site = "11MP";
      class = "tumours";
      pdx = false;
      r1 = "g8/6V/SHA256E-s1354704667--bf86ec38797c2dd592049c49991d5e43531ca966b8ab1aee784b453ac1771c71.gz/SHA256E-s1354704667--bf86ec38797c2dd592049c49991d5e43531ca966b8ab1aee784b453ac1771c71.gz";
      r2 = "2F/05/SHA256E-s1376322028--eab12a9419038563d7ea51e4fa544d0475e95a9c6f683fd0efcce4a7850493fe.gz/SHA256E-s1376322028--eab12a9419038563d7ea51e4fa544d0475e95a9c6f683fd0efcce4a7850493fe.gz";
    }

    {
      site = "11MP";
      class = "tumours";
      pdx = false;
      r1 = "vw/8K/SHA256E-s1295664397--a5df8cc771335ebdf82f2f36de5fa2bb6ae87747684172a0ab882292ea8fbe35.gz/SHA256E-s1295664397--a5df8cc771335ebdf82f2f36de5fa2bb6ae87747684172a0ab882292ea8fbe35.gz";
      r2 = "81/pM/SHA256E-s1324014160--636f1c74ebe05b6b12ca49bfd7d8fff0de547492d74da1adf89f963a5d3f3d65.gz/SHA256E-s1324014160--636f1c74ebe05b6b12ca49bfd7d8fff0de547492d74da1adf89f963a5d3f3d65.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "5Z/pq/SHA256E-s746322806--5ccebb82bfeadede0414bbd658db8014aa68904487041bbafde8fb0e86dcbba3.gz/SHA256E-s746322806--5ccebb82bfeadede0414bbd658db8014aa68904487041bbafde8fb0e86dcbba3.gz";
      r2 = "qM/J1/SHA256E-s748653880--3d3312d7e2b3d3d2ada5ae0feb8c8c0396388cc111c4a5256c4e98fcb57e2752.gz/SHA256E-s748653880--3d3312d7e2b3d3d2ada5ae0feb8c8c0396388cc111c4a5256c4e98fcb57e2752.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "fj/K1/SHA256E-s750123408--16f5514f46bd2a10827df4a303001cfc920549c4d1f9dda79233ed4a57a67764.gz/SHA256E-s750123408--16f5514f46bd2a10827df4a303001cfc920549c4d1f9dda79233ed4a57a67764.gz";
      r2 = "3g/03/SHA256E-s757421331--05c0148d2841d85d5a1ec425766e4232208d6db88d4b99768ff1137d95aa3654.gz/SHA256E-s757421331--05c0148d2841d85d5a1ec425766e4232208d6db88d4b99768ff1137d95aa3654.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "vp/2w/SHA256E-s740698926--70493b4170ea746029677c2fee5f64f593ef765e61ff5d205c8a3de0b7312c86.gz/SHA256E-s740698926--70493b4170ea746029677c2fee5f64f593ef765e61ff5d205c8a3de0b7312c86.gz";
      r2 = "0j/j0/SHA256E-s745659984--e3abbf8d49e35741073d12eed9ec73ec23984825e146b767b8558e49441bcaf2.gz/SHA256E-s745659984--e3abbf8d49e35741073d12eed9ec73ec23984825e146b767b8558e49441bcaf2.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "KZ/71/SHA256E-s780230854--6dda9107a0f45e06e509bf7151f3e5b47e7049d6e0ac9bd3e4c5100e74a69014.gz/SHA256E-s780230854--6dda9107a0f45e06e509bf7151f3e5b47e7049d6e0ac9bd3e4c5100e74a69014.gz";
      r2 = "9W/2F/SHA256E-s790712062--058a09805e0b81ec6660dd1b0ad625a4e60cfef9eb9851a318de7447e1e7377b.gz/SHA256E-s790712062--058a09805e0b81ec6660dd1b0ad625a4e60cfef9eb9851a318de7447e1e7377b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE10";
    capture = TwistV2HR;
  }
