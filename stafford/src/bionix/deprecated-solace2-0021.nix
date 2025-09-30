with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "ff/6P/SHA256E-s13058520017--19774821e8f571378c987166c385eaf2d0905280f7ffef3f140d3077adda540b.gz/SHA256E-s13058520017--19774821e8f571378c987166c385eaf2d0905280f7ffef3f140d3077adda540b.gz";
      r2 = "3j/f0/SHA256E-s13625817546--791263df4421469f2bad5dad9bdd7f82e4703258b54884c0b77f40af03e9e807.gz/SHA256E-s13625817546--791263df4421469f2bad5dad9bdd7f82e4703258b54884c0b77f40af03e9e807.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "GQ/mg/SHA256E-s4770110512--9845b5735f791cca7979782d4fa67cef1fb5d64165ae853371eb9dfa852ca1e6.gz/SHA256E-s4770110512--9845b5735f791cca7979782d4fa67cef1fb5d64165ae853371eb9dfa852ca1e6.gz";
      r2 = "fF/p9/SHA256E-s4822447121--92263cc04c32ece97f94644de06898de1d1963b0e646ec34701a95510b89ac9f.gz/SHA256E-s4822447121--92263cc04c32ece97f94644de06898de1d1963b0e646ec34701a95510b89ac9f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0021";
  }
