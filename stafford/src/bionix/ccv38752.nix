with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "69/4M/SHA256E-s4254723660--07617fc49f51b62ceb157f33967a9eede197ef2083c3fa46465518fcc5cf499f.gz/SHA256E-s4254723660--07617fc49f51b62ceb157f33967a9eede197ef2083c3fa46465518fcc5cf499f.gz";
      r2 = "9j/pz/SHA256E-s4343881625--f8b5ef8f7ab8fa504cfa815f3c1885f39304d4a963d94ea8d7bc7e9b5509a104.gz/SHA256E-s4343881625--f8b5ef8f7ab8fa504cfa815f3c1885f39304d4a963d94ea8d7bc7e9b5509a104.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV38752";
  }
