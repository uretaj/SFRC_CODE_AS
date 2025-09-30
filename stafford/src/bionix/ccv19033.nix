with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ff/kk/SHA256E-s6767907356--1cdacfb487b26736f6002573ed5cb1077c84a4b86d087cab2c52857abc623b13.gz/SHA256E-s6767907356--1cdacfb487b26736f6002573ed5cb1077c84a4b86d087cab2c52857abc623b13.gz";
      r2 = "jp/p6/SHA256E-s6795821637--6ad22891db9e0af97963bb0033b829b88d8c9f9bd514817eb0eba1690ac5dfec.gz/SHA256E-s6795821637--6ad22891db9e0af97963bb0033b829b88d8c9f9bd514817eb0eba1690ac5dfec.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV19033";
  }
