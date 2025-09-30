with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "73/J8/SHA256E-s2062131984--72f011f5f852e233ad1ebd5f943721a345999d3606d0ce7ed7079a7ec3fcdf5f.gz/SHA256E-s2062131984--72f011f5f852e233ad1ebd5f943721a345999d3606d0ce7ed7079a7ec3fcdf5f.gz";
      r2 = "0W/K1/SHA256E-s2097863654--bb148e80a473f0cdf61e748976a57192eedb5b8ffc0b2463e5460bcbbb8d9f67.gz/SHA256E-s2097863654--bb148e80a473f0cdf61e748976a57192eedb5b8ffc0b2463e5460bcbbb8d9f67.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "FQ/8V/SHA256E-s2093332676--d95864823c76ee95c73c658a24afb574df560af0eb8da679401f6ebfd2322bf0.gz/SHA256E-s2093332676--d95864823c76ee95c73c658a24afb574df560af0eb8da679401f6ebfd2322bf0.gz";
      r2 = "Q0/KK/SHA256E-s2119862038--e20c79f02e46a3957ff865fe9594759bc2d7ff2346695dd10235537b0789540d.gz/SHA256E-s2119862038--e20c79f02e46a3957ff865fe9594759bc2d7ff2346695dd10235537b0789540d.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "GP/38/SHA256E-s2099693855--dd0537b1c2379cefa1ca6390a2b6abd6b9bd60f823730acb42ff0285ff87ee8c.gz/SHA256E-s2099693855--dd0537b1c2379cefa1ca6390a2b6abd6b9bd60f823730acb42ff0285ff87ee8c.gz";
      r2 = "vv/7j/SHA256E-s2120681665--b9276c960a4611d256891d7820096e4e308cb75cfadd7888db51b5b49caa95d7.gz/SHA256E-s2120681665--b9276c960a4611d256891d7820096e4e308cb75cfadd7888db51b5b49caa95d7.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "ZJ/QM/SHA256E-s2065763029--95e397f66cee0ee85bdeaa864437d4b303040654c10c68aa745454f07e82121c.gz/SHA256E-s2065763029--95e397f66cee0ee85bdeaa864437d4b303040654c10c68aa745454f07e82121c.gz";
      r2 = "k9/Wq/SHA256E-s2086720775--61643fd2e47b005023f1c58943e417dbc83c1ff4c1fe4d68551b341d3abcfd06.gz/SHA256E-s2086720775--61643fd2e47b005023f1c58943e417dbc83c1ff4c1fe4d68551b341d3abcfd06.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "x2/3g/SHA256E-s960582581--d1d9766e0d713693c8f19f3cce6f1eaeb7c56f1954e9e67220b26dab4395760f.gz/SHA256E-s960582581--d1d9766e0d713693c8f19f3cce6f1eaeb7c56f1954e9e67220b26dab4395760f.gz";
      r2 = "f2/2p/SHA256E-s961452270--6ed8bb0784d94e26a55023e71c2e8f98ba426229ac0cdca27db41859a850c8c0.gz/SHA256E-s961452270--6ed8bb0784d94e26a55023e71c2e8f98ba426229ac0cdca27db41859a850c8c0.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2K/zf/SHA256E-s976638565--5902a878601398cf097fea7051352ef76d824de10bd498f7a221719ccd2cd988.gz/SHA256E-s976638565--5902a878601398cf097fea7051352ef76d824de10bd498f7a221719ccd2cd988.gz";
      r2 = "f8/Jm/SHA256E-s976381623--76b88cf557339b76ee3e03ea861b400a3b3c78c2eceaf95dbe28fffec69db47d.gz/SHA256E-s976381623--76b88cf557339b76ee3e03ea861b400a3b3c78c2eceaf95dbe28fffec69db47d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "vf/W3/SHA256E-s979462196--fb39959bbf9062b5383b724c33958fed04107a7fbe4407f9296bd2333a06673a.gz/SHA256E-s979462196--fb39959bbf9062b5383b724c33958fed04107a7fbe4407f9296bd2333a06673a.gz";
      r2 = "xk/7x/SHA256E-s974992615--fe667db3e739eaf0e649e865aaabaae3cc5697fdedf622497616926234e947bf.gz/SHA256E-s974992615--fe667db3e739eaf0e649e865aaabaae3cc5697fdedf622497616926234e947bf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0012";
    typeHla = true;
    capture = TwistV2HR;
  }
