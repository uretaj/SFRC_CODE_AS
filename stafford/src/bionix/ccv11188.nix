with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9f/M5/SHA256E-s3797561705--46bf23c8f8e28bacfdb207646e254f713de94fff8e2054e41e5741addbe4adc6.gz/SHA256E-s3797561705--46bf23c8f8e28bacfdb207646e254f713de94fff8e2054e41e5741addbe4adc6.gz";
      r2 = "P0/8w/SHA256E-s3802521743--5f663f3b9116ae725189714c31180190a391ba5f1969c929eea1a232f742c640.gz/SHA256E-s3802521743--5f663f3b9116ae725189714c31180190a391ba5f1969c929eea1a232f742c640.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV11188";
  }
