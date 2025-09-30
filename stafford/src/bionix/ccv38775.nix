with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qX/qx/SHA256E-s2658087854--4a8063a412854f43f9377aedbe7d9a048091bf26e68226b50aad851466d6ab39.gz/SHA256E-s2658087854--4a8063a412854f43f9377aedbe7d9a048091bf26e68226b50aad851466d6ab39.gz";
      r2 = "Gf/7f/SHA256E-s2733830335--abfb7d0306f88275d642af3cf5703c5a0d798e65597047799ecc687c1aae220e.gz/SHA256E-s2733830335--abfb7d0306f88275d642af3cf5703c5a0d798e65597047799ecc687c1aae220e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV38775";
  }
