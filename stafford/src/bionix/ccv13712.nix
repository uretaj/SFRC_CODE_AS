with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "f6/V4/SHA256E-s6873887348--511e3ac574f263fdc5e6a79308b38a63d7eb3374dd727a88c221da5d9ce222ee.gz/SHA256E-s6873887348--511e3ac574f263fdc5e6a79308b38a63d7eb3374dd727a88c221da5d9ce222ee.gz";
      r2 = "gJ/KV/SHA256E-s6959111064--8dc902b985b19c74645ed118853cb0b128002dd465f4310409a8ec8ade2540aa.gz/SHA256E-s6959111064--8dc902b985b19c74645ed118853cb0b128002dd465f4310409a8ec8ade2540aa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV13712";
  }
