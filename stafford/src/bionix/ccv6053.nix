with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4g/Wk/SHA256E-s3895463854--2ffecd3802de6bdf13f439254f2f8e4da2217032be5a779d58c48fcea6fa1883.gz/SHA256E-s3895463854--2ffecd3802de6bdf13f439254f2f8e4da2217032be5a779d58c48fcea6fa1883.gz";
      r2 = "km/Mm/SHA256E-s3888023832--25a83189239dafcd3afb05ec7f80fd0de99f478feffb0b14296e69646396d5c8.gz/SHA256E-s3888023832--25a83189239dafcd3afb05ec7f80fd0de99f478feffb0b14296e69646396d5c8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV6053";
  }
