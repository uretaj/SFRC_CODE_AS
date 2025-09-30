with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2x/wW/SHA256E-s2288228139--9b64771d9042257945b184d602a54f91ca0a7bcc65969c5380dac3084047573c.gz/SHA256E-s2288228139--9b64771d9042257945b184d602a54f91ca0a7bcc65969c5380dac3084047573c.gz";
      r2 = "fj/Gp/SHA256E-s2305424131--e4ead636413e16f6b652893fe31837d2c27a3fe9a5ac940be6f0b41c712caa38.gz/SHA256E-s2305424131--e4ead636413e16f6b652893fe31837d2c27a3fe9a5ac940be6f0b41c712caa38.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV4751";
  }
