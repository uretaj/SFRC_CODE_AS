with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jX/q8/SHA256E-s3052802845--f4e628e5acb5e5b55a885a30c104c13c8d0c29a6981d438dea196f31f1ac63f9.gz/SHA256E-s3052802845--f4e628e5acb5e5b55a885a30c104c13c8d0c29a6981d438dea196f31f1ac63f9.gz";
      r2 = "PK/Qf/SHA256E-s3078135009--537be3bedd7349bbf95d600e9482e85107ea341a1cd85d0bfa3591b3c5bc3cb5.gz/SHA256E-s3078135009--537be3bedd7349bbf95d600e9482e85107ea341a1cd85d0bfa3591b3c5bc3cb5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV40342";
  }
