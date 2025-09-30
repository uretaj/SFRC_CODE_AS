with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4C";
      class = "tumours";
      pdx = false;
      r1 = "JZ/X9/SHA256E-s902548230--288ff0bcb431c1066875090491733ae3053c9182cdd2b60364a413623ae59e9a.gz/SHA256E-s902548230--288ff0bcb431c1066875090491733ae3053c9182cdd2b60364a413623ae59e9a.gz";
      r2 = "QX/0X/SHA256E-s901581336--7c0ebc8cee20466ec9e89d26dde1c9c15c3f25bf496fa06cef78eeb7bd4083db.gz/SHA256E-s901581336--7c0ebc8cee20466ec9e89d26dde1c9c15c3f25bf496fa06cef78eeb7bd4083db.gz";
    }

    {
      site = "4C";
      class = "tumours";
      pdx = false;
      r1 = "K9/8X/SHA256E-s941902188--2fa42fa15255c1999b76857fdc0c1b9b0b180e71b8ab6a163fa0846e2c206289.gz/SHA256E-s941902188--2fa42fa15255c1999b76857fdc0c1b9b0b180e71b8ab6a163fa0846e2c206289.gz";
      r2 = "qP/QF/SHA256E-s943237021--6ddc16c768600abedab9fd73d361e268f9e2528a69dc404b3c9033be057038f4.gz/SHA256E-s943237021--6ddc16c768600abedab9fd73d361e268f9e2528a69dc404b3c9033be057038f4.gz";
    }

    {
      site = "4C";
      class = "tumours";
      pdx = false;
      r1 = "02/pK/SHA256E-s959250049--e2369480a4ca8d2853560c71a91a693f11711b1f76654f5fa92e1354549fc8c0.gz/SHA256E-s959250049--e2369480a4ca8d2853560c71a91a693f11711b1f76654f5fa92e1354549fc8c0.gz";
      r2 = "4F/0M/SHA256E-s961836736--489c798560ff19b0247088feb0df06fc3899e55e05b6cc3026f9220106d635d7.gz/SHA256E-s961836736--489c798560ff19b0247088feb0df06fc3899e55e05b6cc3026f9220106d635d7.gz";
    }

    {
      site = "4C";
      class = "tumours";
      pdx = false;
      r1 = "g9/95/SHA256E-s976933637--d9fe9ac2d6775c78346e6e66a0440c70bcb4aeb8330487c5c506d4a1cae5d80d.gz/SHA256E-s976933637--d9fe9ac2d6775c78346e6e66a0440c70bcb4aeb8330487c5c506d4a1cae5d80d.gz";
      r2 = "W6/03/SHA256E-s978604585--531733ba5f599993d50a4aefb885aba88e1c8e2751a20b6cb5e68f4b14e8fc7d.gz/SHA256E-s978604585--531733ba5f599993d50a4aefb885aba88e1c8e2751a20b6cb5e68f4b14e8fc7d.gz";
    }

    {
      site = "4C";
      class = "tumours";
      pdx = false;
      r1 = "K1/xM/SHA256E-s988655195--0622187d4ed1c6ecf8afb2c30752e0890258e59fb0f77b6a10caaa1324899cb7.gz/SHA256E-s988655195--0622187d4ed1c6ecf8afb2c30752e0890258e59fb0f77b6a10caaa1324899cb7.gz";
      r2 = "x3/m4/SHA256E-s990684554--b16201653bbdcb0463e09a9ae73d1ae5940fece4256d6acaca3e6403d7421dd3.gz/SHA256E-s990684554--b16201653bbdcb0463e09a9ae73d1ae5940fece4256d6acaca3e6403d7421dd3.gz";
    }

    {
      site = "4C";
      class = "tumours";
      pdx = false;
      r1 = "Z5/Fg/SHA256E-s985125200--74869171ed49a0c717d221e5bac78906b8cecfe1b1e4337cfa6617d2a636d7e6.gz/SHA256E-s985125200--74869171ed49a0c717d221e5bac78906b8cecfe1b1e4337cfa6617d2a636d7e6.gz";
      r2 = "0f/k2/SHA256E-s983088467--a0c524cb679753777e2bffecc15259ae6dbf5a5f21aed0e09956e2a6deddca63.gz/SHA256E-s983088467--a0c524cb679753777e2bffecc15259ae6dbf5a5f21aed0e09956e2a6deddca63.gz";
    }

    {
      site = "4C";
      class = "tumours";
      pdx = false;
      r1 = "3F/M6/SHA256E-s971621434--47cac5c0c7b5e7350e10acd66de51b70aff4bb782aabad402f41b27e615059e7.gz/SHA256E-s971621434--47cac5c0c7b5e7350e10acd66de51b70aff4bb782aabad402f41b27e615059e7.gz";
      r2 = "95/QJ/SHA256E-s972820553--60603b4efbf5c7c10c1375bbdb2cb69070c15292bf91f185250fa09d96514bc5.gz/SHA256E-s972820553--60603b4efbf5c7c10c1375bbdb2cb69070c15292bf91f185250fa09d96514bc5.gz";
    }

    {
      site = "4C";
      class = "tumours";
      pdx = false;
      r1 = "Fq/4G/SHA256E-s958134634--473dd80481fb53dc47842b5860303940d550a7a3a00d92d68d6e40f99be3a58b.gz/SHA256E-s958134634--473dd80481fb53dc47842b5860303940d550a7a3a00d92d68d6e40f99be3a58b.gz";
      r2 = "3w/qp/SHA256E-s954662664--1d93e7a52d22603d8b2e83f0ed670b2f9790bd2c186085a9be30793d6a52bfad.gz/SHA256E-s954662664--1d93e7a52d22603d8b2e83f0ed670b2f9790bd2c186085a9be30793d6a52bfad.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "K5/76/SHA256E-s789873490--d4c0628095591f45b1d275942e45fb92ed6c3b27c0ebd7dfe6a32d2c564ecd07.gz/SHA256E-s789873490--d4c0628095591f45b1d275942e45fb92ed6c3b27c0ebd7dfe6a32d2c564ecd07.gz";
      r2 = "pz/2p/SHA256E-s795322286--b3c4f1fd0f0ab6bebba8154e6c5942876d70eded7cb0c8de5c1f6fd5b35c2a53.gz/SHA256E-s795322286--b3c4f1fd0f0ab6bebba8154e6c5942876d70eded7cb0c8de5c1f6fd5b35c2a53.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "0M/q1/SHA256E-s793522644--f18d5b14cd2185eb1e198a29911b18ad7616d918db32eb7451a63351293fead0.gz/SHA256E-s793522644--f18d5b14cd2185eb1e198a29911b18ad7616d918db32eb7451a63351293fead0.gz";
      r2 = "GF/mp/SHA256E-s804256878--9a608f398683d5ae7cad70dd4aafae9ac19edc1fc68cdb5ef90c17fc4f291e9d.gz/SHA256E-s804256878--9a608f398683d5ae7cad70dd4aafae9ac19edc1fc68cdb5ef90c17fc4f291e9d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8f/Kj/SHA256E-s785763320--c62a52782a804168b85ec0fb3a82eeb50541c9c1fdea1c659c228ddf5c57d28b.gz/SHA256E-s785763320--c62a52782a804168b85ec0fb3a82eeb50541c9c1fdea1c659c228ddf5c57d28b.gz";
      r2 = "0z/zj/SHA256E-s794224425--b280e9def9537865282432d8d19542bc43fcb50d7076f30c3ab6cac4905ead7e.gz/SHA256E-s794224425--b280e9def9537865282432d8d19542bc43fcb50d7076f30c3ab6cac4905ead7e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2k/V0/SHA256E-s840523432--ccb734d06d81da5a2c4963c353036a62b8233083f1ec0fcfe958caf0ab2a35be.gz/SHA256E-s840523432--ccb734d06d81da5a2c4963c353036a62b8233083f1ec0fcfe958caf0ab2a35be.gz";
      r2 = "zz/ZK/SHA256E-s855582164--deb37c2756b804872cd22494990d24aa488a73cd56adcbd8d50caf342d0786b7.gz/SHA256E-s855582164--deb37c2756b804872cd22494990d24aa488a73cd56adcbd8d50caf342d0786b7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0087";
    typeHla = true;
    capture = TwistV2HR;
  }
