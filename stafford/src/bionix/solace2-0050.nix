with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "7V/fv/SHA256E-s2594822686--e1654b4272e759148851a3201db11b18ce3eaff7048ad572207f68130c16920a.gz/SHA256E-s2594822686--e1654b4272e759148851a3201db11b18ce3eaff7048ad572207f68130c16920a.gz";
      r2 = "wX/Zz/SHA256E-s2593301555--0d7b3ebc2fb8a2d9a6b1e67de02afd34f6cf163e6fa53de3d9b4712d3d90331a.gz/SHA256E-s2593301555--0d7b3ebc2fb8a2d9a6b1e67de02afd34f6cf163e6fa53de3d9b4712d3d90331a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "89/kz/SHA256E-s982002758--806fc7750b7c7c8a48e219b0cf26e0ffae130496165414e3de59e8978fbe46e1.gz/SHA256E-s982002758--806fc7750b7c7c8a48e219b0cf26e0ffae130496165414e3de59e8978fbe46e1.gz";
      r2 = "j9/5Z/SHA256E-s985912913--eb8c2e0afa5bf5465c5725be36368ad5f0ce2aa073f3b20b08e590f73743aac3.gz/SHA256E-s985912913--eb8c2e0afa5bf5465c5725be36368ad5f0ce2aa073f3b20b08e590f73743aac3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "vV/4K/SHA256E-s988877536--4d95c9f9cfb174fdaa5fb4debba0fee55cc0f5054f2c70ade72bdc072924a61a.gz/SHA256E-s988877536--4d95c9f9cfb174fdaa5fb4debba0fee55cc0f5054f2c70ade72bdc072924a61a.gz";
      r2 = "4X/v7/SHA256E-s991459286--22e915f61d28662455dd3b6e5b086d6d1e143fd0ebd1ba60a1145c02a47bed94.gz/SHA256E-s991459286--22e915f61d28662455dd3b6e5b086d6d1e143fd0ebd1ba60a1145c02a47bed94.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "K9/4M/SHA256E-s986898678--b836b0f6ca3d3ee620afb155dfe1f37b21abda7f7eb4e87cc32324b918d69918.gz/SHA256E-s986898678--b836b0f6ca3d3ee620afb155dfe1f37b21abda7f7eb4e87cc32324b918d69918.gz";
      r2 = "Vx/Q9/SHA256E-s985123310--2ab8b22df1fa1bfe6db978e149abefca16c8807e868f7cec7f6d73905156cd33.gz/SHA256E-s985123310--2ab8b22df1fa1bfe6db978e149abefca16c8807e868f7cec7f6d73905156cd33.gz";
    }
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "J0/MF/SHA256E-s5352432070--fa63f3fdae653e37b2a948de9bdfb1515b188cd053a8e13db96d8f58e66ca82d.gz/SHA256E-s5352432070--fa63f3fdae653e37b2a948de9bdfb1515b188cd053a8e13db96d8f58e66ca82d.gz";
      r2 = "32/8z/SHA256E-s5352848990--e510be6287b3c19bb6878c2a03dfd6427431bf1add2e287c6beead77c807b24c.gz/SHA256E-s5352848990--e510be6287b3c19bb6878c2a03dfd6427431bf1add2e287c6beead77c807b24c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0050";
    typeHla = true;
    capture = TwistV2HR;
  }
