with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "f4/9X/SHA256E-s14701282309--1ced1f0bf463fbf5845ca5308124b6ae76bf47693b2103e02e57edd75d5dd4bd.gz/SHA256E-s14701282309--1ced1f0bf463fbf5845ca5308124b6ae76bf47693b2103e02e57edd75d5dd4bd.gz";
      r2 = "PW/3Z/SHA256E-s15214375776--f0b1eb8236c052e0ccc94aaa9703b0c648b88d93b9705269561f29f2024a835b.gz/SHA256E-s15214375776--f0b1eb8236c052e0ccc94aaa9703b0c648b88d93b9705269561f29f2024a835b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pW/5J/SHA256E-s6093738076--32491d3ff482c73cbd8a69d32d52071c4ee343552c446d1ae944a90223d5330c.gz/SHA256E-s6093738076--32491d3ff482c73cbd8a69d32d52071c4ee343552c446d1ae944a90223d5330c.gz";
      r2 = "gZ/fZ/SHA256E-s6419890832--e884be46dbbcaf61a33d0ef129a90d7f0f67eebe7c697f62ca875a799e276274.gz/SHA256E-s6419890832--e884be46dbbcaf61a33d0ef129a90d7f0f67eebe7c697f62ca875a799e276274.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0115";
    capture = CREv2;
  }
