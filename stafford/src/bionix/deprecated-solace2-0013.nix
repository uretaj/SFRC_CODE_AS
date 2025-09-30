with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "P4/qx/SHA256E-s15240310105--78d06fe2f40dc2ea560a0fcfa7de429edf167e5ddac540838374a1b45b1a5ef3.gz/SHA256E-s15240310105--78d06fe2f40dc2ea560a0fcfa7de429edf167e5ddac540838374a1b45b1a5ef3.gz";
      r2 = "x4/X6/SHA256E-s15771238331--8f200faaecb56d0534d85be76c1a3150aed2fdc396743dab07bfaf301fe0ff0a.gz/SHA256E-s15771238331--8f200faaecb56d0534d85be76c1a3150aed2fdc396743dab07bfaf301fe0ff0a.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "pM/0x/SHA256E-s7891303321--fd9b9447f9bb3165a5529c407b0ef2f4ccf890a14f1ff3afc704d7dd821f55d4.gz/SHA256E-s7891303321--fd9b9447f9bb3165a5529c407b0ef2f4ccf890a14f1ff3afc704d7dd821f55d4.gz";
      r2 = "7Q/85/SHA256E-s8339898948--2b422965c79d896b6e9fdb27bfa88107a6e884a08c6592295628955edb6bf345.gz/SHA256E-s8339898948--2b422965c79d896b6e9fdb27bfa88107a6e884a08c6592295628955edb6bf345.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0013";
  }
