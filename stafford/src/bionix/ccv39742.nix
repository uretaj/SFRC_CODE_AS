with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2X/1P/SHA256E-s4322166693--06d4543ea7277f8d0a9f2f58530aaa69815cc9a68754f489cd146635b20c358a.gz/SHA256E-s4322166693--06d4543ea7277f8d0a9f2f58530aaa69815cc9a68754f489cd146635b20c358a.gz";
      r2 = "QJ/mq/SHA256E-s4455536918--2273515a8b144d717843f338e1198e4101a61b3d3918d282fb2531ec4af89048.gz/SHA256E-s4455536918--2273515a8b144d717843f338e1198e4101a61b3d3918d282fb2531ec4af89048.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV39742";
  }
