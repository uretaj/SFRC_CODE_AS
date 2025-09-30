with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qk/F9/SHA256E-s1179140739--968ef6a4a2e31fa2ed68ec73d499137eaf9cd7c1e4e067fe91a1013e5a5ff1d0.gz/SHA256E-s1179140739--968ef6a4a2e31fa2ed68ec73d499137eaf9cd7c1e4e067fe91a1013e5a5ff1d0.gz";
      r2 = "Wv/j5/SHA256E-s1201857756--bc0ea9cbd65f626842d6d293d0a3176981a6c8f1f85ba2b6a287e992c5335ef4.gz/SHA256E-s1201857756--bc0ea9cbd65f626842d6d293d0a3176981a6c8f1f85ba2b6a287e992c5335ef4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV40212";
  }
