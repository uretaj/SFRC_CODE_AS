with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9m/8p/SHA256E-s2854374520--b0424342f4671999ceff335915f6a1093bd2bc6f6203d3872a37fd3e9bceb3a6.gz/SHA256E-s2854374520--b0424342f4671999ceff335915f6a1093bd2bc6f6203d3872a37fd3e9bceb3a6.gz";
      r2 = "Gk/fw/SHA256E-s2874584027--fd021413f3c3722ab194f41a1924eeb62c5d653c923794344041485afe767e24.gz/SHA256E-s2874584027--fd021413f3c3722ab194f41a1924eeb62c5d653c923794344041485afe767e24.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9M/5q/SHA256E-s2741762326--8a73cdfab2a8076c1f08fccbf303e546f3cba5e3171c135345a1a73bdf4293fd.gz/SHA256E-s2741762326--8a73cdfab2a8076c1f08fccbf303e546f3cba5e3171c135345a1a73bdf4293fd.gz";
      r2 = "mf/fP/SHA256E-s2741520669--dfa7888789f873e9e4d420cec79813894a6f507368ed357e735ea19476cef91d.gz/SHA256E-s2741520669--dfa7888789f873e9e4d420cec79813894a6f507368ed357e735ea19476cef91d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV22606";
  }
