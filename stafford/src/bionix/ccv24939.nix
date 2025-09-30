with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WV/2p/SHA256E-s3755728820--637ed61972cd9df62765fc05ad6bb08245aa7936ce35f57d558e0911fbaaa29f.gz/SHA256E-s3755728820--637ed61972cd9df62765fc05ad6bb08245aa7936ce35f57d558e0911fbaaa29f.gz";
      r2 = "W2/0w/SHA256E-s3766286607--06109da8f6ca03b55b1b622b0343b14998082ba531467085ce33ac575803e9e2.gz/SHA256E-s3766286607--06109da8f6ca03b55b1b622b0343b14998082ba531467085ce33ac575803e9e2.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fX/zW/SHA256E-s3691394005--da8281c1c7c4cb2bdc63aa0f5b5a091c05b84c145cb89d716f47c8f639252a6f.gz/SHA256E-s3691394005--da8281c1c7c4cb2bdc63aa0f5b5a091c05b84c145cb89d716f47c8f639252a6f.gz";
      r2 = "3Q/vm/SHA256E-s3676120867--628b727d327fe387f0b18132f24e5c35643125975a54dd16eb3c78a695181d44.gz/SHA256E-s3676120867--628b727d327fe387f0b18132f24e5c35643125975a54dd16eb3c78a695181d44.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV24939";
  }
