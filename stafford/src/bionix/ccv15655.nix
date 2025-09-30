with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gV/K4/SHA256E-s1189235713--34e53c8d3131148c01b737fef94339b8f187824912977102417c34621d298209.gz/SHA256E-s1189235713--34e53c8d3131148c01b737fef94339b8f187824912977102417c34621d298209.gz";
      r2 = "88/fK/SHA256E-s1195789402--2f50cdcb2ddbe2b9615f366fdcd61f42b91a6fec7d1afc56579a9654f77c1bb0.gz/SHA256E-s1195789402--2f50cdcb2ddbe2b9615f366fdcd61f42b91a6fec7d1afc56579a9654f77c1bb0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV15655";
  }
