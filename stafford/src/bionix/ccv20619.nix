with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6J/74/SHA256E-s3261337643--e204e3cd5f0ac4f310ed99ecac9d4b8270a01f1f48bd90b8bc3b6c0bb6d5b08f.gz/SHA256E-s3261337643--e204e3cd5f0ac4f310ed99ecac9d4b8270a01f1f48bd90b8bc3b6c0bb6d5b08f.gz";
      r2 = "K3/xv/SHA256E-s3284590094--e39de7afac554da0e1fb8917cff6e1eb8ce7b823a32b76ec029516a632e79e80.gz/SHA256E-s3284590094--e39de7afac554da0e1fb8917cff6e1eb8ce7b823a32b76ec029516a632e79e80.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M6/m2/SHA256E-s3174628413--75bf9235504f293b655ee0d76a52657b6f376c8508598af714a4c1d121ad9e18.gz/SHA256E-s3174628413--75bf9235504f293b655ee0d76a52657b6f376c8508598af714a4c1d121ad9e18.gz";
      r2 = "Zk/p9/SHA256E-s3173638395--6e1e0c83e59e555ad5a9dd79d8d0466a43a2b3bf44a0feef9b61beb638df9222.gz/SHA256E-s3173638395--6e1e0c83e59e555ad5a9dd79d8d0466a43a2b3bf44a0feef9b61beb638df9222.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV20619";
  }
