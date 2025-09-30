with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "Block1.1";
      class = "tumours";
      pdx = false;
      r1 = "J5/vg/SHA256E-s15458706736--e0b191ae614558722cc5f0bf268aa1d8d69af5b1d329cfc3764e573837dc4d2d.gz/SHA256E-s15458706736--e0b191ae614558722cc5f0bf268aa1d8d69af5b1d329cfc3764e573837dc4d2d.gz";
      r2 = "z6/Pw/SHA256E-s16292166982--f30b4edcaba70b2636305e3fdb02c5f24c5c0106a4a7e4d3f642e8c9079714ca.gz/SHA256E-s16292166982--f30b4edcaba70b2636305e3fdb02c5f24c5c0106a4a7e4d3f642e8c9079714ca.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "1Z/wQ/SHA256E-s6418194954--a056ccd21c28ba77a4ef15ac6ed8eeaacfbec898a8354c394757dff2ef5c424d.gz/SHA256E-s6418194954--a056ccd21c28ba77a4ef15ac6ed8eeaacfbec898a8354c394757dff2ef5c424d.gz";
      r2 = "ZF/3p/SHA256E-s6906757302--b6cbbd77426586a6d9ee75e5c2e36ae78307f4f20c736f590ff63287446be2ef.gz/SHA256E-s6906757302--b6cbbd77426586a6d9ee75e5c2e36ae78307f4f20c736f590ff63287446be2ef.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0062";
  }
