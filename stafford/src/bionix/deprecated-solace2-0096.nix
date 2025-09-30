with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "wz/F4/SHA256E-s15165488841--c4b048196d284426cb4053296c6efa1ff5efc09a6412aa5d1f9df849e1c0fa32.gz/SHA256E-s15165488841--c4b048196d284426cb4053296c6efa1ff5efc09a6412aa5d1f9df849e1c0fa32.gz";
      r2 = "v5/MG/SHA256E-s15734975975--2eb8d94b93de4261adc1d61972d3706da3a5077e498ba647f5c9aa121370f639.gz/SHA256E-s15734975975--2eb8d94b93de4261adc1d61972d3706da3a5077e498ba647f5c9aa121370f639.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Jp/3m/SHA256E-s4784667868--3972885b748ba473c81c9960efc3126e67db94454857302d2798afdd553919f1.gz/SHA256E-s4784667868--3972885b748ba473c81c9960efc3126e67db94454857302d2798afdd553919f1.gz";
      r2 = "P7/6g/SHA256E-s4894450798--6e4db48a7e9a286df33f01a7f87f21da448cf2fd3a43e763f18bed183b3db379.gz/SHA256E-s4894450798--6e4db48a7e9a286df33f01a7f87f21da448cf2fd3a43e763f18bed183b3db379.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0096";
  }
