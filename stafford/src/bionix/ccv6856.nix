with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M5/X8/SHA256E-s5397725366--98f7e49a289527d5f0c4d13daf46a50c6d857f6e72edd800f2d716c64cc67fb9.gz/SHA256E-s5397725366--98f7e49a289527d5f0c4d13daf46a50c6d857f6e72edd800f2d716c64cc67fb9.gz";
      r2 = "mG/56/SHA256E-s5374887694--1424fbbd96716c353e7d4e5e5551821413d4b31bee2c916d664c63436c971561.gz/SHA256E-s5374887694--1424fbbd96716c353e7d4e5e5551821413d4b31bee2c916d664c63436c971561.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV6856";
  }
