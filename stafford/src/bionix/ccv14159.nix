with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X5/1f/SHA256E-s2367059077--32c6b1ac6b11badc3d8e93479673bbb4eb976e62fc1bd0b3011c877adc348599.gz/SHA256E-s2367059077--32c6b1ac6b11badc3d8e93479673bbb4eb976e62fc1bd0b3011c877adc348599.gz";
      r2 = "58/QK/SHA256E-s2381474944--001f61e2854df471cbb023b4078275ee6a1a290aeaeda42c2cae0c7c3fc10e51.gz/SHA256E-s2381474944--001f61e2854df471cbb023b4078275ee6a1a290aeaeda42c2cae0c7c3fc10e51.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV14159";
  }
