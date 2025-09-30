with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6Q/9J/SHA256E-s3845503721--88bb924fb4ac0be0dbead582adee1293a1056eb3bb99405220e62ec46a2e425f.gz/SHA256E-s3845503721--88bb924fb4ac0be0dbead582adee1293a1056eb3bb99405220e62ec46a2e425f.gz";
      r2 = "9M/1J/SHA256E-s3844279062--8d41fd16210fc10e5d68a1b4536fd1713d35a58de81ed61958f48cb0a7a7b02d.gz/SHA256E-s3844279062--8d41fd16210fc10e5d68a1b4536fd1713d35a58de81ed61958f48cb0a7a7b02d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV17750";
  }
