with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2X";
      class = "tumours";
      pdx = false;
      r1 = "17/4g/SHA256E-s12742221836--8f14d6444ce788baa382a3161799dba8525b4e5f1309c646aa0802e4b602742d.gz/SHA256E-s12742221836--8f14d6444ce788baa382a3161799dba8525b4e5f1309c646aa0802e4b602742d.gz";
      r2 = "gP/wf/SHA256E-s13005120041--b2d7687499dadca0e827b56d60d9297354acb1d5bec82de285945442f237c638.gz/SHA256E-s13005120041--b2d7687499dadca0e827b56d60d9297354acb1d5bec82de285945442f237c638.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VG/6v/SHA256E-s4571290157--5c8dfd46cf966cdd6696ab09e51fb0210ec77e97b2802610dff8225c363b701d.gz/SHA256E-s4571290157--5c8dfd46cf966cdd6696ab09e51fb0210ec77e97b2802610dff8225c363b701d.gz";
      r2 = "28/VQ/SHA256E-s4713812426--fa4ba6eabba8ffe9b47285a827fc67588470a895e7738ff26b60146670453c82.gz/SHA256E-s4713812426--fa4ba6eabba8ffe9b47285a827fc67588470a895e7738ff26b60146670453c82.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0059";
  }
