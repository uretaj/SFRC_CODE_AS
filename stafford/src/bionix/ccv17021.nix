with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "54/xz/SHA256E-s9143980206--9050aba01286dbedcc2d69b78bf83c9859fdf18bd185573b42576d08251ed33c.gz/SHA256E-s9143980206--9050aba01286dbedcc2d69b78bf83c9859fdf18bd185573b42576d08251ed33c.gz";
      r2 = "pj/fm/SHA256E-s9215630720--b28fa825f8577c1483983253fbfcef6a10ab7a5923d0f1f3b6c6628ea69514fb.gz/SHA256E-s9215630720--b28fa825f8577c1483983253fbfcef6a10ab7a5923d0f1f3b6c6628ea69514fb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV17021";
  }
