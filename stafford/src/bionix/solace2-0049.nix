with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B10";
      class = "tumours";
      pdx = false;
      r1 = "Xv/7q/SHA256E-s3120423972--f8ff42bfeacd8d656f1490edb520a7b3a3600a294f73b838e2c58371b748defc.gz/SHA256E-s3120423972--f8ff42bfeacd8d656f1490edb520a7b3a3600a294f73b838e2c58371b748defc.gz";
      r2 = "75/0q/SHA256E-s3253327565--83a00e7d2dda13862d716ba197512566c5022d72ddd1ee275213ccc1e47789fe.gz/SHA256E-s3253327565--83a00e7d2dda13862d716ba197512566c5022d72ddd1ee275213ccc1e47789fe.gz";
    }

    {
      site = "B10";
      class = "tumours";
      pdx = false;
      r1 = "wj/F6/SHA256E-s1753907370--8cbe0139b41c2663780447b710f08e9999e6762a4209c374a355bb3dbcb4edb6.gz/SHA256E-s1753907370--8cbe0139b41c2663780447b710f08e9999e6762a4209c374a355bb3dbcb4edb6.gz";
      r2 = "Fq/4z/SHA256E-s1806036249--0293c82a8ba5202edb528c5126762b532e3be6f57bee56287dbc3014e10dccf9.gz/SHA256E-s1806036249--0293c82a8ba5202edb528c5126762b532e3be6f57bee56287dbc3014e10dccf9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "ZM/MV/SHA256E-s1300854127--3b775687b50eb9eca875da580b46f61766ef244283e583afc14aeadd69afc052.gz/SHA256E-s1300854127--3b775687b50eb9eca875da580b46f61766ef244283e583afc14aeadd69afc052.gz";
      r2 = "19/92/SHA256E-s1296389432--7c74dab67f3192539041f237cb2f339bad3e8e71d1a29df5cee88ee6dd1a3c32.gz/SHA256E-s1296389432--7c74dab67f3192539041f237cb2f339bad3e8e71d1a29df5cee88ee6dd1a3c32.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "z2/jF/SHA256E-s1316773097--c9a6312dbfea32a5e3308254fe1a1f5152ca58ba8a84d61551ad4b245cdc74ea.gz/SHA256E-s1316773097--c9a6312dbfea32a5e3308254fe1a1f5152ca58ba8a84d61551ad4b245cdc74ea.gz";
      r2 = "fv/9V/SHA256E-s1310153822--474d7cb8460e0dc49cf497ab098694f687e8489aba4ddae9227dfc7cf117fe52.gz/SHA256E-s1310153822--474d7cb8460e0dc49cf497ab098694f687e8489aba4ddae9227dfc7cf117fe52.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pk/98/SHA256E-s1320058820--3f54a6d75c56aea6244a62b8c72eab636f6d7b9f533c7bee6c8535f7da9e5a5c.gz/SHA256E-s1320058820--3f54a6d75c56aea6244a62b8c72eab636f6d7b9f533c7bee6c8535f7da9e5a5c.gz";
      r2 = "qJ/j7/SHA256E-s1307712162--83c86bd3f6b795229518e38d37eb355302c6e4c6b4645ca077df4e4aedc30aaf.gz/SHA256E-s1307712162--83c86bd3f6b795229518e38d37eb355302c6e4c6b4645ca077df4e4aedc30aaf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0049";
    typeHla = true;
    capture = TwistV2HR;
  }
