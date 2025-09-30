with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4m/Pq/SHA256E-s2781970406--259e707293ebfd31f970913efc3a981f79b516688bb8d55427c240b5d3070531.gz/SHA256E-s2781970406--259e707293ebfd31f970913efc3a981f79b516688bb8d55427c240b5d3070531.gz";
      r2 = "MF/qV/SHA256E-s2944879536--d72277e434e36e4f67dc9cec54eb4f146305b83b8d75b27c4189f2fb456fa607.gz/SHA256E-s2944879536--d72277e434e36e4f67dc9cec54eb4f146305b83b8d75b27c4189f2fb456fa607.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV41651";
  }
