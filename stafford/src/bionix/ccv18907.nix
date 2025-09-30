with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "V4/60/SHA256E-s3730771548--4ec27042e6d714a089c7b4dd417b5b029410b775dda9d01d271714fdaf5286a8.gz/SHA256E-s3730771548--4ec27042e6d714a089c7b4dd417b5b029410b775dda9d01d271714fdaf5286a8.gz";
      r2 = "Mf/v1/SHA256E-s3727191232--156fb159c6609f97607c3dbc84c852a82830ff349d42a0b66e398768d29da527.gz/SHA256E-s3727191232--156fb159c6609f97607c3dbc84c852a82830ff349d42a0b66e398768d29da527.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV18907";
  }
