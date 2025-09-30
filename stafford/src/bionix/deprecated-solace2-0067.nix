with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4E";
      class = "tumours";
      pdx = false;
      r1 = "jk/XG/SHA256E-s13051654903--ad891bd22f38bf9485598f79f57779f9e4bfa9c81afec5bab04fbfa5ade5d5d7.gz/SHA256E-s13051654903--ad891bd22f38bf9485598f79f57779f9e4bfa9c81afec5bab04fbfa5ade5d5d7.gz";
      r2 = "ZW/Xz/SHA256E-s13191574724--06279e6a727715843bc325b0bf4cc8b618b9ff4c60ac4b4c1b38cf3ab74bc331.gz/SHA256E-s13191574724--06279e6a727715843bc325b0bf4cc8b618b9ff4c60ac4b4c1b38cf3ab74bc331.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Vg/zg/SHA256E-s5147023506--1a88e1703d85bb1559b10eff2bbfa72facd1c0bd02833dc99382ff3b9807f7bf.gz/SHA256E-s5147023506--1a88e1703d85bb1559b10eff2bbfa72facd1c0bd02833dc99382ff3b9807f7bf.gz";
      r2 = "vm/Gq/SHA256E-s5258548126--a3c7539531617140bcd5c066e79037c17f6d50dff98511c523f2c7b5302e4c3a.gz/SHA256E-s5258548126--a3c7539531617140bcd5c066e79037c17f6d50dff98511c523f2c7b5302e4c3a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0067";
  }
