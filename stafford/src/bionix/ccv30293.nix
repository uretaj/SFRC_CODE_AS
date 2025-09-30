with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5j/73/SHA256E-s1294608494--ea9244e64b87790470fafedca75a7cb431810a4af0ee00fb7276f872fec19ad3.gz/SHA256E-s1294608494--ea9244e64b87790470fafedca75a7cb431810a4af0ee00fb7276f872fec19ad3.gz";
      r2 = "6z/KP/SHA256E-s1303211400--bd0a1120df0a17049b963734842c5e1d45d8b5e5774fd9750e40d6ef6bd41882.gz/SHA256E-s1303211400--bd0a1120df0a17049b963734842c5e1d45d8b5e5774fd9750e40d6ef6bd41882.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6z/GQ/SHA256E-s1306895389--422f41fa23f01e729349ed2896d2eac1d32d4940ed0c0ae1783f9f5bc7a9a282.gz/SHA256E-s1306895389--422f41fa23f01e729349ed2896d2eac1d32d4940ed0c0ae1783f9f5bc7a9a282.gz";
      r2 = "5g/m4/SHA256E-s1315662659--46fdff654e7abd07986647304cc62fb866ba275d497dd840e2c2750503b567fc.gz/SHA256E-s1315662659--46fdff654e7abd07986647304cc62fb866ba275d497dd840e2c2750503b567fc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV30293";
  }
