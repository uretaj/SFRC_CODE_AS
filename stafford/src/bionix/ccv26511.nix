with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vm/wX/SHA256E-s2555258817--cf8a6e13d2da56a8c1d2fd2a4c6402cefdcfcc824efb5e97519902bbba4d12c1.gz/SHA256E-s2555258817--cf8a6e13d2da56a8c1d2fd2a4c6402cefdcfcc824efb5e97519902bbba4d12c1.gz";
      r2 = "VG/5X/SHA256E-s2567250252--503e921819a2dc6c4d2ad9d616a1d1ae747d65ec5f29d2e18c8e559594141bc3.gz/SHA256E-s2567250252--503e921819a2dc6c4d2ad9d616a1d1ae747d65ec5f29d2e18c8e559594141bc3.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2q/2p/SHA256E-s2482234662--42f82d5d2a708c8783b0cc8e814aa3c8ba6d1276ee9ff586307abc77ff65c78a.gz/SHA256E-s2482234662--42f82d5d2a708c8783b0cc8e814aa3c8ba6d1276ee9ff586307abc77ff65c78a.gz";
      r2 = "9z/WG/SHA256E-s2474384728--d9993f1ac1f7c815b42c2d09a3694aea2715f05cc8f7408178451a90cff48ad7.gz/SHA256E-s2474384728--d9993f1ac1f7c815b42c2d09a3694aea2715f05cc8f7408178451a90cff48ad7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV26511";
  }
