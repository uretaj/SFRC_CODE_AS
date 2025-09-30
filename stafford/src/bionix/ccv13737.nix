with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Wk/Xx/SHA256E-s7345445494--7725807b0097763dd2b5da3a13c7158a78744fdf070bceaf851ec7de7d6dedbd.gz/SHA256E-s7345445494--7725807b0097763dd2b5da3a13c7158a78744fdf070bceaf851ec7de7d6dedbd.gz";
      r2 = "4k/Xw/SHA256E-s7379707418--da2c105acd7ee040e20d3b2de05f0a21e691c2abaef3b5b3d6c4a698e7818499.gz/SHA256E-s7379707418--da2c105acd7ee040e20d3b2de05f0a21e691c2abaef3b5b3d6c4a698e7818499.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV13737";
  }
