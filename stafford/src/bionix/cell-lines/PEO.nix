with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "PEO1";
      pdx = false;
      r1 = "PM/44/SHA256E-s6129414884--d3168c000f237bab98ad180e2820ed75f6843ca9337e64ba09135a54cd8adf9b.gz/SHA256E-s6129414884--d3168c000f237bab98ad180e2820ed75f6843ca9337e64ba09135a54cd8adf9b.gz";
      r2 = "ZZ/MK/SHA256E-s6330200462--b3f882a18fc84d51b494e52d96719008c9f6e577047f3e6db0b228d589748a81.gz/SHA256E-s6330200462--b3f882a18fc84d51b494e52d96719008c9f6e577047f3e6db0b228d589748a81.gz";
    }
    {
      site = "PEO4";
      pdx = false;
      r1 = "2p/mk/SHA256E-s5812786408--9a28fde4134cc3e3cfbf64c80f366aefdecf6dc4e6e42bfaad9c13c56791b184.gz/SHA256E-s5812786408--9a28fde4134cc3e3cfbf64c80f366aefdecf6dc4e6e42bfaad9c13c56791b184.gz";
      r2 = "0G/KQ/SHA256E-s5969919454--1d7f5214aed8a7701b1d6e30aa85df9f00f061dfdec0072cf3fc5f75e80fd30d.gz/SHA256E-s5969919454--1d7f5214aed8a7701b1d6e30aa85df9f00f061dfdec0072cf3fc5f75e80fd30d.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "PEO";
    capture = TwistVCGS;
  }
