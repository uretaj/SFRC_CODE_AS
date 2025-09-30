with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xX/Z6/SHA256E-s7829447289--c64e3ab805aedc1f112f858f23ae3fce6bd81ad1bbb7ff26262e4edf5894b1c8.gz/SHA256E-s7829447289--c64e3ab805aedc1f112f858f23ae3fce6bd81ad1bbb7ff26262e4edf5894b1c8.gz";
      r2 = "ZW/jk/SHA256E-s7781840639--43e3decb0cd57f856dd92e57d908589b8ba6dfee3b6f6a6341093c42967a43be.gz/SHA256E-s7781840639--43e3decb0cd57f856dd92e57d908589b8ba6dfee3b6f6a6341093c42967a43be.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV15539";
  }
