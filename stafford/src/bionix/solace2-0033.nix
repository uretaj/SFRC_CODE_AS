with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Gm/Wm/SHA256E-s728782162--4bdc82dc634d2c140f0170c0815be711915c8fc692bdd7d297aca35348056f25.gz/SHA256E-s728782162--4bdc82dc634d2c140f0170c0815be711915c8fc692bdd7d297aca35348056f25.gz";
      r2 = "p4/KQ/SHA256E-s727621205--c68a53e0d8b3cf27f3caf99dd40ee0a49bf9ea2a04d675c6594c00b0762dd61c.gz/SHA256E-s727621205--c68a53e0d8b3cf27f3caf99dd40ee0a49bf9ea2a04d675c6594c00b0762dd61c.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "ZW/77/SHA256E-s762776543--3e9d0b3427fe39570b977a990dab73c81239f65b7c532eb3f51320a52361bc2e.gz/SHA256E-s762776543--3e9d0b3427fe39570b977a990dab73c81239f65b7c532eb3f51320a52361bc2e.gz";
      r2 = "PV/gx/SHA256E-s763499660--08fc9a68d9ad95fd4527a5bbb1941247107660fa1330f41ad0a7967a9c28b67b.gz/SHA256E-s763499660--08fc9a68d9ad95fd4527a5bbb1941247107660fa1330f41ad0a7967a9c28b67b.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Mk/pJ/SHA256E-s773727902--350e4fa73a86c63568b2e72150cf29ba77e7e88f0e356a2199d59beebdf53b02.gz/SHA256E-s773727902--350e4fa73a86c63568b2e72150cf29ba77e7e88f0e356a2199d59beebdf53b02.gz";
      r2 = "2K/k1/SHA256E-s775439540--1d1240322ad40a2efb26d5b4205ed5dc4eb17cb0d21939fcc4356d2fa8ab7964.gz/SHA256E-s775439540--1d1240322ad40a2efb26d5b4205ed5dc4eb17cb0d21939fcc4356d2fa8ab7964.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "gJ/7p/SHA256E-s784146571--3a49ed12eb74bcc2085339ee7898e28164ffc6a85247bf8dabf1ba7c0dbe4379.gz/SHA256E-s784146571--3a49ed12eb74bcc2085339ee7898e28164ffc6a85247bf8dabf1ba7c0dbe4379.gz";
      r2 = "2G/Qq/SHA256E-s784991738--97765a919635f4f752eee22d581fca3f69d44cf3abdd544098f33a25d9f07b60.gz/SHA256E-s784991738--97765a919635f4f752eee22d581fca3f69d44cf3abdd544098f33a25d9f07b60.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "23/fw/SHA256E-s798011504--27f2563830e53c785ac08b38bdc7d05da72287ab1a5aa85f921dc763f39c5ec0.gz/SHA256E-s798011504--27f2563830e53c785ac08b38bdc7d05da72287ab1a5aa85f921dc763f39c5ec0.gz";
      r2 = "6Z/Xx/SHA256E-s799275936--f4e59d3ad81fa1eb4fab275662b318bfd304561c7349ceee8ecb214831b63c02.gz/SHA256E-s799275936--f4e59d3ad81fa1eb4fab275662b318bfd304561c7349ceee8ecb214831b63c02.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "XG/ZW/SHA256E-s792100929--c62c4c3cf16f300faaac7510da67f7d864debf16af014c942bcbe9adc33f3e6d.gz/SHA256E-s792100929--c62c4c3cf16f300faaac7510da67f7d864debf16af014c942bcbe9adc33f3e6d.gz";
      r2 = "Vm/3J/SHA256E-s790405873--1326f27b24345057bb35102e77e99f86b6e09bb5a0ca1692dbf001378bac7243.gz/SHA256E-s790405873--1326f27b24345057bb35102e77e99f86b6e09bb5a0ca1692dbf001378bac7243.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "8G/w0/SHA256E-s787906514--7d16c1d112b2dcf9b18e229d07ec615c275c1cf70cf9712b2020132463389793.gz/SHA256E-s787906514--7d16c1d112b2dcf9b18e229d07ec615c275c1cf70cf9712b2020132463389793.gz";
      r2 = "Z5/J9/SHA256E-s788627862--966c938fca58e28b097a51369b7c7c9665cd4a9872ea59462676945fdedb4e37.gz/SHA256E-s788627862--966c938fca58e28b097a51369b7c7c9665cd4a9872ea59462676945fdedb4e37.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "6G/Z1/SHA256E-s770323106--d9734586a798db65a699b1c868e31d26538b1fefea8375841c8c85bb3259483b.gz/SHA256E-s770323106--d9734586a798db65a699b1c868e31d26538b1fefea8375841c8c85bb3259483b.gz";
      r2 = "J3/fX/SHA256E-s767505070--77a57ec8f2d30d9c15a026e3e0f9de9097c19ce141755cbce8f4d9c18b589302.gz/SHA256E-s767505070--77a57ec8f2d30d9c15a026e3e0f9de9097c19ce141755cbce8f4d9c18b589302.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "9Z/4F/SHA256E-s1294521994--94f65c597db30c8be8685b47d01dab19f78f47b9fc436d451b8625f264c9cadd.gz/SHA256E-s1294521994--94f65c597db30c8be8685b47d01dab19f78f47b9fc436d451b8625f264c9cadd.gz";
      r2 = "4z/vF/SHA256E-s1297739394--979d27e56cfb9be07c76ade56432fec8693bbd08e68f2a8e54bbea6241b17d19.gz/SHA256E-s1297739394--979d27e56cfb9be07c76ade56432fec8693bbd08e68f2a8e54bbea6241b17d19.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Qv/5k/SHA256E-s1310470275--4a18a7472661bddc7cea17d5e5dc1784b99a9da92b5803eb791ef53a29acc1d7.gz/SHA256E-s1310470275--4a18a7472661bddc7cea17d5e5dc1784b99a9da92b5803eb791ef53a29acc1d7.gz";
      r2 = "gQ/K9/SHA256E-s1311272849--c562cd8a322a9b17b807887b5477a437c4be4c7a18cb5fad39941dd1282afda5.gz/SHA256E-s1311272849--c562cd8a322a9b17b807887b5477a437c4be4c7a18cb5fad39941dd1282afda5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "65/6Z/SHA256E-s1310797278--d7b5d1d81d0d95d2fc30cfd7d15969ad5972e9e1b6ffd93f7d2357f3c403999f.gz/SHA256E-s1310797278--d7b5d1d81d0d95d2fc30cfd7d15969ad5972e9e1b6ffd93f7d2357f3c403999f.gz";
      r2 = "9q/15/SHA256E-s1305794699--6ac5c68d9b0a54ae7bb3f98b15a092412c9246f2a031bb44a2ffe45d6b0f9f14.gz/SHA256E-s1305794699--6ac5c68d9b0a54ae7bb3f98b15a092412c9246f2a031bb44a2ffe45d6b0f9f14.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0033";
    typeHla = true;
    capture = TwistV2HR;
  }
