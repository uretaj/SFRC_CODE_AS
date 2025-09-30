with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "7K/vW/SHA256E-s14432886421--c5f4f1df5e14971808d1cf2c62b1b5afc5356650ff379fd447b8b6b7fd50a042.gz/SHA256E-s14432886421--c5f4f1df5e14971808d1cf2c62b1b5afc5356650ff379fd447b8b6b7fd50a042.gz";
      r2 = "4q/Vx/SHA256E-s14845925230--886c416314626fe28e7e5d7c6a7e3dfcb67756d3b2834301dddeba2966d159d1.gz/SHA256E-s14845925230--886c416314626fe28e7e5d7c6a7e3dfcb67756d3b2834301dddeba2966d159d1.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "22/zF/SHA256E-s5992006623--f92aadb22342a151a6253d4b34fcbec8cfd2f407d0c135312dccfe8bb9818797.gz/SHA256E-s5992006623--f92aadb22342a151a6253d4b34fcbec8cfd2f407d0c135312dccfe8bb9818797.gz";
      r2 = "1k/Gv/SHA256E-s6684147731--7df83ef210e29417f5c35dd8214bdbbbe2f3e038ba3f92b357c9e3567a70a8b0.gz/SHA256E-s6684147731--7df83ef210e29417f5c35dd8214bdbbbe2f3e038ba3f92b357c9e3567a70a8b0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0048";
  }
