with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kW/62/SHA256E-s2889744328--6691e5b6ce2c235b0b38c2a78ac9e3177bf707ae55fa2651c5179d365adf4b5e.gz/SHA256E-s2889744328--6691e5b6ce2c235b0b38c2a78ac9e3177bf707ae55fa2651c5179d365adf4b5e.gz";
      r2 = "Fg/80/SHA256E-s2875755094--01f9fa48e188e76e135270b33a83c1efba9679816ec26f0d8d83770b4376bc09.gz/SHA256E-s2875755094--01f9fa48e188e76e135270b33a83c1efba9679816ec26f0d8d83770b4376bc09.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G8/3k/SHA256E-s2887228830--fccf72ee983f41163c879c9920e6858ba14b72d120398c9570d1b53b88853e10.gz/SHA256E-s2887228830--fccf72ee983f41163c879c9920e6858ba14b72d120398c9570d1b53b88853e10.gz";
      r2 = "F5/G4/SHA256E-s2852979732--379bd6c6a002de293b26c84b87bd3bf0095739f876cc4dd57fa974a0e1381854.gz/SHA256E-s2852979732--379bd6c6a002de293b26c84b87bd3bf0095739f876cc4dd57fa974a0e1381854.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV23621";
  }
