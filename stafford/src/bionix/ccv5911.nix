with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Pk/J6/SHA256E-s6249328034--735aa27224596169f9be36ceec57198f99484c7776ee7a4ac8b0cfd9e5f65b9f.gz/SHA256E-s6249328034--735aa27224596169f9be36ceec57198f99484c7776ee7a4ac8b0cfd9e5f65b9f.gz";
      r2 = "w8/fg/SHA256E-s6296286996--176575d6a1ab1fff0936064e5532d43677332f215df6ecf78be0e4f0204bc54f.gz/SHA256E-s6296286996--176575d6a1ab1fff0936064e5532d43677332f215df6ecf78be0e4f0204bc54f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV5911";
  }
