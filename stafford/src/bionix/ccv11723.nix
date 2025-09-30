with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2Z/vX/SHA256E-s5797832213--51140868abcce8a629ad3ff20b39dfcc684df45f6b7b9c6eb4ae6a2ddfc03942.gz/SHA256E-s5797832213--51140868abcce8a629ad3ff20b39dfcc684df45f6b7b9c6eb4ae6a2ddfc03942.gz";
      r2 = "9m/6j/SHA256E-s5851920793--7c218cb9a4d0322f7c21eda2922e6ec9be78cb73dfa3a12cd379e0ff367d3606.gz/SHA256E-s5851920793--7c218cb9a4d0322f7c21eda2922e6ec9be78cb73dfa3a12cd379e0ff367d3606.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV11723";
  }
