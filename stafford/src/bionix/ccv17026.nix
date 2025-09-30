with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fj/05/SHA256E-s697994068--3557af1008da10a9630797428c634b2bee54c51b18faacd2c2814611cbbb7525.gz/SHA256E-s697994068--3557af1008da10a9630797428c634b2bee54c51b18faacd2c2814611cbbb7525.gz";
      r2 = "VQ/3K/SHA256E-s695023203--e07f685c19205d0f3b73f7a1cabb50fbfd7b56af040d6f8350f5c1bef0e803de.gz/SHA256E-s695023203--e07f685c19205d0f3b73f7a1cabb50fbfd7b56af040d6f8350f5c1bef0e803de.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV17026";
  }
