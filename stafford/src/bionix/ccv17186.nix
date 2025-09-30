with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "85/Zw/SHA256E-s2806849485--999446bc02744884da80c7c49cf3b02e752bb331f860766fb799156f8e2c0bee.gz/SHA256E-s2806849485--999446bc02744884da80c7c49cf3b02e752bb331f860766fb799156f8e2c0bee.gz";
      r2 = "w8/kF/SHA256E-s2809176737--93ff6f5f95edd6f1b9f26ad59d0fa822e1c4c4dcc2035b5fe30445d8e92391e7.gz/SHA256E-s2809176737--93ff6f5f95edd6f1b9f26ad59d0fa822e1c4c4dcc2035b5fe30445d8e92391e7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV17186";
  }
