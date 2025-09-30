with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5w/qF/SHA256E-s3518764150--9d947d246e1b31ff9bdd1781101ae0c6dca2839081fb0d41da1fc3dce53b0272.gz/SHA256E-s3518764150--9d947d246e1b31ff9bdd1781101ae0c6dca2839081fb0d41da1fc3dce53b0272.gz";
      r2 = "z4/wx/SHA256E-s3608849999--d319761775e07aa9945a2a2d6b2aea09a4fdb61fbf0370d69afb8323d3287fc1.gz/SHA256E-s3608849999--d319761775e07aa9945a2a2d6b2aea09a4fdb61fbf0370d69afb8323d3287fc1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV40644";
  }
