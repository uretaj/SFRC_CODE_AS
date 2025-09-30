with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "mX/Kg/SHA256E-s12577796544--86950d2a88fa10bf01e1c669503bad61bae5c836090f7032ffd577aec516ccb3.gz/SHA256E-s12577796544--86950d2a88fa10bf01e1c669503bad61bae5c836090f7032ffd577aec516ccb3.gz";
      r2 = "kM/W3/SHA256E-s12898274388--1c2dd8780c88b5036fe629ddcd932d0c37ab7369287b1c949ad97a58c0071b54.gz/SHA256E-s12898274388--1c2dd8780c88b5036fe629ddcd932d0c37ab7369287b1c949ad97a58c0071b54.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "QP/JW/SHA256E-s5848900210--5096e291fdf2b7c6030b4a0e02d70773efb3eab61f96baac3cdd52e9834c4259.gz/SHA256E-s5848900210--5096e291fdf2b7c6030b4a0e02d70773efb3eab61f96baac3cdd52e9834c4259.gz";
      r2 = "zZ/q5/SHA256E-s6155473897--15076f97f4152a7abd023fd3015edd43aa27c7d05409684f67b42f323450f3c1.gz/SHA256E-s6155473897--15076f97f4152a7abd023fd3015edd43aa27c7d05409684f67b42f323450f3c1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0141";
  }
