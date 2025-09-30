with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "W6/p9/SHA256E-s1018648129--dd940f88d61ae8648f1c2b8fbd7863c970bc446c8a6d8ca7f9ebdba3e66e2cec.gz/SHA256E-s1018648129--dd940f88d61ae8648f1c2b8fbd7863c970bc446c8a6d8ca7f9ebdba3e66e2cec.gz";
      r2 = "w5/kF/SHA256E-s1023121598--b5d595fde9ea29c5b3e6dcaeb9c2d2fbc5e8765ea065733f46e770c9a6d2cf20.gz/SHA256E-s1023121598--b5d595fde9ea29c5b3e6dcaeb9c2d2fbc5e8765ea065733f46e770c9a6d2cf20.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "vg/1Q/SHA256E-s1061392758--ce6657c22cd0e54884db8dcacb26357a29a5e2dbaad1bfa8902f8f4ab5cec71a.gz/SHA256E-s1061392758--ce6657c22cd0e54884db8dcacb26357a29a5e2dbaad1bfa8902f8f4ab5cec71a.gz";
      r2 = "mV/2g/SHA256E-s1068739559--ab57554885afbbb85b25f5db8129817a1a64ce45387c1a440fe3d5883206fba3.gz/SHA256E-s1068739559--ab57554885afbbb85b25f5db8129817a1a64ce45387c1a440fe3d5883206fba3.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "03/pW/SHA256E-s1059618948--26645690e84e0eb5dbbb9f7e55cd3979809d40f31c00e1204ea8cf9d18807bb6.gz/SHA256E-s1059618948--26645690e84e0eb5dbbb9f7e55cd3979809d40f31c00e1204ea8cf9d18807bb6.gz";
      r2 = "0m/m4/SHA256E-s1068305874--e98f9735e73c90797397e282e0e2f6a40896c6383010e6301b5cbe421f7885a0.gz/SHA256E-s1068305874--e98f9735e73c90797397e282e0e2f6a40896c6383010e6301b5cbe421f7885a0.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "q6/W4/SHA256E-s1068236128--28a369cac3f82491b915d58a846e254093b912138270a73cf464e83a7216462c.gz/SHA256E-s1068236128--28a369cac3f82491b915d58a846e254093b912138270a73cf464e83a7216462c.gz";
      r2 = "7f/Vw/SHA256E-s1076006721--c8ab2463536173a55799c21c3d55c2f7d415833f89a2dabe1d995b5154a98364.gz/SHA256E-s1076006721--c8ab2463536173a55799c21c3d55c2f7d415833f89a2dabe1d995b5154a98364.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "2z/Pj/SHA256E-s1099828689--b49227ac12f5a3885e353905e040e0bf651318ad1a410af3b8011d189f2ddddc.gz/SHA256E-s1099828689--b49227ac12f5a3885e353905e040e0bf651318ad1a410af3b8011d189f2ddddc.gz";
      r2 = "z1/96/SHA256E-s1108689691--b14be9f9a9bbc35e3942ee0b3659f2f6fd47fadda8a854825e64077f280c90f0.gz/SHA256E-s1108689691--b14be9f9a9bbc35e3942ee0b3659f2f6fd47fadda8a854825e64077f280c90f0.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Vf/p6/SHA256E-s1039637890--de3601843ef4cf5dabbc23fc4db387bd22bd06252053c94f3b37d234cb6cfb8b.gz/SHA256E-s1039637890--de3601843ef4cf5dabbc23fc4db387bd22bd06252053c94f3b37d234cb6cfb8b.gz";
      r2 = "vw/52/SHA256E-s1044042237--5896a066626982935df4d9458e0c0f328a39aa26162d3db440a1628566e1db9d.gz/SHA256E-s1044042237--5896a066626982935df4d9458e0c0f328a39aa26162d3db440a1628566e1db9d.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "7V/Fx/SHA256E-s1096884557--8ae07a67c3a82ef8351749917425362c73f8328b03aa2ed35ff11f09232a481a.gz/SHA256E-s1096884557--8ae07a67c3a82ef8351749917425362c73f8328b03aa2ed35ff11f09232a481a.gz";
      r2 = "mf/VP/SHA256E-s1105446942--29f3829c031ededbded396fb514624d1c4d230c596f36dde99afac331cb3f7ca.gz/SHA256E-s1105446942--29f3829c031ededbded396fb514624d1c4d230c596f36dde99afac331cb3f7ca.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "3V/Kg/SHA256E-s1016904090--6b80fa6f791b1b1d159e5d76f1e6fc04377988f9b31112d5046749676df2281b.gz/SHA256E-s1016904090--6b80fa6f791b1b1d159e5d76f1e6fc04377988f9b31112d5046749676df2281b.gz";
      r2 = "GM/4W/SHA256E-s1020057217--f972403906eae6eb07f6ce22be84c7aabccbf70fceb7b778a0224a1ebed0fc16.gz/SHA256E-s1020057217--f972403906eae6eb07f6ce22be84c7aabccbf70fceb7b778a0224a1ebed0fc16.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "JJ/7J/SHA256E-s620514013--ecfd1f2a1a9d509404fd433b3a5354f9f330a7a3fad603f55c747ea55b012579.gz/SHA256E-s620514013--ecfd1f2a1a9d509404fd433b3a5354f9f330a7a3fad603f55c747ea55b012579.gz";
      r2 = "gk/Z9/SHA256E-s626747464--bef2462d9b138aebac99ab144f77badc58eba1381d8a8c19717895dfd6f96968.gz/SHA256E-s626747464--bef2462d9b138aebac99ab144f77badc58eba1381d8a8c19717895dfd6f96968.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "8J/zz/SHA256E-s623572078--b7b77aca9fd4ad35ca7bd54a70a4f1e836345fd0ab45e5e49baf29b8744d2d7b.gz/SHA256E-s623572078--b7b77aca9fd4ad35ca7bd54a70a4f1e836345fd0ab45e5e49baf29b8744d2d7b.gz";
      r2 = "96/j4/SHA256E-s633923900--33c71a984355201b8eba08520bcb22500fda625a00ecf91026bede6acd1b1a87.gz/SHA256E-s633923900--33c71a984355201b8eba08520bcb22500fda625a00ecf91026bede6acd1b1a87.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Fx/fK/SHA256E-s616629404--df9f59cfe38b9b0682d4a66503d169b66dc1ddda0bae0308674889c85732ea12.gz/SHA256E-s616629404--df9f59cfe38b9b0682d4a66503d169b66dc1ddda0bae0308674889c85732ea12.gz";
      r2 = "Qg/f9/SHA256E-s625304190--89692b614ea37478026bf680b45b48058c4fd179c21e3324583a5e86cea02bd2.gz/SHA256E-s625304190--89692b614ea37478026bf680b45b48058c4fd179c21e3324583a5e86cea02bd2.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "38/5P/SHA256E-s664249630--6e0b502785a673c000b8258bac05cd1d6416b4ff21695d075806ab93b7d1f391.gz/SHA256E-s664249630--6e0b502785a673c000b8258bac05cd1d6416b4ff21695d075806ab93b7d1f391.gz";
      r2 = "vx/Xf/SHA256E-s678292940--206c2fa8878eaf60db5f9cee46f37c7b4f464621438dcf06bfae19cf7fb02fc4.gz/SHA256E-s678292940--206c2fa8878eaf60db5f9cee46f37c7b4f464621438dcf06bfae19cf7fb02fc4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE07";
    capture = TwistV2HR;
  }
