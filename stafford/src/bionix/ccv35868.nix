with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2v/q5/SHA256E-s1356505372--c826b115c500dcb7ae9db71a749a40036d6063062cbe34aa405a517b9ca10b4f.gz/SHA256E-s1356505372--c826b115c500dcb7ae9db71a749a40036d6063062cbe34aa405a517b9ca10b4f.gz";
      r2 = "5x/pj/SHA256E-s1358546667--4b1f8188beac37e4197e0d4872d6efe4a9b702f31cf9e6d356995bcb57a0b523.gz/SHA256E-s1358546667--4b1f8188beac37e4197e0d4872d6efe4a9b702f31cf9e6d356995bcb57a0b523.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VX/93/SHA256E-s1364947290--edded1307c521dd5fd720da98e10a7bc2efee32f81c035a02836629d8a673c1c.gz/SHA256E-s1364947290--edded1307c521dd5fd720da98e10a7bc2efee32f81c035a02836629d8a673c1c.gz";
      r2 = "0x/V4/SHA256E-s1366677188--ded3728effafc1eb944a1d5267e6b749f7289cef4060babd14bd7278b5ac0dd2.gz/SHA256E-s1366677188--ded3728effafc1eb944a1d5267e6b749f7289cef4060babd14bd7278b5ac0dd2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV35868";
  }
