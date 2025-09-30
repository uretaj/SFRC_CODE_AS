with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gJ/w0/SHA256E-s2399811711--670735e28a6aca9487928162d90073b10595afe1e904c9c37d3e41d8a6dddc4b.gz/SHA256E-s2399811711--670735e28a6aca9487928162d90073b10595afe1e904c9c37d3e41d8a6dddc4b.gz";
      r2 = "pk/kz/SHA256E-s2426261473--7c9c4d4c114c4847344e54b2d73564cc998915e8b4c0b37afd3ee199e415c0f9.gz/SHA256E-s2426261473--7c9c4d4c114c4847344e54b2d73564cc998915e8b4c0b37afd3ee199e415c0f9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV38641";
  }
