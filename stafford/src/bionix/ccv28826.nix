with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fq/5q/SHA256E-s994253598--850403ce49c6b7356e06e3074935b4c5c77f63b5d19ef5b33d567985ae13bb94.gz/SHA256E-s994253598--850403ce49c6b7356e06e3074935b4c5c77f63b5d19ef5b33d567985ae13bb94.gz";
      r2 = "QF/fJ/SHA256E-s1003797105--037626571a5a11f915fc44d1c85d7054eefe6c6ffbd212425ae05388e46fb2a0.gz/SHA256E-s1003797105--037626571a5a11f915fc44d1c85d7054eefe6c6ffbd212425ae05388e46fb2a0.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7q/2j/SHA256E-s934061098--ef2349a275b8bbf2699af5f667175d92636a33c7b4539ac259c9ac549e56c061.gz/SHA256E-s934061098--ef2349a275b8bbf2699af5f667175d92636a33c7b4539ac259c9ac549e56c061.gz";
      r2 = "KQ/Wx/SHA256E-s935463359--6c32d0f8069aa51f36275e28ca2c3c6cb9c5beddd32bf81c13917e47ad43f2cc.gz/SHA256E-s935463359--6c32d0f8069aa51f36275e28ca2c3c6cb9c5beddd32bf81c13917e47ad43f2cc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV28826";
  }
