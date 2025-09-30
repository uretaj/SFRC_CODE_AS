with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VF/6z/SHA256E-s1517136375--d8132b7597909179119fd99cc5ade091936084d72956d06ae8aa651128c930e9.gz/SHA256E-s1517136375--d8132b7597909179119fd99cc5ade091936084d72956d06ae8aa651128c930e9.gz";
      r2 = "fW/04/SHA256E-s1537494690--5900b16f1f5132c996df739ad61ed6343d9a9c52cd2a5e0378d9942526727dc7.gz/SHA256E-s1537494690--5900b16f1f5132c996df739ad61ed6343d9a9c52cd2a5e0378d9942526727dc7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GW/P8/SHA256E-s1517444434--c36a4c0068c4ab96f17fc8b220e0ccda87c96dafd98cf2de8a81858e135ef6ca.gz/SHA256E-s1517444434--c36a4c0068c4ab96f17fc8b220e0ccda87c96dafd98cf2de8a81858e135ef6ca.gz";
      r2 = "XK/qw/SHA256E-s1537568630--fc7892a555000c1f89ede95de8899c4d19987004a6d08cb9069bd6d889c51b8e.gz/SHA256E-s1537568630--fc7892a555000c1f89ede95de8899c4d19987004a6d08cb9069bd6d889c51b8e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV34224";
  }
