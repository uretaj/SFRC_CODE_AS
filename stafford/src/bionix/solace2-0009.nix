with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "k8/zw/SHA256E-s693856629--81e510342856c5a61b77ff2a1334bdebf3d2b9da1f69cba5858558a217d69d20.gz/SHA256E-s693856629--81e510342856c5a61b77ff2a1334bdebf3d2b9da1f69cba5858558a217d69d20.gz";
      r2 = "Jz/j2/SHA256E-s696257481--5aefa298544d6e1b9cf223099bcad662a0c4e9267b7cda9067bb460d95c1fd07.gz/SHA256E-s696257481--5aefa298544d6e1b9cf223099bcad662a0c4e9267b7cda9067bb460d95c1fd07.gz";
    }

    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "45/Vx/SHA256E-s707658200--28b8e8ac0784d0fc0fe450b2724758633766e3a546a8e4b79a9c138fd6e613f8.gz/SHA256E-s707658200--28b8e8ac0784d0fc0fe450b2724758633766e3a546a8e4b79a9c138fd6e613f8.gz";
      r2 = "mv/zp/SHA256E-s711902140--f53137895e984cc797e629291d47518e0947412dc60044f8b450f4e209e6104c.gz/SHA256E-s711902140--f53137895e984cc797e629291d47518e0947412dc60044f8b450f4e209e6104c.gz";
    }

    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "pz/WJ/SHA256E-s716532011--8a5831cfdd1c60c808a644a46653de7126137b3bc506f8e5ae553934d3c15f1c.gz/SHA256E-s716532011--8a5831cfdd1c60c808a644a46653de7126137b3bc506f8e5ae553934d3c15f1c.gz";
      r2 = "Vw/vj/SHA256E-s721858864--67c85a6e1a8ecab4cebba1ac800dd950778b072570e528b9b8a5477a7270dbba.gz/SHA256E-s721858864--67c85a6e1a8ecab4cebba1ac800dd950778b072570e528b9b8a5477a7270dbba.gz";
    }

    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "xV/XP/SHA256E-s729688056--fcb3a0e0bcbdbc81e0766e04fe7a4621f781c940dc99f946af60d7e19c8f7ccf.gz/SHA256E-s729688056--fcb3a0e0bcbdbc81e0766e04fe7a4621f781c940dc99f946af60d7e19c8f7ccf.gz";
      r2 = "5x/G5/SHA256E-s734484120--cb55b5355fc5b8bc2fbad59976b81136c93ff07569b6a7fbfd2252d1a5689e25.gz/SHA256E-s734484120--cb55b5355fc5b8bc2fbad59976b81136c93ff07569b6a7fbfd2252d1a5689e25.gz";
    }

    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "Pz/m2/SHA256E-s733679240--3db6df2e8e0d0ae464bad727c1fd66a9f28f42a74c61deafcbd966c214d71b9c.gz/SHA256E-s733679240--3db6df2e8e0d0ae464bad727c1fd66a9f28f42a74c61deafcbd966c214d71b9c.gz";
      r2 = "86/7z/SHA256E-s738988241--0b933edbb5af0f9aaa4c1a1f64acf46009311b7002298119bc6b2b43e53318ea.gz/SHA256E-s738988241--0b933edbb5af0f9aaa4c1a1f64acf46009311b7002298119bc6b2b43e53318ea.gz";
    }

    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "jJ/J2/SHA256E-s717976619--4ab8fbfac52b716a109f28a7d97378c3db77067cf197e2e5f495850d3b88a927.gz/SHA256E-s717976619--4ab8fbfac52b716a109f28a7d97378c3db77067cf197e2e5f495850d3b88a927.gz";
      r2 = "VW/Q7/SHA256E-s720539430--8c42f90d3629b9db7a5020af0d91dbfdfc19db2bc2e69f22fcebe1b59bbe4cd6.gz/SHA256E-s720539430--8c42f90d3629b9db7a5020af0d91dbfdfc19db2bc2e69f22fcebe1b59bbe4cd6.gz";
    }

    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "5q/83/SHA256E-s725119782--1e5b0a12177c066587e971832ac69d111e36ad2834a5770971260ee93bf82dc1.gz/SHA256E-s725119782--1e5b0a12177c066587e971832ac69d111e36ad2834a5770971260ee93bf82dc1.gz";
      r2 = "mf/X7/SHA256E-s729883073--ea378fc17ad835e7a0b0f93dfaf837863d0f572ce668f8b8599bffcd93ed0f11.gz/SHA256E-s729883073--ea378fc17ad835e7a0b0f93dfaf837863d0f572ce668f8b8599bffcd93ed0f11.gz";
    }

    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "P5/fk/SHA256E-s708354996--16e25c6939a52c65e1ddf202a160dcfec23bc093b979443f58df3cd27b9138a6.gz/SHA256E-s708354996--16e25c6939a52c65e1ddf202a160dcfec23bc093b979443f58df3cd27b9138a6.gz";
      r2 = "qP/VZ/SHA256E-s709778536--5ffeef4def55cefb7528a700a31cc1fbee1c9ea6fd7fee5ba9e0ea28a0b7a0d9.gz/SHA256E-s709778536--5ffeef4def55cefb7528a700a31cc1fbee1c9ea6fd7fee5ba9e0ea28a0b7a0d9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "f8/w2/SHA256E-s1070114840--2dc2e314104f34fffa1982765300981b9f8d561ed00c290ec92fc9f4ed981d33.gz/SHA256E-s1070114840--2dc2e314104f34fffa1982765300981b9f8d561ed00c290ec92fc9f4ed981d33.gz";
      r2 = "90/64/SHA256E-s1068128566--cfce305a84af92f611e22c3a9798e511e00c8625aff8a5e7e97f964205bec806.gz/SHA256E-s1068128566--cfce305a84af92f611e22c3a9798e511e00c8625aff8a5e7e97f964205bec806.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "q0/12/SHA256E-s1079649954--697ca22d38ada81f23ee5205d2e0815a6158bff067f797f7e0fcb6b49bf751a5.gz/SHA256E-s1079649954--697ca22d38ada81f23ee5205d2e0815a6158bff067f797f7e0fcb6b49bf751a5.gz";
      r2 = "W7/6Z/SHA256E-s1076430341--8fecf0306d7f664b31bf1e63bcefa43e9dcfd09fff5a5ff6d7b8b4a150bf0f8d.gz/SHA256E-s1076430341--8fecf0306d7f664b31bf1e63bcefa43e9dcfd09fff5a5ff6d7b8b4a150bf0f8d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Mq/wG/SHA256E-s1079990995--a89a186cec5d4d9716333f0b1c166358d621488dd187c6c72b5b261c56c233cd.gz/SHA256E-s1079990995--a89a186cec5d4d9716333f0b1c166358d621488dd187c6c72b5b261c56c233cd.gz";
      r2 = "gZ/vM/SHA256E-s1072240211--5aa5151a0f3076195502f02b385e66c001fa737ff179ba69e133752b27630899.gz/SHA256E-s1072240211--5aa5151a0f3076195502f02b385e66c001fa737ff179ba69e133752b27630899.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0009";
    typeHla = true;
    capture = TwistV2HR;
  }
