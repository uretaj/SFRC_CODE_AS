with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2J";
      class = "tumours";
      pdx = false;
      r1 = "v0/PM/SHA256E-s9092094970--b0d6a48d83b2723ca131ba801eb9dea17607aa8a5ce3b4596a64c31d92f1f6d4.gz/SHA256E-s9092094970--b0d6a48d83b2723ca131ba801eb9dea17607aa8a5ce3b4596a64c31d92f1f6d4.gz";
      r2 = "Zz/xM/SHA256E-s9078693224--b1bc05e1a8d4aab2a5f7fc19c2a18f646d38b1a61e82cd246be4cbf4a196ab6a.gz/SHA256E-s9078693224--b1bc05e1a8d4aab2a5f7fc19c2a18f646d38b1a61e82cd246be4cbf4a196ab6a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "x2/wm/SHA256E-s1341869160--46611fba643dad4d6d5c2b0bf85f0c3061656557e8ab2aaba3804351b7453e9c.gz/SHA256E-s1341869160--46611fba643dad4d6d5c2b0bf85f0c3061656557e8ab2aaba3804351b7453e9c.gz";
      r2 = "Mj/Gw/SHA256E-s1344611286--f71cd0d1c319d454ecb77b03882e1f4c0820ab2138f0c2405da5cc2a0c241451.gz/SHA256E-s1344611286--f71cd0d1c319d454ecb77b03882e1f4c0820ab2138f0c2405da5cc2a0c241451.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "qj/Wj/SHA256E-s1356016987--c7a99878c8db1b7eb4d7b337c06598fc831da6cc5b1ba06cb6144cc19bf6eb07.gz/SHA256E-s1356016987--c7a99878c8db1b7eb4d7b337c06598fc831da6cc5b1ba06cb6144cc19bf6eb07.gz";
      r2 = "Qx/0j/SHA256E-s1356710882--d93a2378998beeb3af8b7f6868e88415a767c4d505a3673e043798c908db7cd4.gz/SHA256E-s1356710882--d93a2378998beeb3af8b7f6868e88415a767c4d505a3673e043798c908db7cd4.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5g/Xf/SHA256E-s1357145013--4d546bf4d754439e6d07d09e679cd18cb38dd154b56ff050c177a88a09422e0e.gz/SHA256E-s1357145013--4d546bf4d754439e6d07d09e679cd18cb38dd154b56ff050c177a88a09422e0e.gz";
      r2 = "xW/Mm/SHA256E-s1352039867--d4e7a2705bf9b73c85c18ca55553f83248df51cd6e7afcc086e815d3c963b925.gz/SHA256E-s1352039867--d4e7a2705bf9b73c85c18ca55553f83248df51cd6e7afcc086e815d3c963b925.gz";
    }
    {
      site = "2J";
      class = "tumours";
      pdx = false;
      r1 = "Zx/px/SHA256E-s7398136671--fbcd9699ce760bb5f64d4e6122406daf5244097fc0da25702575dfc2eac088af.gz/SHA256E-s7398136671--fbcd9699ce760bb5f64d4e6122406daf5244097fc0da25702575dfc2eac088af.gz";
      r2 = "1q/8M/SHA256E-s7406829465--c994c4fb7b190a214fe22815bf2ea9cf9028e9f9fa5d866e1b63e836e3071037.gz/SHA256E-s7406829465--c994c4fb7b190a214fe22815bf2ea9cf9028e9f9fa5d866e1b63e836e3071037.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0074";
    typeHla = true;
    capture = TwistV2HR;
  }
