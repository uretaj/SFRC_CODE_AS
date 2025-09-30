with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xf/VX/SHA256E-s2023160363--184283557a8d5d3ebef5c8da59f3c29c249557b4ecfe6df6190e5733f3c990c5.gz/SHA256E-s2023160363--184283557a8d5d3ebef5c8da59f3c29c249557b4ecfe6df6190e5733f3c990c5.gz";
      r2 = "Xg/f7/SHA256E-s2034049765--7b774e70f9815606c237dae1eb0fa31159533180f14f58ca9845ab6bde962abf.gz/SHA256E-s2034049765--7b774e70f9815606c237dae1eb0fa31159533180f14f58ca9845ab6bde962abf.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KP/K2/SHA256E-s1947806766--1946e0a144eee986a0e29a3780f879c48fe1d7eaee67c3e0b4d5f8a4a4f7bd04.gz/SHA256E-s1947806766--1946e0a144eee986a0e29a3780f879c48fe1d7eaee67c3e0b4d5f8a4a4f7bd04.gz";
      r2 = "f7/mv/SHA256E-s1944665915--e377caacc7026cbadd761e7063ef7a7d4045a67bc8e5488ec2a64c083a20b1d3.gz/SHA256E-s1944665915--e377caacc7026cbadd761e7063ef7a7d4045a67bc8e5488ec2a64c083a20b1d3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV25912";
  }
