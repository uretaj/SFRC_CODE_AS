with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "98/3J/SHA256E-s2633195907--f27e1db9a098b5214df40f714628f34ff1f64dd6a7cee457cf8130c8fae4ffaa.gz/SHA256E-s2633195907--f27e1db9a098b5214df40f714628f34ff1f64dd6a7cee457cf8130c8fae4ffaa.gz";
      r2 = "6v/M6/SHA256E-s2659229493--98d7690f3698b9dd7070df9de51977d9cbd3b71af3a590ae0478c45c519e7b1e.gz/SHA256E-s2659229493--98d7690f3698b9dd7070df9de51977d9cbd3b71af3a590ae0478c45c519e7b1e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV10848";
  }
