with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "X0/QX/SHA256E-s15839106599--c86ed75e9c0e6c1500f6eaf88cc93d9a7f71b1b2f25e443532bb3747b9e34a23.gz/SHA256E-s15839106599--c86ed75e9c0e6c1500f6eaf88cc93d9a7f71b1b2f25e443532bb3747b9e34a23.gz";
      r2 = "4X/zj/SHA256E-s16213510963--7d3a550b5078b69f2a1486bb79a86668a05477f5dd9a5142c61619f6ec082fc9.gz/SHA256E-s16213510963--7d3a550b5078b69f2a1486bb79a86668a05477f5dd9a5142c61619f6ec082fc9.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vQ/mK/SHA256E-s5682693700--dc15b6401983e968a7314dde1fa338eba8dbaa129e883f259fb9369bfdf6dde7.gz/SHA256E-s5682693700--dc15b6401983e968a7314dde1fa338eba8dbaa129e883f259fb9369bfdf6dde7.gz";
      r2 = "3x/4k/SHA256E-s5829399108--1d22476743311e8e6c596d72caf5271401fa7464e7ecb18a5adf096a32097635.gz/SHA256E-s5829399108--1d22476743311e8e6c596d72caf5271401fa7464e7ecb18a5adf096a32097635.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0103";
  }
