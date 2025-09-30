with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "67/V5/SHA256E-s13229731200--8d8f116fecbc2820f2cb3bd524e44cecd3eecbdab544c243b8db4734fe40a902.gz/SHA256E-s13229731200--8d8f116fecbc2820f2cb3bd524e44cecd3eecbdab544c243b8db4734fe40a902.gz";
      r2 = "w1/Wz/SHA256E-s13436113346--68eb1890644830478ca49ccbeaa1f3cb477eb65a8a22b6790009df281de288ac.gz/SHA256E-s13436113346--68eb1890644830478ca49ccbeaa1f3cb477eb65a8a22b6790009df281de288ac.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "xk/3F/SHA256E-s6201614737--6bc5f56f7d9a889b27e210c5fa9eeb7e2aeb5a9aea7483530357043f54c69349.gz/SHA256E-s6201614737--6bc5f56f7d9a889b27e210c5fa9eeb7e2aeb5a9aea7483530357043f54c69349.gz";
      r2 = "p5/mK/SHA256E-s6467789802--83fcc6abd0f92e22f56047cad69d1f3a39873e2bc4f5e65ae37b983797420a35.gz/SHA256E-s6467789802--83fcc6abd0f92e22f56047cad69d1f3a39873e2bc4f5e65ae37b983797420a35.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0099";
  }
