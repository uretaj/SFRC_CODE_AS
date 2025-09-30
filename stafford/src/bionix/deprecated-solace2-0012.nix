with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "X7/kW/SHA256E-s24003173205--82ffe77f639589781d814c046cc83204f1a10f702dd45c68b47290a71439334a.gz/SHA256E-s24003173205--82ffe77f639589781d814c046cc83204f1a10f702dd45c68b47290a71439334a.gz";
      r2 = "ZP/0F/SHA256E-s24548799846--4a3d5df6e1b3776e9b738443df71e01eeb9b7f1da9d2034fa5074b118e84548d.gz/SHA256E-s24548799846--4a3d5df6e1b3776e9b738443df71e01eeb9b7f1da9d2034fa5074b118e84548d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "vz/qq/SHA256E-s5583001666--6858d5ddbdb6bf396a1217051e3ca029444607e474357e9099a83d1dc167938c.gz/SHA256E-s5583001666--6858d5ddbdb6bf396a1217051e3ca029444607e474357e9099a83d1dc167938c.gz";
      r2 = "j0/vQ/SHA256E-s5723336870--ee47aba4bc7e02087c3cf202ab06dbac09a7542646187bd3efdc367e1c1dc6ed.gz/SHA256E-s5723336870--ee47aba4bc7e02087c3cf202ab06dbac09a7542646187bd3efdc367e1c1dc6ed.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0012";
    capture = CREv2;
  }
