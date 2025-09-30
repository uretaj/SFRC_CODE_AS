with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9m/28/SHA256E-s3010625777--78792fbf09f0344bc40e0da511dec1ce4e4263be9d2c108956e9eeaa80f713cd.gz/SHA256E-s3010625777--78792fbf09f0344bc40e0da511dec1ce4e4263be9d2c108956e9eeaa80f713cd.gz";
      r2 = "J1/Mf/SHA256E-s3077247320--de131fb14e24f4b0b2d4bb3437fffa8e0236bc0ea4d6f56f12f8c2a152982647.gz/SHA256E-s3077247320--de131fb14e24f4b0b2d4bb3437fffa8e0236bc0ea4d6f56f12f8c2a152982647.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV39192";
  }
