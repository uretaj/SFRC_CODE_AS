with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Kw/qM/SHA256E-s3188733257--423d9c938a19554eee254d6352f0e72925131487ad4ca67de139ead72fe5c02b.gz/SHA256E-s3188733257--423d9c938a19554eee254d6352f0e72925131487ad4ca67de139ead72fe5c02b.gz";
      r2 = "k8/Gf/SHA256E-s3200078168--880a448c620064bf1aaecdc4aaab9cd7cf74bfcee5004ad77043ca06bb7638d0.gz/SHA256E-s3200078168--880a448c620064bf1aaecdc4aaab9cd7cf74bfcee5004ad77043ca06bb7638d0.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qP/0v/SHA256E-s3102938992--b705133872c3a88f5b006dc9e18af85925f12c555a1c6207b0d1badf00f55934.gz/SHA256E-s3102938992--b705133872c3a88f5b006dc9e18af85925f12c555a1c6207b0d1badf00f55934.gz";
      r2 = "k0/Q8/SHA256E-s3091411853--d5e292f634f270a2322b3c04544fca9d4b0f70ae6b7f921f9912d31db4ed571d.gz/SHA256E-s3091411853--d5e292f634f270a2322b3c04544fca9d4b0f70ae6b7f921f9912d31db4ed571d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV22548";
  }
