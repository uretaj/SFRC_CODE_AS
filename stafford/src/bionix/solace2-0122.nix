with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "xP/XV/SHA256E-s1961143983--a09e72810cd4761260390eab20001b59533f6f468c24abe60dda6faa09e1a574.gz/SHA256E-s1961143983--a09e72810cd4761260390eab20001b59533f6f468c24abe60dda6faa09e1a574.gz";
      r2 = "62/QP/SHA256E-s1993626753--b7ce232c9667f9699ff65131a9ef101e0318475e3f89c7cfa294e82f3868fb0e.gz/SHA256E-s1993626753--b7ce232c9667f9699ff65131a9ef101e0318475e3f89c7cfa294e82f3868fb0e.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Kw/m2/SHA256E-s1969185080--b18a8a8c991be1c20fbd4cd1063b3e66814c895d8851b7395c95c7e1026624cb.gz/SHA256E-s1969185080--b18a8a8c991be1c20fbd4cd1063b3e66814c895d8851b7395c95c7e1026624cb.gz";
      r2 = "F4/pV/SHA256E-s1992418114--ffc1c71b6e0c9ef17f46d32fcddb60562482b49283dbdf03a7f3863b10bf617e.gz/SHA256E-s1992418114--ffc1c71b6e0c9ef17f46d32fcddb60562482b49283dbdf03a7f3863b10bf617e.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "VZ/m0/SHA256E-s1971459185--648c5423e60fe28b4e47831555e2d8e9cb214acd6a7b272e15e335b4696a287c.gz/SHA256E-s1971459185--648c5423e60fe28b4e47831555e2d8e9cb214acd6a7b272e15e335b4696a287c.gz";
      r2 = "qG/fm/SHA256E-s1989889356--833e947c8da7db8776eb9f0092d614ad81a0c0ced21d2ad8554a0e16af7e92df.gz/SHA256E-s1989889356--833e947c8da7db8776eb9f0092d614ad81a0c0ced21d2ad8554a0e16af7e92df.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "7X/xF/SHA256E-s1942565918--8f4f5e35c9cd1aeaa9fc2a5a427e6e880685a4a513c3319a9c2c4471d8029ce9.gz/SHA256E-s1942565918--8f4f5e35c9cd1aeaa9fc2a5a427e6e880685a4a513c3319a9c2c4471d8029ce9.gz";
      r2 = "pj/KG/SHA256E-s1960946341--db9ece3f1778d3bf38ed56c454f2856bd6a96e0553da5c6ffc05c394779ed08a.gz/SHA256E-s1960946341--db9ece3f1778d3bf38ed56c454f2856bd6a96e0553da5c6ffc05c394779ed08a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "fW/6k/SHA256E-s930592410--8e60af202cf24ffc6ae9fa2df941f00f080f72d42e8c2c5b18e7247b32aa7f9f.gz/SHA256E-s930592410--8e60af202cf24ffc6ae9fa2df941f00f080f72d42e8c2c5b18e7247b32aa7f9f.gz";
      r2 = "49/3Z/SHA256E-s932207759--3bad4aca0c742a1cd1bc504207f79a51557989e13f24a870381a090822bfb6e3.gz/SHA256E-s932207759--3bad4aca0c742a1cd1bc504207f79a51557989e13f24a870381a090822bfb6e3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "zg/XZ/SHA256E-s941680186--4692c31315ea1ac21a2dbddd84282ca04f8b9b25cd3b00ea067c517260581df3.gz/SHA256E-s941680186--4692c31315ea1ac21a2dbddd84282ca04f8b9b25cd3b00ea067c517260581df3.gz";
      r2 = "5V/g7/SHA256E-s942331809--163eedfd96ad3a9d1b385a7210c3466201e400c2a35ce3bec1ca162b84f4ad41.gz/SHA256E-s942331809--163eedfd96ad3a9d1b385a7210c3466201e400c2a35ce3bec1ca162b84f4ad41.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "13/4f/SHA256E-s939112596--552d0a5e225b0470ce7e1a1d2a1181622618c0ac187d98ab4ff646dcbbb033e9.gz/SHA256E-s939112596--552d0a5e225b0470ce7e1a1d2a1181622618c0ac187d98ab4ff646dcbbb033e9.gz";
      r2 = "0q/Qx/SHA256E-s935796763--439b7d54d84cf550ffc455e55ee3c045f1daee8d10a944a826839612a0c47a91.gz/SHA256E-s935796763--439b7d54d84cf550ffc455e55ee3c045f1daee8d10a944a826839612a0c47a91.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0122";
    typeHla = true;
    capture = TwistV2HR;
  }
