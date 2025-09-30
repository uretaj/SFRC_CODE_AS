with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mJ/1v/SHA256E-s3109088267--dc264cad1504a0d49514ed158bafd7674bde82775d2cc69c1ca182a82f1c81a1.gz/SHA256E-s3109088267--dc264cad1504a0d49514ed158bafd7674bde82775d2cc69c1ca182a82f1c81a1.gz";
      r2 = "qx/36/SHA256E-s3121550418--0e01b1c6ca03fd2a53bfbbe0cfac969309258e85f2b80b6da63c33f1d7408828.gz/SHA256E-s3121550418--0e01b1c6ca03fd2a53bfbbe0cfac969309258e85f2b80b6da63c33f1d7408828.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV11595";
  }
