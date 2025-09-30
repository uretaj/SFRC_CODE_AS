with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gV/Vp/SHA256E-s4692639925--7f20793d4a9842b2b8a42fd6d0e2c3d85703517e3fc2d9dc0d940e34aeede5e3.gz/SHA256E-s4692639925--7f20793d4a9842b2b8a42fd6d0e2c3d85703517e3fc2d9dc0d940e34aeede5e3.gz";
      r2 = "KK/4x/SHA256E-s4683663806--c12068bbd91264970a15247f3949f9e25c7403d2257939548f84fd9cf87594d2.gz/SHA256E-s4683663806--c12068bbd91264970a15247f3949f9e25c7403d2257939548f84fd9cf87594d2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV9830";
  }
