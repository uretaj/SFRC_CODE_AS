with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m3/z2/SHA256E-s1733942819--e3f738e64a6155ca9562a319307fbdd41effe6da126765539c996442570d7130.gz/SHA256E-s1733942819--e3f738e64a6155ca9562a319307fbdd41effe6da126765539c996442570d7130.gz";
      r2 = "9V/wq/SHA256E-s1759299622--c336fbce2cde839a461e8adc11fb0ba6d9356f71e14ae6f3ad1f64dd8b48ef3b.gz/SHA256E-s1759299622--c336fbce2cde839a461e8adc11fb0ba6d9356f71e14ae6f3ad1f64dd8b48ef3b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jx/GK/SHA256E-s1759617450--69f8321052278e0429bc4ab4a01ecb7148a98dfcd82ea146e369b52cf8b28f68.gz/SHA256E-s1759617450--69f8321052278e0429bc4ab4a01ecb7148a98dfcd82ea146e369b52cf8b28f68.gz";
      r2 = "8F/8K/SHA256E-s1785299706--7ea21689f62e4c49efe65b2510a7ff3184d7197847e0ecfa112d0e337b6893a7.gz/SHA256E-s1785299706--7ea21689f62e4c49efe65b2510a7ff3184d7197847e0ecfa112d0e337b6893a7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV35523";
  }
