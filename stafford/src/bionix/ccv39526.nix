with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mX/p7/SHA256E-s3633714895--377078c7f5b33a029db33e8bfa92c8cf76ed8691ce9d57d51c65e9fe8bf0c4be.gz/SHA256E-s3633714895--377078c7f5b33a029db33e8bfa92c8cf76ed8691ce9d57d51c65e9fe8bf0c4be.gz";
      r2 = "Zq/Pp/SHA256E-s3707180588--fb488f38166e66a63fa3d624b80525e171e4cbc1ccb85f7c355fa79697d6b753.gz/SHA256E-s3707180588--fb488f38166e66a63fa3d624b80525e171e4cbc1ccb85f7c355fa79697d6b753.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV39526";
  }
