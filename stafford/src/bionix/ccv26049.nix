with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "x1/jM/SHA256E-s871898827--a58883a8a10434aced7b31d023ac0d639b25c00f1650e0b28d63e84bb4222513.gz/SHA256E-s871898827--a58883a8a10434aced7b31d023ac0d639b25c00f1650e0b28d63e84bb4222513.gz";
      r2 = "58/vz/SHA256E-s888805079--a7b310d59d1d8a3223f6d6cc6a355626873602fe15575dbdf7d8d9e88eaebd4c.gz/SHA256E-s888805079--a7b310d59d1d8a3223f6d6cc6a355626873602fe15575dbdf7d8d9e88eaebd4c.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m2/qv/SHA256E-s822867014--b154f92cb430769be01de93626ff655f582db829977bbee5dd15df724b0cb3b8.gz/SHA256E-s822867014--b154f92cb430769be01de93626ff655f582db829977bbee5dd15df724b0cb3b8.gz";
      r2 = "qM/6z/SHA256E-s831782541--a39d9d75108dd9c3792358c16b527ca8ecb1a3c2b71727a380b1c9974aedf6ae.gz/SHA256E-s831782541--a39d9d75108dd9c3792358c16b527ca8ecb1a3c2b71727a380b1c9974aedf6ae.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV26049";
  }
