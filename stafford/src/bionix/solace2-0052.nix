with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "4K/f2/SHA256E-s2954959928--a7938fd686bb838929c10a5a07a75cd085eb9613a06f78b734ca8b6c08aacc6c.gz/SHA256E-s2954959928--a7938fd686bb838929c10a5a07a75cd085eb9613a06f78b734ca8b6c08aacc6c.gz";
      r2 = "51/2K/SHA256E-s2996954164--012ceb484cebc5dcf65fcd1ff9ce2b266ce000c1b1fe95ed927f47c973391573.gz/SHA256E-s2996954164--012ceb484cebc5dcf65fcd1ff9ce2b266ce000c1b1fe95ed927f47c973391573.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "XJ/Vg/SHA256E-s2989542146--ac64b8d0dd67d92221e9a34ef308cdad38ab9058309ab30a38ae2b2838fd369e.gz/SHA256E-s2989542146--ac64b8d0dd67d92221e9a34ef308cdad38ab9058309ab30a38ae2b2838fd369e.gz";
      r2 = "vj/Gw/SHA256E-s3018936467--482a1d65bcdb70140f67ba096ebc5028c4f1d0ec7ab89caf4b08d25aff154109.gz/SHA256E-s3018936467--482a1d65bcdb70140f67ba096ebc5028c4f1d0ec7ab89caf4b08d25aff154109.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "1J/KK/SHA256E-s3020209105--0a4408be8e47ebbbdce898b689dd279f84281e7c06a64e19f601c1db074456a7.gz/SHA256E-s3020209105--0a4408be8e47ebbbdce898b689dd279f84281e7c06a64e19f601c1db074456a7.gz";
      r2 = "xZ/6M/SHA256E-s3041030120--56b0a11c06e1768d2a084d34b6a2beb2c67390fe0cc953c67c8964b4720f0746.gz/SHA256E-s3041030120--56b0a11c06e1768d2a084d34b6a2beb2c67390fe0cc953c67c8964b4720f0746.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "9m/QX/SHA256E-s2949699026--b40423d88fc2a062826cb1a8ae4759dc53b93821802df7e74cbd035fd2da5841.gz/SHA256E-s2949699026--b40423d88fc2a062826cb1a8ae4759dc53b93821802df7e74cbd035fd2da5841.gz";
      r2 = "6J/M4/SHA256E-s2970628800--66a6ab9948f1b171715cf235051b635f80e410c3c5460eac77fb22a5802eff0f.gz/SHA256E-s2970628800--66a6ab9948f1b171715cf235051b635f80e410c3c5460eac77fb22a5802eff0f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "11/FF/SHA256E-s775612930--8d1fcd169dc074393c9610d42c64e4db56b0453a1b6c2fca78ab986fea9f1339.gz/SHA256E-s775612930--8d1fcd169dc074393c9610d42c64e4db56b0453a1b6c2fca78ab986fea9f1339.gz";
      r2 = "3K/wf/SHA256E-s775566068--dc9ac4b7d5fca4dd76c9463d0664d944e110a0849d97f7f1f55a5411df373c72.gz/SHA256E-s775566068--dc9ac4b7d5fca4dd76c9463d0664d944e110a0849d97f7f1f55a5411df373c72.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "26/F9/SHA256E-s787341817--153feca37b8606c9b62a41baf9d7676462307c6c1d78fc2a7b021693d338ab53.gz/SHA256E-s787341817--153feca37b8606c9b62a41baf9d7676462307c6c1d78fc2a7b021693d338ab53.gz";
      r2 = "8J/9V/SHA256E-s786225750--998a868093ae2113e35a79895d8a2a66e35ba545ae7aaae0a7ebec443bc64ea9.gz/SHA256E-s786225750--998a868093ae2113e35a79895d8a2a66e35ba545ae7aaae0a7ebec443bc64ea9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "79/Mw/SHA256E-s784823512--0cc99ee4844133ebb6f06f8b90746322b7db762c5651039155f5a741e44b9b02.gz/SHA256E-s784823512--0cc99ee4844133ebb6f06f8b90746322b7db762c5651039155f5a741e44b9b02.gz";
      r2 = "wX/5v/SHA256E-s780633732--cc68ae2b8e21bf6b0bc073e9955e8ca948d307682b433a22696a31ea349985d4.gz/SHA256E-s780633732--cc68ae2b8e21bf6b0bc073e9955e8ca948d307682b433a22696a31ea349985d4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0052";
    typeHla = true;
    capture = TwistV2HR;
  }
