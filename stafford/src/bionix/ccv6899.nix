with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g3/qk/SHA256E-s2129450868--748d54e88edf1dfb9548c7fa60261966c76e5874c8fc7a0977f3c7513a803c25.gz/SHA256E-s2129450868--748d54e88edf1dfb9548c7fa60261966c76e5874c8fc7a0977f3c7513a803c25.gz";
      r2 = "X1/0K/SHA256E-s2133399205--222a9f1643b0cd11826256c46fec67696d42d96cb89c2eab2076ef3b661be7e9.gz/SHA256E-s2133399205--222a9f1643b0cd11826256c46fec67696d42d96cb89c2eab2076ef3b661be7e9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV6899";
  }
