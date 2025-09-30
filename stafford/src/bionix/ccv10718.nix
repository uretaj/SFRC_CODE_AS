with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Wv/J3/SHA256E-s3524992716--ad25945378ce55b46e51233f44e2260a1f53dddc91f34cecd7ee290359c888a4.gz/SHA256E-s3524992716--ad25945378ce55b46e51233f44e2260a1f53dddc91f34cecd7ee290359c888a4.gz";
      r2 = "56/49/SHA256E-s3538935557--15d3b8019069529aba89c3633d2f4d05f2ffff2b2746d11a6b20089b8498b745.gz/SHA256E-s3538935557--15d3b8019069529aba89c3633d2f4d05f2ffff2b2746d11a6b20089b8498b745.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV10718";
  }
