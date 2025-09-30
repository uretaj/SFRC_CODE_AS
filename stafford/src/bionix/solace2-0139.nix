with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "q6/VG/SHA256E-s887018990--5ae1bf6d8ed57871fd51e42ba1b1c2a45d217d189f39a5256d28b4765fdfea18.gz/SHA256E-s887018990--5ae1bf6d8ed57871fd51e42ba1b1c2a45d217d189f39a5256d28b4765fdfea18.gz";
      r2 = "Wz/V5/SHA256E-s886179885--2af86eb72be1e28e524edd2d548dcfda982fb13b1c7617d2ca99a2054de960c9.gz/SHA256E-s886179885--2af86eb72be1e28e524edd2d548dcfda982fb13b1c7617d2ca99a2054de960c9.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "fp/VV/SHA256E-s916324013--05e5c512c0ae3cb6df42f224654586079a7ac5e84e66e5daa984e603026edb19.gz/SHA256E-s916324013--05e5c512c0ae3cb6df42f224654586079a7ac5e84e66e5daa984e603026edb19.gz";
      r2 = "Zm/55/SHA256E-s917802414--82cc9aad4ee90d67611b31fbc4d36028b1dbd647dfab5dfbfb5484aa2821e787.gz/SHA256E-s917802414--82cc9aad4ee90d67611b31fbc4d36028b1dbd647dfab5dfbfb5484aa2821e787.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "km/15/SHA256E-s923415783--a7b678d8760bdc0300be108783d8abb1052f2a93282e9eca62a3a31cf9823a70.gz/SHA256E-s923415783--a7b678d8760bdc0300be108783d8abb1052f2a93282e9eca62a3a31cf9823a70.gz";
      r2 = "8K/8X/SHA256E-s926174448--9e5cfa0ddcffaaec3b6d5909c46cd3e9b3173cd450b3b0bb2b8f4ffae48eab76.gz/SHA256E-s926174448--9e5cfa0ddcffaaec3b6d5909c46cd3e9b3173cd450b3b0bb2b8f4ffae48eab76.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "3M/G6/SHA256E-s940592830--6ae303ab6eebe922b937c27dbb236a376c8fecbd6703ec25b6b97d2921092dd9.gz/SHA256E-s940592830--6ae303ab6eebe922b937c27dbb236a376c8fecbd6703ec25b6b97d2921092dd9.gz";
      r2 = "K1/9x/SHA256E-s942574148--213bda6a3390b7bd504bc09af471758d5ce7646350fb9b91a02011e31362c73b.gz/SHA256E-s942574148--213bda6a3390b7bd504bc09af471758d5ce7646350fb9b91a02011e31362c73b.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "7M/wk/SHA256E-s950854601--549869af2f1fba5f2c8dfcde15c6ea245928bd49b41a046cf16583572a0df3d0.gz/SHA256E-s950854601--549869af2f1fba5f2c8dfcde15c6ea245928bd49b41a046cf16583572a0df3d0.gz";
      r2 = "zq/Vk/SHA256E-s953572542--8690e165e38ddf95c4ac2beaf8e5934666058bb8e3fe65117a0bfbf00ce0d649.gz/SHA256E-s953572542--8690e165e38ddf95c4ac2beaf8e5934666058bb8e3fe65117a0bfbf00ce0d649.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "fQ/qM/SHA256E-s922026862--d8d432c6efc5076b19483725f652f88e6a8a84128476ace3bf1105c0c953cf5f.gz/SHA256E-s922026862--d8d432c6efc5076b19483725f652f88e6a8a84128476ace3bf1105c0c953cf5f.gz";
      r2 = "fx/P8/SHA256E-s920978983--2cacd4b638721df2b50edffc1f28f4e3929b7dc55017b99cbc6ea9b83b7199a4.gz/SHA256E-s920978983--2cacd4b638721df2b50edffc1f28f4e3929b7dc55017b99cbc6ea9b83b7199a4.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "Mj/ww/SHA256E-s940052463--f5ab7c8a425c9937c35d3aa3b928de66860ba90997f010c25aa60a5c50badf56.gz/SHA256E-s940052463--f5ab7c8a425c9937c35d3aa3b928de66860ba90997f010c25aa60a5c50badf56.gz";
      r2 = "z5/KG/SHA256E-s942156613--581301d7246f43a5867011257c302a721cc68a5dda22f1d47aef1543ba93803c.gz/SHA256E-s942156613--581301d7246f43a5867011257c302a721cc68a5dda22f1d47aef1543ba93803c.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "qm/zG/SHA256E-s907004929--45b34fca5c38ed1c68718d07a75450d021b18ca73e337c4e315b928382ce3525.gz/SHA256E-s907004929--45b34fca5c38ed1c68718d07a75450d021b18ca73e337c4e315b928382ce3525.gz";
      r2 = "j5/w4/SHA256E-s904836715--47855b91e8a06f803aed6ff0a8ca237b32b3f2acb8ae1e2275b889d82629b440.gz/SHA256E-s904836715--47855b91e8a06f803aed6ff0a8ca237b32b3f2acb8ae1e2275b889d82629b440.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "7G/FG/SHA256E-s723567498--e920f4da141d056e2608953e584f6c10c854b45b792c493e439203fbb322739e.gz/SHA256E-s723567498--e920f4da141d056e2608953e584f6c10c854b45b792c493e439203fbb322739e.gz";
      r2 = "GF/zK/SHA256E-s729600791--3232583da3544a953d2e86d63c0e31b387da763792486ad6f43bb0832e4efcf2.gz/SHA256E-s729600791--3232583da3544a953d2e86d63c0e31b387da763792486ad6f43bb0832e4efcf2.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "qk/WG/SHA256E-s725807751--67f81c7c4b134bfd545bca88cc041f83a6c3c1809425680afc0a88a39deb07c8.gz/SHA256E-s725807751--67f81c7c4b134bfd545bca88cc041f83a6c3c1809425680afc0a88a39deb07c8.gz";
      r2 = "Wm/P1/SHA256E-s730236756--64927ccf85cdcf60c0c2433d40260042c1a47665bb386eed82da614161d511e4.gz/SHA256E-s730236756--64927ccf85cdcf60c0c2433d40260042c1a47665bb386eed82da614161d511e4.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2J/4v/SHA256E-s721365063--6fb336cc189a8396392f694bdd5f6cf82d6d0349e872d57bed502f0de5ac2b43.gz/SHA256E-s721365063--6fb336cc189a8396392f694bdd5f6cf82d6d0349e872d57bed502f0de5ac2b43.gz";
      r2 = "Z6/Ww/SHA256E-s722682898--40e07e9644a66d69b0a030b8f6f7c8a82bfa14c6ca378a4827b924b2e9b6c999.gz/SHA256E-s722682898--40e07e9644a66d69b0a030b8f6f7c8a82bfa14c6ca378a4827b924b2e9b6c999.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0139";
    typeHla = true;
    capture = TwistV2HR;
  }
