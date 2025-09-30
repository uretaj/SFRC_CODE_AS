with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A10";
      class = "tumours";
      pdx = false;
      r1 = "xk/W4/SHA256E-s37809751145--db17fa79bb62f83bc22dfee380075ce7d09c4b31253107a189dae5730265b778.gz/SHA256E-s37809751145--db17fa79bb62f83bc22dfee380075ce7d09c4b31253107a189dae5730265b778.gz";
      r2 = "Z8/3x/SHA256E-s38995904867--690e57e20e6a9df6e1175a56e3aa96d13069f8cbc8689b784ac583916acf6c76.gz/SHA256E-s38995904867--690e57e20e6a9df6e1175a56e3aa96d13069f8cbc8689b784ac583916acf6c76.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "WJ/ZW/SHA256E-s8897492556--6d14e6f09e8335e2358925ce5c737776e4fce1c47d262a84febe7415f9ca1048.gz/SHA256E-s8897492556--6d14e6f09e8335e2358925ce5c737776e4fce1c47d262a84febe7415f9ca1048.gz";
      r2 = "qf/fx/SHA256E-s9098319445--c78dfbd8c83c06117408fce77c5fcbc00b6532658705b9c8b71388188735649f.gz/SHA256E-s9098319445--c78dfbd8c83c06117408fce77c5fcbc00b6532658705b9c8b71388188735649f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0020";
    capture = CREv2;
  }
