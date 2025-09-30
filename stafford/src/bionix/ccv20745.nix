with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vf/X3/SHA256E-s2148839052--a6ea301f33b3fb44fc14394654b3f2d2e000415b2bc5e1b5b5f89ef522e04739.gz/SHA256E-s2148839052--a6ea301f33b3fb44fc14394654b3f2d2e000415b2bc5e1b5b5f89ef522e04739.gz";
      r2 = "9P/GP/SHA256E-s2154490752--1c669a8900f956efd17b360f8c6a5472df6de5305dc94168cfae81cf56cfe411.gz/SHA256E-s2154490752--1c669a8900f956efd17b360f8c6a5472df6de5305dc94168cfae81cf56cfe411.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "98/XJ/SHA256E-s2090026216--0fa1c76cb5c93d7c5a8909183cab184d47f7c62b323b107aad4850a2d1594e02.gz/SHA256E-s2090026216--0fa1c76cb5c93d7c5a8909183cab184d47f7c62b323b107aad4850a2d1594e02.gz";
      r2 = "vJ/36/SHA256E-s2080638082--44f30181ad9f7c75be25a06d7f5fa2354a5dd16725f734f0c78e8bc2ce730768.gz/SHA256E-s2080638082--44f30181ad9f7c75be25a06d7f5fa2354a5dd16725f734f0c78e8bc2ce730768.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV20745";
  }
