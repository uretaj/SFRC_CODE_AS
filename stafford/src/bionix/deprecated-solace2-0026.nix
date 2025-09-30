with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "P3/3M/SHA256E-s15333838781--65b1d8c3ef4b20da8fdc8353b79c41d78826767d9f3a8f33c030c5365f324c03.gz/SHA256E-s15333838781--65b1d8c3ef4b20da8fdc8353b79c41d78826767d9f3a8f33c030c5365f324c03.gz";
      r2 = "f8/qk/SHA256E-s15645120244--3b687131a782d34a74918bfb2a2b0de6c76287f2e8ebbb11b7e420e7157ae7d8.gz/SHA256E-s15645120244--3b687131a782d34a74918bfb2a2b0de6c76287f2e8ebbb11b7e420e7157ae7d8.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Gp/mF/SHA256E-s6009409052--e1189636e8e5f9a75b478abbda38f4e76cb0584a5f012ca02b37288d41ca080e.gz/SHA256E-s6009409052--e1189636e8e5f9a75b478abbda38f4e76cb0584a5f012ca02b37288d41ca080e.gz";
      r2 = "kv/Wv/SHA256E-s6459336146--7e792e92ff1b1c5d3e76bfad02ed258686fcc15f5bc66e852b5dd4ec960da762.gz/SHA256E-s6459336146--7e792e92ff1b1c5d3e76bfad02ed258686fcc15f5bc66e852b5dd4ec960da762.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0026";
  }
