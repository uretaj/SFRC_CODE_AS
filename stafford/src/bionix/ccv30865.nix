with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "16/8g/SHA256E-s2436732004--ac228845a4566e1c9122da226c1ebe79cee9d53e71ee78586a489bf5801db4c2.gz/SHA256E-s2436732004--ac228845a4566e1c9122da226c1ebe79cee9d53e71ee78586a489bf5801db4c2.gz";
      r2 = "5z/JM/SHA256E-s2443197646--77cce39ffe0c8e877be50b6880384e3c64041812205dea8592c7524e5a4c9660.gz/SHA256E-s2443197646--77cce39ffe0c8e877be50b6880384e3c64041812205dea8592c7524e5a4c9660.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9g/F6/SHA256E-s2417926060--8d2ad42f90f98ee1bf1eefbd9234ada1f2f7403b86ef4dfb1deb424596384b7a.gz/SHA256E-s2417926060--8d2ad42f90f98ee1bf1eefbd9234ada1f2f7403b86ef4dfb1deb424596384b7a.gz";
      r2 = "J3/3v/SHA256E-s2423470810--0f5c384f818017eb0c34a63e13eae05cdced6dd5beca97b7fa07a420b73c1674.gz/SHA256E-s2423470810--0f5c384f818017eb0c34a63e13eae05cdced6dd5beca97b7fa07a420b73c1674.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV30865";
  }
