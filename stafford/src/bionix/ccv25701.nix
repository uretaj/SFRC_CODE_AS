with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WJ/78/SHA256E-s2979073261--77aa2241d904c9c094992b6ed3d168f7ef8e6468da858080fe599f29eb4df80b.gz/SHA256E-s2979073261--77aa2241d904c9c094992b6ed3d168f7ef8e6468da858080fe599f29eb4df80b.gz";
      r2 = "8z/JW/SHA256E-s3015645554--8535a92fea8c16824783ed7183d4848990c9222dd8090355159d3a0d813a922e.gz/SHA256E-s3015645554--8535a92fea8c16824783ed7183d4848990c9222dd8090355159d3a0d813a922e.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9W/5M/SHA256E-s2850098184--28285cf31ae073bb505e752d33046a00b3c5eb90eb2120b779d9881727307dcd.gz/SHA256E-s2850098184--28285cf31ae073bb505e752d33046a00b3c5eb90eb2120b779d9881727307dcd.gz";
      r2 = "7j/wm/SHA256E-s2863158918--88f235cc85f18ff92ad6719d74f024d2cb3fc25b9b49be6b91908018801a992c.gz/SHA256E-s2863158918--88f235cc85f18ff92ad6719d74f024d2cb3fc25b9b49be6b91908018801a992c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV25701";
  }
