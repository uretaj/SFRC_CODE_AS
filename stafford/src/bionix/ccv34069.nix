with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mV/G0/SHA256E-s2518213071--8943b7de5a252364231ee08e487a5ffd740552f5a1dc9d6a5eaab98ab94a829a.gz/SHA256E-s2518213071--8943b7de5a252364231ee08e487a5ffd740552f5a1dc9d6a5eaab98ab94a829a.gz";
      r2 = "gp/4q/SHA256E-s2562927288--0721e3c845d1fa239f25c00258608de097c6e44f3fe2f62dfb776437d483269a.gz/SHA256E-s2562927288--0721e3c845d1fa239f25c00258608de097c6e44f3fe2f62dfb776437d483269a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zP/Vk/SHA256E-s2552174928--bb687c79a0b7428ae1b4aad5e1ee9350ec6ad105f641705a5ba4c11a28ca76ff.gz/SHA256E-s2552174928--bb687c79a0b7428ae1b4aad5e1ee9350ec6ad105f641705a5ba4c11a28ca76ff.gz";
      r2 = "K7/M5/SHA256E-s2597143216--c569d59985ba162308a6eecf945d29acc506350a3b2c18fb2609ee1ba904bc1f.gz/SHA256E-s2597143216--c569d59985ba162308a6eecf945d29acc506350a3b2c18fb2609ee1ba904bc1f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV34069";
  }
