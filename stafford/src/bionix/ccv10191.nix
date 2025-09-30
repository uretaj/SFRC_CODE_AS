with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "72/Pp/SHA256E-s5864305877--edbb4892b514fffa3bbd654341a445285f1f1ffbdefb1df9643fbceb4e20f377.gz/SHA256E-s5864305877--edbb4892b514fffa3bbd654341a445285f1f1ffbdefb1df9643fbceb4e20f377.gz";
      r2 = "g8/9g/SHA256E-s5870992229--248bf513eff4868750c97a8ae920e97a3be5915edbd17cf34fbea5c6d0aa1e45.gz/SHA256E-s5870992229--248bf513eff4868750c97a8ae920e97a3be5915edbd17cf34fbea5c6d0aa1e45.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV10191";
  }
