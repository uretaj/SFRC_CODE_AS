with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "67/5P/SHA256E-s15684738795--35d9a670c2b2b3052e422646504a49c1556e18e57f357094f34629866c712525.gz/SHA256E-s15684738795--35d9a670c2b2b3052e422646504a49c1556e18e57f357094f34629866c712525.gz";
      r2 = "p5/fF/SHA256E-s15882562417--bc97bc53bf44e71e4951adeae39e337a15e339559f20b689a08229dd535a40ed.gz/SHA256E-s15882562417--bc97bc53bf44e71e4951adeae39e337a15e339559f20b689a08229dd535a40ed.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jk/0g/SHA256E-s5645372255--f8be5e0331484f6715b4e209528612ff2557ce61a8d0a7cf996bd5513d2edda8.gz/SHA256E-s5645372255--f8be5e0331484f6715b4e209528612ff2557ce61a8d0a7cf996bd5513d2edda8.gz";
      r2 = "Pq/gq/SHA256E-s5884827501--35eebc16288d4ae59ce30b3c43054b89eb94bd50d0522863d9f9f4bd53949b28.gz/SHA256E-s5884827501--35eebc16288d4ae59ce30b3c43054b89eb94bd50d0522863d9f9f4bd53949b28.gz";
    }
    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "jQ/xM/SHA256E-s13688956793--1336d815ddcb93c16e3c7bb0285c0b9c8cdf1cc482ce8305151a07634e22d281.gz/SHA256E-s13688956793--1336d815ddcb93c16e3c7bb0285c0b9c8cdf1cc482ce8305151a07634e22d281.gz";
      r2 = "55/MJ/SHA256E-s13725975671--d5ee5952b8b58e7b461abca7aadaeb077bb2b01ee93e714b4fc093028a9408aa.gz/SHA256E-s13725975671--d5ee5952b8b58e7b461abca7aadaeb077bb2b01ee93e714b4fc093028a9408aa.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Mf/jg/SHA256E-s5600420509--fceec596adc211432a933bb524a4dd62770d1cd3467fe748d17cc07dc7125acc.gz/SHA256E-s5600420509--fceec596adc211432a933bb524a4dd62770d1cd3467fe748d17cc07dc7125acc.gz";
      r2 = "04/2Z/SHA256E-s5918501211--8a2ce7d72ca622e80f7349f7f23f1e9e794890b77e0a66fbe36b34e410cc3188.gz/SHA256E-s5918501211--8a2ce7d72ca622e80f7349f7f23f1e9e794890b77e0a66fbe36b34e410cc3188.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0070";
  }
