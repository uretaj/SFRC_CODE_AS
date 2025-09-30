with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "V2/8G/SHA256E-s5416352359--995c89be335aa64bfa373c7f5aa12c7f16cc451d2a11cf86df786d91c9932347.gz/SHA256E-s5416352359--995c89be335aa64bfa373c7f5aa12c7f16cc451d2a11cf86df786d91c9932347.gz";
      r2 = "jQ/Zj/SHA256E-s5506592043--42e85dfe028f764c3d3af7c6d148e3e2a2bed99ee4330bc96c718355abf128b7.gz/SHA256E-s5506592043--42e85dfe028f764c3d3af7c6d148e3e2a2bed99ee4330bc96c718355abf128b7.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "XZ/z7/SHA256E-s5394976056--04f4a72db5494aa744b4015b1c55a8ba89994a39d489a244eaafde2b9fc9960f.gz/SHA256E-s5394976056--04f4a72db5494aa744b4015b1c55a8ba89994a39d489a244eaafde2b9fc9960f.gz";
      r2 = "17/f9/SHA256E-s5459931490--6596dab38423650443d13a1349e03de1d887d8a434172203b29601916ca2779b.gz/SHA256E-s5459931490--6596dab38423650443d13a1349e03de1d887d8a434172203b29601916ca2779b.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "QG/ZF/SHA256E-s5376925068--c256764bdf7219e91575db4b78d29e59a3924224437a02eab85b391822461e79.gz/SHA256E-s5376925068--c256764bdf7219e91575db4b78d29e59a3924224437a02eab85b391822461e79.gz";
      r2 = "qZ/29/SHA256E-s5427893259--0000c1e5f4ada75d29575e31e87199302d599ec3fda12867fc50cdbbe512fe99.gz/SHA256E-s5427893259--0000c1e5f4ada75d29575e31e87199302d599ec3fda12867fc50cdbbe512fe99.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "k2/XK/SHA256E-s5357304028--1592bc69a2c7a433a97479d79d506c3ae8546cd9ddc1158f006d978960a7c520.gz/SHA256E-s5357304028--1592bc69a2c7a433a97479d79d506c3ae8546cd9ddc1158f006d978960a7c520.gz";
      r2 = "mZ/pv/SHA256E-s5406637583--482ad3ee6a1242c6977f4361a8ebfb4a5705aab5e5833608ad3a8f0258cb722f.gz/SHA256E-s5406637583--482ad3ee6a1242c6977f4361a8ebfb4a5705aab5e5833608ad3a8f0258cb722f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "M3/K7/SHA256E-s678776175--6ec6ec945e1dfa3d76484c6cc724b3cb0cea673d09a7b3b16ca1f2f9f6e79ef4.gz/SHA256E-s678776175--6ec6ec945e1dfa3d76484c6cc724b3cb0cea673d09a7b3b16ca1f2f9f6e79ef4.gz";
      r2 = "J8/mv/SHA256E-s685756434--70c868ac647c8d2600222ca162a79aa346934dc15bbb8bce14767c8c615014ed.gz/SHA256E-s685756434--70c868ac647c8d2600222ca162a79aa346934dc15bbb8bce14767c8c615014ed.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Qw/w5/SHA256E-s684287713--8c9307a49f8fde3a3b57c1f8e2077f45c5fec85785961bde12dd9973b2c63a0c.gz/SHA256E-s684287713--8c9307a49f8fde3a3b57c1f8e2077f45c5fec85785961bde12dd9973b2c63a0c.gz";
      r2 = "W7/Q3/SHA256E-s696030006--a5c23ef5e6f5c275c476990b14a4f0161a7ce24377d1d9517b3c38f6b57b1599.gz/SHA256E-s696030006--a5c23ef5e6f5c275c476990b14a4f0161a7ce24377d1d9517b3c38f6b57b1599.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "66/8Z/SHA256E-s677005212--464049ff950384a7660ba55f17a714dfd7e2ffb83dcc0905b20be007879c66b2.gz/SHA256E-s677005212--464049ff950384a7660ba55f17a714dfd7e2ffb83dcc0905b20be007879c66b2.gz";
      r2 = "QV/fq/SHA256E-s686579035--019a79b54292b47cb3600a1af9886855de0ff2e5baac6c32d17179a1618c13eb.gz/SHA256E-s686579035--019a79b54292b47cb3600a1af9886855de0ff2e5baac6c32d17179a1618c13eb.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "99/9k/SHA256E-s724866391--e407a2f1886fe00a27b9b092f064ab60ddcb6e2e1fe29dbe650f161299caa533.gz/SHA256E-s724866391--e407a2f1886fe00a27b9b092f064ab60ddcb6e2e1fe29dbe650f161299caa533.gz";
      r2 = "JQ/28/SHA256E-s740597104--f014c18c56581d691311758388d2ef3fd2412fa7176c312974bdd49a6565a3f4.gz/SHA256E-s740597104--f014c18c56581d691311758388d2ef3fd2412fa7176c312974bdd49a6565a3f4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0116";
    typeHla = true;
    capture = TwistV2HR;
  }
