with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "WW/xj/SHA256E-s344579915--aca1291e2fb793a24af537687a7c1a01dfa8cd2f15e5897a5cc3f0cf77d2c2b9.gz/SHA256E-s344579915--aca1291e2fb793a24af537687a7c1a01dfa8cd2f15e5897a5cc3f0cf77d2c2b9.gz";
      r2 = "Mw/9v/SHA256E-s368905953--ece915bebe46a14da0c53c6ea86c665a672e7d4e3f1c4a7486ad58bd7683c7cc.gz/SHA256E-s368905953--ece915bebe46a14da0c53c6ea86c665a672e7d4e3f1c4a7486ad58bd7683c7cc.gz";
    }

    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "W0/f6/SHA256E-s354051953--0f7a623a9cc0bb49953eb3609dc9e01158c47123ab4b1fa8d50ed8fd1fdc3d68.gz/SHA256E-s354051953--0f7a623a9cc0bb49953eb3609dc9e01158c47123ab4b1fa8d50ed8fd1fdc3d68.gz";
      r2 = "z9/x8/SHA256E-s380027061--a9a41baaf65a4edffbe59061853149836bba40c74c5a71f9b35c719fcdec5aa7.gz/SHA256E-s380027061--a9a41baaf65a4edffbe59061853149836bba40c74c5a71f9b35c719fcdec5aa7.gz";
    }

    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "fM/F8/SHA256E-s361980443--e80db811bce687186bd7d6e180072fa442550a764e9e00a163fd9bdde4a04d54.gz/SHA256E-s361980443--e80db811bce687186bd7d6e180072fa442550a764e9e00a163fd9bdde4a04d54.gz";
      r2 = "gv/FM/SHA256E-s388584021--a074d06f8808a13da07cb7217c0306cc9187c4ddc26effe954512ac6acd21c81.gz/SHA256E-s388584021--a074d06f8808a13da07cb7217c0306cc9187c4ddc26effe954512ac6acd21c81.gz";
    }

    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "25/Mj/SHA256E-s363873113--2b479ebcccd32033e3aa3dc03d8ec689dc5f807d4a660e09b7fd02aca44d533c.gz/SHA256E-s363873113--2b479ebcccd32033e3aa3dc03d8ec689dc5f807d4a660e09b7fd02aca44d533c.gz";
      r2 = "fz/69/SHA256E-s390071064--33ee33b5c062d3b9c3f791b43b8c7ab480318887cc2fa4fc345c46923a155f76.gz/SHA256E-s390071064--33ee33b5c062d3b9c3f791b43b8c7ab480318887cc2fa4fc345c46923a155f76.gz";
    }

    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "9X/8v/SHA256E-s367495511--68f9f5f95139a030f52922e200c6c526bc3e3947c6709fa6349a75088ec7f6d5.gz/SHA256E-s367495511--68f9f5f95139a030f52922e200c6c526bc3e3947c6709fa6349a75088ec7f6d5.gz";
      r2 = "Fz/Jm/SHA256E-s394388746--3ff63c5d3b1dd8288bc94ff7f6fd67c9e7a8c688fbbad3348bdbfb1cbfe2bb18.gz/SHA256E-s394388746--3ff63c5d3b1dd8288bc94ff7f6fd67c9e7a8c688fbbad3348bdbfb1cbfe2bb18.gz";
    }

    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "WV/QV/SHA256E-s378366042--70b7b81a6816574949d6d4b291eee73f9aa0d33de24ed921b1868495abc6e494.gz/SHA256E-s378366042--70b7b81a6816574949d6d4b291eee73f9aa0d33de24ed921b1868495abc6e494.gz";
      r2 = "Mm/39/SHA256E-s404414369--6fd0be477141501ce86ad736614c107fc917ea7aae304aa21e9dddba00b2a995.gz/SHA256E-s404414369--6fd0be477141501ce86ad736614c107fc917ea7aae304aa21e9dddba00b2a995.gz";
    }

    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "qv/71/SHA256E-s361279408--d2a38a08925fdd3123a218a83b1d8830b8b5753a5691dc020ea6502e46d748da.gz/SHA256E-s361279408--d2a38a08925fdd3123a218a83b1d8830b8b5753a5691dc020ea6502e46d748da.gz";
      r2 = "jQ/pv/SHA256E-s387818948--d47e6c1b42268c6e118b7e64c2f0dd09de094b4e9e6796d67ab1315ed84fc745.gz/SHA256E-s387818948--d47e6c1b42268c6e118b7e64c2f0dd09de094b4e9e6796d67ab1315ed84fc745.gz";
    }

    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "MW/f1/SHA256E-s370102382--93524637abe248aa9a3fdfcb61b6af40d637e7f02c4d623200f7fc0b7b8f2f89.gz/SHA256E-s370102382--93524637abe248aa9a3fdfcb61b6af40d637e7f02c4d623200f7fc0b7b8f2f89.gz";
      r2 = "6g/MG/SHA256E-s395006771--a3539c5f429da17c8905f1bb692d9dfe9f97a80d6274077d235def0274132150.gz/SHA256E-s395006771--a3539c5f429da17c8905f1bb692d9dfe9f97a80d6274077d235def0274132150.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "mp/6w/SHA256E-s1376551634--418a49d0a588dc8053d116e5d55c1f2b6a8dd4946cdd7ddcae63878f4b6e61bd.gz/SHA256E-s1376551634--418a49d0a588dc8053d116e5d55c1f2b6a8dd4946cdd7ddcae63878f4b6e61bd.gz";
      r2 = "21/qZ/SHA256E-s1387401825--c09de1b2dc0fb772beaa5e14ed18bf7d3204e8f98d9d341f8115eb939edd4179.gz/SHA256E-s1387401825--c09de1b2dc0fb772beaa5e14ed18bf7d3204e8f98d9d341f8115eb939edd4179.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "xg/8P/SHA256E-s1381925271--0102cdaa3405f0615144366bc745984a9737737617fd42ae6c5e3f9139a83fa1.gz/SHA256E-s1381925271--0102cdaa3405f0615144366bc745984a9737737617fd42ae6c5e3f9139a83fa1.gz";
      r2 = "VJ/J6/SHA256E-s1390003590--c828cf5af3b3f5ceb1f24149dcbdf1fa19aceba066907fee836090b3f34b2b83.gz/SHA256E-s1390003590--c828cf5af3b3f5ceb1f24149dcbdf1fa19aceba066907fee836090b3f34b2b83.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jG/z1/SHA256E-s1378896244--7b895e6e5bc191d316999fbef56f3217d24fae43f870c4112ff52afdad69e6e3.gz/SHA256E-s1378896244--7b895e6e5bc191d316999fbef56f3217d24fae43f870c4112ff52afdad69e6e3.gz";
      r2 = "z0/fV/SHA256E-s1380679871--00f936ef0cf8afdb0dbd03f5ab5a31ce25261e290cf1d6a0b9e82e94bfc06f33.gz/SHA256E-s1380679871--00f936ef0cf8afdb0dbd03f5ab5a31ce25261e290cf1d6a0b9e82e94bfc06f33.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0034";
    typeHla = true;
    capture = TwistV2HR;
  }
