with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "8Z/f1/SHA256E-s766853512--9b6b6627114a6adce8c3b1d8d5753dcda275f331d4dd7d0856ac3ffbf70f853c.gz/SHA256E-s766853512--9b6b6627114a6adce8c3b1d8d5753dcda275f331d4dd7d0856ac3ffbf70f853c.gz";
      r2 = "Gq/0x/SHA256E-s768663527--e2de48559ac46b3d6102f3471d18b6e7c9de5481bdc7374d9fb50fe0e6f6b812.gz/SHA256E-s768663527--e2de48559ac46b3d6102f3471d18b6e7c9de5481bdc7374d9fb50fe0e6f6b812.gz";
    }

    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "8V/3v/SHA256E-s802866101--673e405a7ae3829297ba062398766015d29c9b2f0a106377c5466038dfaba0e7.gz/SHA256E-s802866101--673e405a7ae3829297ba062398766015d29c9b2f0a106377c5466038dfaba0e7.gz";
      r2 = "v4/wj/SHA256E-s806860852--3710abce9da2563d683845e287fccfae0f59c65c159721ac43dca72b43762eb4.gz/SHA256E-s806860852--3710abce9da2563d683845e287fccfae0f59c65c159721ac43dca72b43762eb4.gz";
    }

    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "QX/X9/SHA256E-s797849240--8996afa04c5871f5078f1873875d5a41a6d80cdc559bc96affca53c5d6b183ad.gz/SHA256E-s797849240--8996afa04c5871f5078f1873875d5a41a6d80cdc559bc96affca53c5d6b183ad.gz";
      r2 = "GF/kX/SHA256E-s802902396--c8997efd264de04680688892adf38be6b0b2116d0dce32d549e16e692fe42746.gz/SHA256E-s802902396--c8997efd264de04680688892adf38be6b0b2116d0dce32d549e16e692fe42746.gz";
    }

    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "Mg/wF/SHA256E-s797823727--4fb6839b322f67e224d526218bdf587224fbccef85a4e01810337c6282d080bf.gz/SHA256E-s797823727--4fb6839b322f67e224d526218bdf587224fbccef85a4e01810337c6282d080bf.gz";
      r2 = "Gw/Gq/SHA256E-s802088224--2e40dd4827e83b0cb18d87b8463879ee5a3e640bf354bd72be3dcca9cefb0d34.gz/SHA256E-s802088224--2e40dd4827e83b0cb18d87b8463879ee5a3e640bf354bd72be3dcca9cefb0d34.gz";
    }

    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "Mj/66/SHA256E-s822542565--0348c2ee48f1f6bda2d47df099e3c4879c0925eeda9396645bff30a6647a41fc.gz/SHA256E-s822542565--0348c2ee48f1f6bda2d47df099e3c4879c0925eeda9396645bff30a6647a41fc.gz";
      r2 = "Xk/xP/SHA256E-s827510830--0b431f0f61302bfb97b02a1f1fa7e73c55a80a0c38bc146c151ed456eb5064c0.gz/SHA256E-s827510830--0b431f0f61302bfb97b02a1f1fa7e73c55a80a0c38bc146c151ed456eb5064c0.gz";
    }

    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "2F/vG/SHA256E-s809024766--0693721bdb23bb1dee9a3c29c849014c291bce02e3dd69bc229162cc4cefc692.gz/SHA256E-s809024766--0693721bdb23bb1dee9a3c29c849014c291bce02e3dd69bc229162cc4cefc692.gz";
      r2 = "mV/kx/SHA256E-s810834644--932714728f81f56e1114a73abb6710828a1ffe3f5beae2ae712412323310b07a.gz/SHA256E-s810834644--932714728f81f56e1114a73abb6710828a1ffe3f5beae2ae712412323310b07a.gz";
    }

    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "km/8F/SHA256E-s824887237--b1bb5a04ca73db2c1d886ccf7f8797033c1872a180f42bebd1dd27acd0f07e59.gz/SHA256E-s824887237--b1bb5a04ca73db2c1d886ccf7f8797033c1872a180f42bebd1dd27acd0f07e59.gz";
      r2 = "VG/52/SHA256E-s829306198--fb06bd605c48a4794827930aabfec68b94d1ca1652c3217d3b7df78d34766b0e.gz/SHA256E-s829306198--fb06bd605c48a4794827930aabfec68b94d1ca1652c3217d3b7df78d34766b0e.gz";
    }

    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "xv/XJ/SHA256E-s787906626--75a79be34bf05819fff68c29b052fbb1d33d88c6b7aac89827b84bdd25104fac.gz/SHA256E-s787906626--75a79be34bf05819fff68c29b052fbb1d33d88c6b7aac89827b84bdd25104fac.gz";
      r2 = "k9/1q/SHA256E-s788647206--3beb6cc29bee65954f21d206ed5ff08ae0065da14ce52940262d4d2fe883c9d6.gz/SHA256E-s788647206--3beb6cc29bee65954f21d206ed5ff08ae0065da14ce52940262d4d2fe883c9d6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "ZG/4q/SHA256E-s785929961--e1eab8687be90ec0489ee49ed679ff2e7ad0d12b5eacfeae7bad67b650b350c0.gz/SHA256E-s785929961--e1eab8687be90ec0489ee49ed679ff2e7ad0d12b5eacfeae7bad67b650b350c0.gz";
      r2 = "M8/03/SHA256E-s789148701--b20c691a9e3f9a31c5db99aaf137cea0ef6267c682674db339f40c41ad5fe0a0.gz/SHA256E-s789148701--b20c691a9e3f9a31c5db99aaf137cea0ef6267c682674db339f40c41ad5fe0a0.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5W/3m/SHA256E-s804823104--e632905663facbf5f16aa67b7dddd57cb9c3cfa62e742a3c520bd70ec29ab0fc.gz/SHA256E-s804823104--e632905663facbf5f16aa67b7dddd57cb9c3cfa62e742a3c520bd70ec29ab0fc.gz";
      r2 = "jz/98/SHA256E-s806734416--179e61586078a51181695aa4affca12313bd7ce61a4ad247b1b50d07062b285e.gz/SHA256E-s806734416--179e61586078a51181695aa4affca12313bd7ce61a4ad247b1b50d07062b285e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "PJ/k4/SHA256E-s810335348--c34d38fd60b98bb69061923276d12f37d6a4a1197237d6cca994a1dd7f00579d.gz/SHA256E-s810335348--c34d38fd60b98bb69061923276d12f37d6a4a1197237d6cca994a1dd7f00579d.gz";
      r2 = "f4/kX/SHA256E-s808627825--b7fb29b5b818b830f33dc15005ff95ce477344db9d433edc955e60390684775f.gz/SHA256E-s808627825--b7fb29b5b818b830f33dc15005ff95ce477344db9d433edc955e60390684775f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0123";
    typeHla = true;
    capture = TwistV2HR;
  }
