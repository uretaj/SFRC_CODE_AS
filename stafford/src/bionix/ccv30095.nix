with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k1/Vg/SHA256E-s753528093--a682f50854c84d0ba6a3c9214614f6d159af857b8c03a586a42cd02d1382120b.gz/SHA256E-s753528093--a682f50854c84d0ba6a3c9214614f6d159af857b8c03a586a42cd02d1382120b.gz";
      r2 = "j9/0J/SHA256E-s764484239--5656868e36b2a6b232ed64f9b33a83867d7a23efd2f38f86f9aafe3859e1d44f.gz/SHA256E-s764484239--5656868e36b2a6b232ed64f9b33a83867d7a23efd2f38f86f9aafe3859e1d44f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV30095";
  }
