with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "q0/j6/SHA256E-s716815101--0da3cfc1edbe998236d2420e1d8bfb65f744cc5ddc821f3f58d6c1c99e484df0.gz/SHA256E-s716815101--0da3cfc1edbe998236d2420e1d8bfb65f744cc5ddc821f3f58d6c1c99e484df0.gz";
      r2 = "MQ/W1/SHA256E-s719299496--625dcd3b63220ac2f254c20e0e32ff19a301717f0912f5f5c26809dc0fd357aa.gz/SHA256E-s719299496--625dcd3b63220ac2f254c20e0e32ff19a301717f0912f5f5c26809dc0fd357aa.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "12/4Z/SHA256E-s733533918--44e32a99ef0bd68d779e5ae0e61b449b78411f34092ce1664e531b7fbd2abe2b.gz/SHA256E-s733533918--44e32a99ef0bd68d779e5ae0e61b449b78411f34092ce1664e531b7fbd2abe2b.gz";
      r2 = "3Q/g4/SHA256E-s738083649--4d9d92531ca095c67a00c2d300d6eb1a36feb65eb5c5c44922bb34fcd14df161.gz/SHA256E-s738083649--4d9d92531ca095c67a00c2d300d6eb1a36feb65eb5c5c44922bb34fcd14df161.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "Zq/xw/SHA256E-s731956951--f39166f5fcc80b5bc8481feb7f24dcf445a345ea295d3c1db1410a96ded927f3.gz/SHA256E-s731956951--f39166f5fcc80b5bc8481feb7f24dcf445a345ea295d3c1db1410a96ded927f3.gz";
      r2 = "pG/W9/SHA256E-s737449929--fdbbbb2043d17176915d3e3754481d926d2716679921c244b09c1e59132efd0b.gz/SHA256E-s737449929--fdbbbb2043d17176915d3e3754481d926d2716679921c244b09c1e59132efd0b.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "2m/kf/SHA256E-s725351666--50df39f20b908c785e8bffee3319475999c8c3afcc5739988f9fc044f59545d1.gz/SHA256E-s725351666--50df39f20b908c785e8bffee3319475999c8c3afcc5739988f9fc044f59545d1.gz";
      r2 = "z2/JF/SHA256E-s730212823--b4e2389471f29a282c3663f5a7529ad9b2f59dde29eeaab56d5486c3f8bfa3c9.gz/SHA256E-s730212823--b4e2389471f29a282c3663f5a7529ad9b2f59dde29eeaab56d5486c3f8bfa3c9.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "km/wX/SHA256E-s744818018--df91a6b0f5c623b1746784398d993c54f6123ae69ed53271f764f8dac9cee088.gz/SHA256E-s744818018--df91a6b0f5c623b1746784398d993c54f6123ae69ed53271f764f8dac9cee088.gz";
      r2 = "X3/92/SHA256E-s750156151--9442c6157c7807dcf2de564c487b0d2f91c07790398e304970c4ec96e88ea089.gz/SHA256E-s750156151--9442c6157c7807dcf2de564c487b0d2f91c07790398e304970c4ec96e88ea089.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "Px/Zw/SHA256E-s751493934--f313fd44eaefadbbd8eafb87bb35fadf7f7cebda6bcfcf81baae28f055eaa210.gz/SHA256E-s751493934--f313fd44eaefadbbd8eafb87bb35fadf7f7cebda6bcfcf81baae28f055eaa210.gz";
      r2 = "kW/W8/SHA256E-s753945642--a6cf7e15e5b75c0a63fbdb773715fa59b6c062b57dca0f51a73f5ac2b4245f1d.gz/SHA256E-s753945642--a6cf7e15e5b75c0a63fbdb773715fa59b6c062b57dca0f51a73f5ac2b4245f1d.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "VX/Z7/SHA256E-s748645272--589939c5d638dba33b58aa2dbd636aa61861b73a5bc6ebb8ec84734efcbb6f4b.gz/SHA256E-s748645272--589939c5d638dba33b58aa2dbd636aa61861b73a5bc6ebb8ec84734efcbb6f4b.gz";
      r2 = "03/28/SHA256E-s753469703--5f06befc80983f4ab355c929bf69be5da73345066a50aa1c87eacc2445cdc9c5.gz/SHA256E-s753469703--5f06befc80983f4ab355c929bf69be5da73345066a50aa1c87eacc2445cdc9c5.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "g5/gW/SHA256E-s736560029--a0c6f68b24848c4d021fe9e6dfebac34c250244a1b4469653c56bb8249d9e093.gz/SHA256E-s736560029--a0c6f68b24848c4d021fe9e6dfebac34c250244a1b4469653c56bb8249d9e093.gz";
      r2 = "17/pp/SHA256E-s737791628--368750c1e8d10c51316a852ebc52c753be08804612dbf42d71d8eb78330ba05b.gz/SHA256E-s737791628--368750c1e8d10c51316a852ebc52c753be08804612dbf42d71d8eb78330ba05b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8Z/6G/SHA256E-s1062529118--ea40eeed1d239f31570d41f91a55eb71e2acf1b85de8f128bc4fd2256f0d8b23.gz/SHA256E-s1062529118--ea40eeed1d239f31570d41f91a55eb71e2acf1b85de8f128bc4fd2256f0d8b23.gz";
      r2 = "4F/73/SHA256E-s1067770323--c0d860b648a409bfc50fba5b36b714f8de87986c98e51d98bd44382af5374fdd.gz/SHA256E-s1067770323--c0d860b648a409bfc50fba5b36b714f8de87986c98e51d98bd44382af5374fdd.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Q4/8f/SHA256E-s1069435819--0a9a7e3521caad3327ea4939d9134b3a08c7aeddcdbcb2afdaf407ba61602ed5.gz/SHA256E-s1069435819--0a9a7e3521caad3327ea4939d9134b3a08c7aeddcdbcb2afdaf407ba61602ed5.gz";
      r2 = "Mq/vP/SHA256E-s1073354146--9a4c9ec84a6761445b19d412a91ae47894037a07fb281ee29f45930039d2afc7.gz/SHA256E-s1073354146--9a4c9ec84a6761445b19d412a91ae47894037a07fb281ee29f45930039d2afc7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "28/35/SHA256E-s1068089211--3187effdf2c81a898f103a01dd7195c13738d721f6b811e6f2b2065059f51d28.gz/SHA256E-s1068089211--3187effdf2c81a898f103a01dd7195c13738d721f6b811e6f2b2065059f51d28.gz";
      r2 = "k5/G5/SHA256E-s1067321863--33de8e5068724be4d83f233277f1d559e0430bd61664d66afee49b14b7101059.gz/SHA256E-s1067321863--33de8e5068724be4d83f233277f1d559e0430bd61664d66afee49b14b7101059.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0068";
    typeHla = true;
    capture = TwistV2HR;
  }
