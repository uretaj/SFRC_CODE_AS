with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q0/mX/SHA256E-s2314157887--847353ba686dc576bec6c6196feb9c1b320d29a3ab90cb37678be2e7c80f8fe0.gz/SHA256E-s2314157887--847353ba686dc576bec6c6196feb9c1b320d29a3ab90cb37678be2e7c80f8fe0.gz";
      r2 = "gX/PX/SHA256E-s2337014961--a85926169b02c8844bf3eaf75cf8202673dde298f9a238308762750e3b2f37fb.gz/SHA256E-s2337014961--a85926169b02c8844bf3eaf75cf8202673dde298f9a238308762750e3b2f37fb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV10520";
  }
