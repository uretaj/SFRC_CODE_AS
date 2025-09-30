with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VJ/m8/SHA256E-s2631113894--09849a9f83a46ea0b865b42d5e2843809bbbcc5c5268520297d9cce440d89dd5.gz/SHA256E-s2631113894--09849a9f83a46ea0b865b42d5e2843809bbbcc5c5268520297d9cce440d89dd5.gz";
      r2 = "2f/4z/SHA256E-s2653492001--5d6c787f98076dc1d41583059b6214730d2f8de9512117e4ab6d8c2643432cc9.gz/SHA256E-s2653492001--5d6c787f98076dc1d41583059b6214730d2f8de9512117e4ab6d8c2643432cc9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV4108";
  }
