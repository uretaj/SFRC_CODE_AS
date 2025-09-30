with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "46/Vj/SHA256E-s17400012032--0c3fdd60c84d2e56009a6ae028e1a2dd75eeb5833b7c77cc19733da003d596c3.gz/SHA256E-s17400012032--0c3fdd60c84d2e56009a6ae028e1a2dd75eeb5833b7c77cc19733da003d596c3.gz";
      r2 = "mW/6W/SHA256E-s17479410033--1fa83ef4c137c7aae9a75424cb573cc17ea83e49e65b12c7cafe0d0a56196682.gz/SHA256E-s17479410033--1fa83ef4c137c7aae9a75424cb573cc17ea83e49e65b12c7cafe0d0a56196682.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "w4/qk/SHA256E-s5127479197--6357363a684b2af8fb3a214f2dab8e3905f453abfe6f00f1cfd5031783f70425.gz/SHA256E-s5127479197--6357363a684b2af8fb3a214f2dab8e3905f453abfe6f00f1cfd5031783f70425.gz";
      r2 = "Wv/V7/SHA256E-s5489904373--806e391d9de0575c96f292e5ee152e8596eeb17f07b383b1185c84edb7f2facb.gz/SHA256E-s5489904373--806e391d9de0575c96f292e5ee152e8596eeb17f07b383b1185c84edb7f2facb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0057";
  }
