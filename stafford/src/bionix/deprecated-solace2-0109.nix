with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "qM/pQ/SHA256E-s14250549089--1ebf4b6b0706610e568cf919884e4603cb4ab9eb60015009650d1577f17c56c8.gz/SHA256E-s14250549089--1ebf4b6b0706610e568cf919884e4603cb4ab9eb60015009650d1577f17c56c8.gz";
      r2 = "5x/0Q/SHA256E-s14494408199--c93c6c04049b5fc1c17ddb47438176442354fa45eb07b74fc05d185af1eacd2a.gz/SHA256E-s14494408199--c93c6c04049b5fc1c17ddb47438176442354fa45eb07b74fc05d185af1eacd2a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5M/jz/SHA256E-s5346757700--c3de09038d3cde91a679723f2fd8fffed2d2661ce88db37b0076ee2aa8e3ca51.gz/SHA256E-s5346757700--c3de09038d3cde91a679723f2fd8fffed2d2661ce88db37b0076ee2aa8e3ca51.gz";
      r2 = "qW/1f/SHA256E-s5447813135--e03af60a7678e3a8cb7d3cafc568a67cca12068e3f80cebe03df714ea7c88187.gz/SHA256E-s5447813135--e03af60a7678e3a8cb7d3cafc568a67cca12068e3f80cebe03df714ea7c88187.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0109";
    capture = CREv2;
  }
