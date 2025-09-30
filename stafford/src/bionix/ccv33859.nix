with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "89/m8/SHA256E-s2627063293--0c974da745c470ffe65c722c0c7126b475b7345a648a511e99248d843bbe8fa4.gz/SHA256E-s2627063293--0c974da745c470ffe65c722c0c7126b475b7345a648a511e99248d843bbe8fa4.gz";
      r2 = "Ww/Fx/SHA256E-s2677778025--e72f7e7ad5cfd477f71a6620359ddb684b673bfd24296b6870ffaa8a43b43706.gz/SHA256E-s2677778025--e72f7e7ad5cfd477f71a6620359ddb684b673bfd24296b6870ffaa8a43b43706.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jf/W2/SHA256E-s2648847183--5a0f263e081c476839cab9a5f18821fd63a15befc8e257695464f37223b90d83.gz/SHA256E-s2648847183--5a0f263e081c476839cab9a5f18821fd63a15befc8e257695464f37223b90d83.gz";
      r2 = "X7/0Q/SHA256E-s2700039220--937177c9a05f83565f18f1df40a377bfbcc816c1753c094177f4a5df5c6022ae.gz/SHA256E-s2700039220--937177c9a05f83565f18f1df40a377bfbcc816c1753c094177f4a5df5c6022ae.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV33859";
  }
