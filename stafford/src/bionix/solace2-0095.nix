with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "Q5/f2/SHA256E-s1489876409--06973a8c95210e6230680b84065b9f738be56c1126ed4165957951f0dca736d4.gz/SHA256E-s1489876409--06973a8c95210e6230680b84065b9f738be56c1126ed4165957951f0dca736d4.gz";
      r2 = "Pk/xx/SHA256E-s1505831921--ee7f9e1f11a42d3bc2d538c74a47b256907415af294b925afd3b6fd6b8d3b444.gz/SHA256E-s1505831921--ee7f9e1f11a42d3bc2d538c74a47b256907415af294b925afd3b6fd6b8d3b444.gz";
    }

    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "7p/z4/SHA256E-s1550285918--81f523bebd6e4633ccdc2fd167c822523f5c208f3d6c24cf38235da00c1b9dce.gz/SHA256E-s1550285918--81f523bebd6e4633ccdc2fd167c822523f5c208f3d6c24cf38235da00c1b9dce.gz";
      r2 = "Mp/FV/SHA256E-s1571442164--583ed31218675438b1c42339afde81cf051677faa6d13aedb3e5504f374a7f71.gz/SHA256E-s1571442164--583ed31218675438b1c42339afde81cf051677faa6d13aedb3e5504f374a7f71.gz";
    }

    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "M8/3v/SHA256E-s1537744294--5f7b8cedf2c1281e8f413207388fb49a39f16e8157f8a9eacd84b99980a69fef.gz/SHA256E-s1537744294--5f7b8cedf2c1281e8f413207388fb49a39f16e8157f8a9eacd84b99980a69fef.gz";
      r2 = "Mk/x9/SHA256E-s1560686069--de70a1cf21bb8313f20e41d16a3a2646d0bdd917fa0ae698315c96fcb1ea65d6.gz/SHA256E-s1560686069--de70a1cf21bb8313f20e41d16a3a2646d0bdd917fa0ae698315c96fcb1ea65d6.gz";
    }

    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "3k/PF/SHA256E-s1552173872--3325d52d1814bde81aa950fc3cf238a404ae6233fc5c9d17ed6bad1e4166dabb.gz/SHA256E-s1552173872--3325d52d1814bde81aa950fc3cf238a404ae6233fc5c9d17ed6bad1e4166dabb.gz";
      r2 = "KV/KK/SHA256E-s1573298482--3cba41412ee6d7042dbf7d2f16f6844add32867b89e627e0843e062065ef2d1b.gz/SHA256E-s1573298482--3cba41412ee6d7042dbf7d2f16f6844add32867b89e627e0843e062065ef2d1b.gz";
    }

    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "06/0Q/SHA256E-s1604152405--4db903c0ec86bf96de19a3ec114625b0924e4288cc6305d12a4d4be2c19dfd50.gz/SHA256E-s1604152405--4db903c0ec86bf96de19a3ec114625b0924e4288cc6305d12a4d4be2c19dfd50.gz";
      r2 = "Mx/X4/SHA256E-s1627475237--42444b4be459d2b90419d18727ea632c3ffdd385a06d82d0f5e8ce38afc574e2.gz/SHA256E-s1627475237--42444b4be459d2b90419d18727ea632c3ffdd385a06d82d0f5e8ce38afc574e2.gz";
    }

    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "3P/XM/SHA256E-s1496646136--897c1faf6c34cc86f9eeb95a3368e83ca59a2c562ef9aa90d564e1dc024707ca.gz/SHA256E-s1496646136--897c1faf6c34cc86f9eeb95a3368e83ca59a2c562ef9aa90d564e1dc024707ca.gz";
      r2 = "0k/80/SHA256E-s1512295010--7a0b9ccf8b1deef08733fe3e3a591d37fe14c851752a71655748f60a321ac074.gz/SHA256E-s1512295010--7a0b9ccf8b1deef08733fe3e3a591d37fe14c851752a71655748f60a321ac074.gz";
    }

    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "5w/8j/SHA256E-s1603741262--ba39d07891005b3acf81c66ffddb6cd32892e940d47d604ff1b50203af367535.gz/SHA256E-s1603741262--ba39d07891005b3acf81c66ffddb6cd32892e940d47d604ff1b50203af367535.gz";
      r2 = "Jp/V0/SHA256E-s1626694900--87444f2de3505a94cf883f1312576ec9935c3a5e89991427b829befe2b295e1b.gz/SHA256E-s1626694900--87444f2de3505a94cf883f1312576ec9935c3a5e89991427b829befe2b295e1b.gz";
    }

    {
      site = "1R";
      class = "tumours";
      pdx = false;
      r1 = "81/Vk/SHA256E-s1463485700--a91aaa718b0c87095b1c7864e6dd9e921db16b9d9899bb6a770eac14356af20e.gz/SHA256E-s1463485700--a91aaa718b0c87095b1c7864e6dd9e921db16b9d9899bb6a770eac14356af20e.gz";
      r2 = "1v/Wq/SHA256E-s1477090157--60326bdd1123522901b5f5afacc99f35cec2f94ea5c4de2c45a618ff58e78eb6.gz/SHA256E-s1477090157--60326bdd1123522901b5f5afacc99f35cec2f94ea5c4de2c45a618ff58e78eb6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Wv/W6/SHA256E-s841934068--6183cef2db6788a184bd2c65e3111598f02d4e3b287a01c7130fcd43047dbae6.gz/SHA256E-s841934068--6183cef2db6788a184bd2c65e3111598f02d4e3b287a01c7130fcd43047dbae6.gz";
      r2 = "Q9/Zq/SHA256E-s847881880--e57dc778300871735ab88300bec6e18d5f197c1a2b7149b8754e73078e2fa8bd.gz/SHA256E-s847881880--e57dc778300871735ab88300bec6e18d5f197c1a2b7149b8754e73078e2fa8bd.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "M3/kw/SHA256E-s853135999--32b5a370ff261825f48866428c9646fc7b2b88f8f2f85455404f412fb17650c2.gz/SHA256E-s853135999--32b5a370ff261825f48866428c9646fc7b2b88f8f2f85455404f412fb17650c2.gz";
      r2 = "PX/fq/SHA256E-s857834785--248d8b474b80925340beb50f30d44c756ce783cc52aee97640a1047ad95fbb9d.gz/SHA256E-s857834785--248d8b474b80925340beb50f30d44c756ce783cc52aee97640a1047ad95fbb9d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "KJ/Mp/SHA256E-s854611135--b3993304ea9cc18fb9b8c3b14a6e71dd777a6dc9010d0faf7b6ff8da33b7fbb5.gz/SHA256E-s854611135--b3993304ea9cc18fb9b8c3b14a6e71dd777a6dc9010d0faf7b6ff8da33b7fbb5.gz";
      r2 = "kV/gF/SHA256E-s855525073--a5bb9a81490c4008cbd442bc64c1a34fa377e4356ff6136d161229a360f4ec1a.gz/SHA256E-s855525073--a5bb9a81490c4008cbd442bc64c1a34fa377e4356ff6136d161229a360f4ec1a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0095";
    typeHla = true;
    capture = TwistV2HR;
  }
