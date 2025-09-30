with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "zK/V3/SHA256E-s14256926081--3c2649abfbb5d0b7877eb400e38aeb16470702b80a4d4d33cf7c1bb68e883b4b.gz/SHA256E-s14256926081--3c2649abfbb5d0b7877eb400e38aeb16470702b80a4d4d33cf7c1bb68e883b4b.gz";
      r2 = "7Q/73/SHA256E-s14528548636--b152535009685928b1ffdd6d5b60471d034bd8c27d7f214778bac43ed866d51e.gz/SHA256E-s14528548636--b152535009685928b1ffdd6d5b60471d034bd8c27d7f214778bac43ed866d51e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "15/f0/SHA256E-s4485883307--0723196915fe8ceddb73d3f6c5d4a766478dd0dff535085e33e7038313510fcf.gz/SHA256E-s4485883307--0723196915fe8ceddb73d3f6c5d4a766478dd0dff535085e33e7038313510fcf.gz";
      r2 = "jK/6G/SHA256E-s4572903350--eb3d4a714e5e222fb3f65863b4b239b109385dc7a5fac029339f175ee1f9ce6b.gz/SHA256E-s4572903350--eb3d4a714e5e222fb3f65863b4b239b109385dc7a5fac029339f175ee1f9ce6b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0111";
    capture = CREv2;
  }
