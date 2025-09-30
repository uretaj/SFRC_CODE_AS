with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "7g/5q/SHA256E-s2091952277--8cb5c500cefd4aafdfc115086ccada452067dd04caefd10869a1d15383299790.gz/SHA256E-s2091952277--8cb5c500cefd4aafdfc115086ccada452067dd04caefd10869a1d15383299790.gz";
      r2 = "72/fZ/SHA256E-s2133186020--b9cf979519e5bf6fdf7a492f3c08f100b8cef884d0e83f19e930121b5c699169.gz/SHA256E-s2133186020--b9cf979519e5bf6fdf7a492f3c08f100b8cef884d0e83f19e930121b5c699169.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "V0/xx/SHA256E-s2095598733--04cf28d1e21f51b446fe9bbfdf06ff56dcb74bea744c2d0b28552d0cc1234320.gz/SHA256E-s2095598733--04cf28d1e21f51b446fe9bbfdf06ff56dcb74bea744c2d0b28552d0cc1234320.gz";
      r2 = "pm/XV/SHA256E-s2127031960--7e6362f5df256a615aaa9eb19cf92da18665fccd3fdaa600ad9c2d9478a20f8b.gz/SHA256E-s2127031960--7e6362f5df256a615aaa9eb19cf92da18665fccd3fdaa600ad9c2d9478a20f8b.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "vk/Qk/SHA256E-s2105036302--7010bf41a4e77fd90cacc68d65dfc9c53cce00cea471eda5c9fb8d7130fcf27d.gz/SHA256E-s2105036302--7010bf41a4e77fd90cacc68d65dfc9c53cce00cea471eda5c9fb8d7130fcf27d.gz";
      r2 = "q8/pP/SHA256E-s2130978704--460bc1dbde4f04af72127bdf236d426164bf82d776257f089d8a2082cda8560a.gz/SHA256E-s2130978704--460bc1dbde4f04af72127bdf236d426164bf82d776257f089d8a2082cda8560a.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "M2/jK/SHA256E-s2089138697--c8399f8cf8a8268c8de0faca5a2e3d1dbdf4ea3d670694e077b31b7183323262.gz/SHA256E-s2089138697--c8399f8cf8a8268c8de0faca5a2e3d1dbdf4ea3d670694e077b31b7183323262.gz";
      r2 = "9M/3q/SHA256E-s2114649924--42c83c1b5b75c9d454aa55b845bb99f42938b82183984e359bdd51fa5dbbce33.gz/SHA256E-s2114649924--42c83c1b5b75c9d454aa55b845bb99f42938b82183984e359bdd51fa5dbbce33.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6k/f3/SHA256E-s1087236954--3ccfb6ca9d031580ac181a0fb4b0fa9425eccdcd543fe87eeb3aebaaae808161.gz/SHA256E-s1087236954--3ccfb6ca9d031580ac181a0fb4b0fa9425eccdcd543fe87eeb3aebaaae808161.gz";
      r2 = "f5/wm/SHA256E-s1085011848--a9392b0d1e2e7925e79c259134494b9cc2b5fd1d039a0fa8d71cce3fe34f2a7a.gz/SHA256E-s1085011848--a9392b0d1e2e7925e79c259134494b9cc2b5fd1d039a0fa8d71cce3fe34f2a7a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pj/33/SHA256E-s1097505138--c0489f6af4a727cbae90b805aa0660f25f3b23d5f3250656ba3fa7251a4c2c60.gz/SHA256E-s1097505138--c0489f6af4a727cbae90b805aa0660f25f3b23d5f3250656ba3fa7251a4c2c60.gz";
      r2 = "z0/qm/SHA256E-s1093473050--c1631e1fdd82317cc66cce47c6c88d712c95236429370e4249df1de4a679cce2.gz/SHA256E-s1093473050--c1631e1fdd82317cc66cce47c6c88d712c95236429370e4249df1de4a679cce2.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Wq/jP/SHA256E-s1093532803--cbdebdf35cfa5f2e3912ceda45b126583cbe0d1dadd558e4d309e2a969c14017.gz/SHA256E-s1093532803--cbdebdf35cfa5f2e3912ceda45b126583cbe0d1dadd558e4d309e2a969c14017.gz";
      r2 = "Xx/xG/SHA256E-s1084958443--71f629b8618de148ab52d2ab2af160ee53109defd79b23a69d3e3dbea74b8578.gz/SHA256E-s1084958443--71f629b8618de148ab52d2ab2af160ee53109defd79b23a69d3e3dbea74b8578.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0008";
    typeHla = true;
    capture = TwistV2HR;
  }
