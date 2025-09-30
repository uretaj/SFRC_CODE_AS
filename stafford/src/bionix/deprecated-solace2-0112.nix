with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "mQ/61/SHA256E-s17539072919--ba06cd3427fe63eab84d4767afcf713074e927f58c1dbc678572e3ecad57683d.gz/SHA256E-s17539072919--ba06cd3427fe63eab84d4767afcf713074e927f58c1dbc678572e3ecad57683d.gz";
      r2 = "V2/PP/SHA256E-s18002524343--0e7e3741c94b7829ff1221f2ea7e27b67774360e5c35761cf81ee00f1a286d17.gz/SHA256E-s18002524343--0e7e3741c94b7829ff1221f2ea7e27b67774360e5c35761cf81ee00f1a286d17.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g6/WF/SHA256E-s5950001307--30f36dc62157d9f217c8c5b39dedd4a7b434a19c848ead166bafc0e3d55c723c.gz/SHA256E-s5950001307--30f36dc62157d9f217c8c5b39dedd4a7b434a19c848ead166bafc0e3d55c723c.gz";
      r2 = "4M/48/SHA256E-s6267144407--e4ffc3dcc27e3f4bee1c44d7890f3014b7e411c74fa71a0157d69da85b4eebbd.gz/SHA256E-s6267144407--e4ffc3dcc27e3f4bee1c44d7890f3014b7e411c74fa71a0157d69da85b4eebbd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0112";
  }
