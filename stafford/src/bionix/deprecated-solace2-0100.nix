with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "q6/xz/SHA256E-s8614661810--e86a599b34c4cd6911e05630753c9f1191362175dd2bbbfc292bd6dec8a8da68.gz/SHA256E-s8614661810--e86a599b34c4cd6911e05630753c9f1191362175dd2bbbfc292bd6dec8a8da68.gz";
      r2 = "45/Kx/SHA256E-s8523311459--d083a17e5761847ebb5e3a934885a430e31a52f706f69c50502c9041470dd0a2.gz/SHA256E-s8523311459--d083a17e5761847ebb5e3a934885a430e31a52f706f69c50502c9041470dd0a2.gz";
    }

    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "QW/9M/SHA256E-s8881945825--f7b05735ffa84a4a1646fb7976d0b65b748bc4b3b7c6da369aad741c521b12ed.gz/SHA256E-s8881945825--f7b05735ffa84a4a1646fb7976d0b65b748bc4b3b7c6da369aad741c521b12ed.gz";
      r2 = "Q2/F8/SHA256E-s8797561354--d3d035ea3ba0d010a2e78c2e5b060c7d6bcdadc7f7c3adb38d6223a58da75f95.gz/SHA256E-s8797561354--d3d035ea3ba0d010a2e78c2e5b060c7d6bcdadc7f7c3adb38d6223a58da75f95.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "91/xF/SHA256E-s1367596184--22c7e56263ec947a35b9fa521fcbc6114b8a869c2d546fb59062c0d387a3cc7b.gz/SHA256E-s1367596184--22c7e56263ec947a35b9fa521fcbc6114b8a869c2d546fb59062c0d387a3cc7b.gz";
      r2 = "XK/gw/SHA256E-s1380114065--12efda0e3bc7e89bbdbe6d96fc1b9938acca565817720057edd060ba30264693.gz/SHA256E-s1380114065--12efda0e3bc7e89bbdbe6d96fc1b9938acca565817720057edd060ba30264693.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "f6/qX/SHA256E-s1408743221--c6ed2c11b89ce3cb53cf5181cc232de55e9de8e2598f9bc666f487f8bb6d9943.gz/SHA256E-s1408743221--c6ed2c11b89ce3cb53cf5181cc232de55e9de8e2598f9bc666f487f8bb6d9943.gz";
      r2 = "23/Pf/SHA256E-s1423210150--5e739dbe63bcce5e8a75a8e6819d1f9c6543313e516445aea0220649c1b6c1ff.gz/SHA256E-s1423210150--5e739dbe63bcce5e8a75a8e6819d1f9c6543313e516445aea0220649c1b6c1ff.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TwistV2HR;
    name = "SOL2_0100";
  }
