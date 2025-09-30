with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vk/Vx/SHA256E-s2299393027--2e21fe8093db2ebd882e2b9afc845ce029362d82312d0a310528b2f9f0e36bc7.gz/SHA256E-s2299393027--2e21fe8093db2ebd882e2b9afc845ce029362d82312d0a310528b2f9f0e36bc7.gz";
      r2 = "8f/Q1/SHA256E-s2307204080--16590249d5b14c611b4f2283f4951d8a770e3411482322a89f2d5ae9727961db.gz/SHA256E-s2307204080--16590249d5b14c611b4f2283f4951d8a770e3411482322a89f2d5ae9727961db.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV11782";
  }
