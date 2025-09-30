with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "x7/8p/SHA256E-s1113438201--2c0a56de861d55ea575c3d353cd2b771498ffa50f966116568bd71c754dce0b1.gz/SHA256E-s1113438201--2c0a56de861d55ea575c3d353cd2b771498ffa50f966116568bd71c754dce0b1.gz";
      r2 = "X2/fX/SHA256E-s1113603195--7e8638f20def7536dd4066463d6267c61cea4d5c781c936e2a02e41f074638cd.gz/SHA256E-s1113603195--7e8638f20def7536dd4066463d6267c61cea4d5c781c936e2a02e41f074638cd.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "P9/Qj/SHA256E-s1123827702--17ada73ee841ba0a101727d849407328efbc1fb5324a5bf14030e85dbe6b1294.gz/SHA256E-s1123827702--17ada73ee841ba0a101727d849407328efbc1fb5324a5bf14030e85dbe6b1294.gz";
      r2 = "W9/qf/SHA256E-s1122804404--7354b7e8dba2ffab9086e81e28e02e8c52043242dd37697d242b093fbd3b7444.gz/SHA256E-s1122804404--7354b7e8dba2ffab9086e81e28e02e8c52043242dd37697d242b093fbd3b7444.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "mJ/3F/SHA256E-s1124611841--565baefbe1ff5d567cfd561268a4df4534de3399b4829aa97aa069cb1476a8bd.gz/SHA256E-s1124611841--565baefbe1ff5d567cfd561268a4df4534de3399b4829aa97aa069cb1476a8bd.gz";
      r2 = "GV/73/SHA256E-s1118889397--e6cbcb445d217fa7afcf7523d0e91c62104e2d9ce37cfa37da00b231f98381f7.gz/SHA256E-s1118889397--e6cbcb445d217fa7afcf7523d0e91c62104e2d9ce37cfa37da00b231f98381f7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0136";
    capture = TwistV2HR;
  }
