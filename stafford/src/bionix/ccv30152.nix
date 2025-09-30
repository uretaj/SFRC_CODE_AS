with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fZ/Xv/SHA256E-s3055306215--84615203a52f9a117f0fa53b021db1acbad75905ceee15c49d0309230da39b39.gz/SHA256E-s3055306215--84615203a52f9a117f0fa53b021db1acbad75905ceee15c49d0309230da39b39.gz";
      r2 = "x9/0Z/SHA256E-s3089266858--c7f7501af2b993498d510745c0f77c7f5a66f0a678a58650e07da117597b1691.gz/SHA256E-s3089266858--c7f7501af2b993498d510745c0f77c7f5a66f0a678a58650e07da117597b1691.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7q/4V/SHA256E-s3085514682--8e8daa82a26928d433171f02b02c63c011fe5f309de6d68bddb8a3be3a27e415.gz/SHA256E-s3085514682--8e8daa82a26928d433171f02b02c63c011fe5f309de6d68bddb8a3be3a27e415.gz";
      r2 = "J6/JM/SHA256E-s3119410133--375e2de2239f663fce3c290f85a41fd7434e961decde7d5b35b12d31b221f23e.gz/SHA256E-s3119410133--375e2de2239f663fce3c290f85a41fd7434e961decde7d5b35b12d31b221f23e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV30152";
  }
