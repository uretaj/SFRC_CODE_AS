with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "20/q1/SHA256E-s1941975521--a50330ac380fdeea576a3563f3fe078cba3d4f564ead6e5eb791692bf68fc427.gz/SHA256E-s1941975521--a50330ac380fdeea576a3563f3fe078cba3d4f564ead6e5eb791692bf68fc427.gz";
      r2 = "7K/Fg/SHA256E-s1949592768--7ee1c5844af07b8699c2dc43c225ef2d9ad718245193e197684a7727bf390978.gz/SHA256E-s1949592768--7ee1c5844af07b8699c2dc43c225ef2d9ad718245193e197684a7727bf390978.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7K/f4/SHA256E-s1953595380--a2faca5b70defcce2ca21facce1700fe055530823f365559b74e6ce8a177afc5.gz/SHA256E-s1953595380--a2faca5b70defcce2ca21facce1700fe055530823f365559b74e6ce8a177afc5.gz";
      r2 = "V0/2v/SHA256E-s1960598047--12285537ccb8b06615aa4626116198a3a7e03e7933982b4a4743ee131980e2a4.gz/SHA256E-s1960598047--12285537ccb8b06615aa4626116198a3a7e03e7933982b4a4743ee131980e2a4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV34581";
  }
