with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jj/mg/SHA256E-s3696420468--f38ec36fdde0e1063e7f6f659cc784f3a0f51ea0c832e3d7c764377bbaed118a.gz/SHA256E-s3696420468--f38ec36fdde0e1063e7f6f659cc784f3a0f51ea0c832e3d7c764377bbaed118a.gz";
      r2 = "w1/6V/SHA256E-s3771523267--dc3458ef0313bc79779695b8f9c5397abc0b05f79debc405c2dde2a52fd08f36.gz/SHA256E-s3771523267--dc3458ef0313bc79779695b8f9c5397abc0b05f79debc405c2dde2a52fd08f36.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV37952";
  }
