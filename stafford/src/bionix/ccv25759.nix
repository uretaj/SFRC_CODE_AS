with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g6/km/SHA256E-s2677507656--9f36f6a5f356e864d3b82dd088d808091b7714dbd005149e1a1c6d550b36644e.gz/SHA256E-s2677507656--9f36f6a5f356e864d3b82dd088d808091b7714dbd005149e1a1c6d550b36644e.gz";
      r2 = "7z/2j/SHA256E-s2720663116--26914914d0d2480fd9ae11cd9c5f00fc91bab02e754df60314bd2cdc11b640e2.gz/SHA256E-s2720663116--26914914d0d2480fd9ae11cd9c5f00fc91bab02e754df60314bd2cdc11b640e2.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FJ/Pv/SHA256E-s2502410088--07cb1f1f9924d236798a9c8e34d67437b4185b06e317db4a7d3f0a22bd1233d2.gz/SHA256E-s2502410088--07cb1f1f9924d236798a9c8e34d67437b4185b06e317db4a7d3f0a22bd1233d2.gz";
      r2 = "gz/6W/SHA256E-s2522063433--adcbd4551de4c25150ec5a9b2f7f9f0c383d3d077f695718ad3070316cf71ea6.gz/SHA256E-s2522063433--adcbd4551de4c25150ec5a9b2f7f9f0c383d3d077f695718ad3070316cf71ea6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV25759";
  }
