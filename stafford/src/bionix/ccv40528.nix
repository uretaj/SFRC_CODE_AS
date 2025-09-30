with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7x/K5/SHA256E-s7089383755--7f42f2d166cd3016af4c2d1754ac5371cde7fc4705c97558d0a56924d64fe2da.gz/SHA256E-s7089383755--7f42f2d166cd3016af4c2d1754ac5371cde7fc4705c97558d0a56924d64fe2da.gz";
      r2 = "fP/VJ/SHA256E-s7212946417--ceee201c6ae54e323ac63c63ce928d198d95624e63c44914091392a30361e7f1.gz/SHA256E-s7212946417--ceee201c6ae54e323ac63c63ce928d198d95624e63c44914091392a30361e7f1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV40528";
  }
