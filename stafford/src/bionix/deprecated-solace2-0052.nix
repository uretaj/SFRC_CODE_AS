with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "2Z/5v/SHA256E-s10595399837--474897008442279f5e67848b5b10c11b6bc5c08bb812570c9faeba1416d0df21.gz/SHA256E-s10595399837--474897008442279f5e67848b5b10c11b6bc5c08bb812570c9faeba1416d0df21.gz";
      r2 = "47/9F/SHA256E-s10842806807--ba3d2adb48aea91169387b741a553dd573264f4cfd4550eb38c67b9f66491d2d.gz/SHA256E-s10842806807--ba3d2adb48aea91169387b741a553dd573264f4cfd4550eb38c67b9f66491d2d.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5J/w9/SHA256E-s5591362878--af66a82b3bab3b0d265f4d44c735b01f0d85cb572069c523cecf1f809d61c564.gz/SHA256E-s5591362878--af66a82b3bab3b0d265f4d44c735b01f0d85cb572069c523cecf1f809d61c564.gz";
      r2 = "jm/g9/SHA256E-s5997614345--e017052fe759689e7ecf0112bd8043656126849585a05d4336ea51708442ed1d.gz/SHA256E-s5997614345--e017052fe759689e7ecf0112bd8043656126849585a05d4336ea51708442ed1d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0052";
  }
