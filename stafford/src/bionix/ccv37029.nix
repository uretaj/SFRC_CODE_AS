with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZM/7Z/SHA256E-s3297184488--3bcf486074b99ac837b0e349f2953eaf86347ee0c02cf769a619a99a34dd4a00.gz/SHA256E-s3297184488--3bcf486074b99ac837b0e349f2953eaf86347ee0c02cf769a619a99a34dd4a00.gz";
      r2 = "z0/7z/SHA256E-s3326541227--f7638bbfa595cb938e3c28e7cf4e17a9d478188d0515dba1159e5e565379aa29.gz/SHA256E-s3326541227--f7638bbfa595cb938e3c28e7cf4e17a9d478188d0515dba1159e5e565379aa29.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WP/3G/SHA256E-s3337572385--13dd6d20bad9bfb718e6b3d0c9110fa26382071edf23f69261b9534d26739778.gz/SHA256E-s3337572385--13dd6d20bad9bfb718e6b3d0c9110fa26382071edf23f69261b9534d26739778.gz";
      r2 = "K0/KG/SHA256E-s3367065613--5d3cd84f346ca785406091a1a863c66cdd388253e89dc788bcbe9367c733b7ec.gz/SHA256E-s3367065613--5d3cd84f346ca785406091a1a863c66cdd388253e89dc788bcbe9367c733b7ec.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV37029";
  }
