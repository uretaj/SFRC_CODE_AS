with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0J/Mp/SHA256E-s3227115616--e81386626bac7c76ad3a1100fd4ed19c64958c035cc194874eae455572d16a4f.gz/SHA256E-s3227115616--e81386626bac7c76ad3a1100fd4ed19c64958c035cc194874eae455572d16a4f.gz";
      r2 = "wV/94/SHA256E-s3253935935--180df9b19c28cc30f1889c4ed59f71191b2bcd569b142786d6a28a83e0ade082.gz/SHA256E-s3253935935--180df9b19c28cc30f1889c4ed59f71191b2bcd569b142786d6a28a83e0ade082.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV40662";
  }
