with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "Fz/M2/SHA256E-s939514045--383953b4ae1e9880ab53069f24135a811dd2d4f5799c57938f0e7d90aed8b5ab.gz/SHA256E-s939514045--383953b4ae1e9880ab53069f24135a811dd2d4f5799c57938f0e7d90aed8b5ab.gz";
      r2 = "QW/Wk/SHA256E-s940774221--036448cca6c3b96af4d22e5770c99952a784aa21ec9efd7d9bd6daea1a302f68.gz/SHA256E-s940774221--036448cca6c3b96af4d22e5770c99952a784aa21ec9efd7d9bd6daea1a302f68.gz";
    }

    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "m1/zG/SHA256E-s978360275--8ba163516cebb560ee9e1f441ce793854c2963a3ea66b037e8a985c6f41ad0ed.gz/SHA256E-s978360275--8ba163516cebb560ee9e1f441ce793854c2963a3ea66b037e8a985c6f41ad0ed.gz";
      r2 = "MJ/4w/SHA256E-s982140623--cebf24e5f84c210188bd8c15e7a10987c3a1fffb0a515ee328ed25defd1b4c39.gz/SHA256E-s982140623--cebf24e5f84c210188bd8c15e7a10987c3a1fffb0a515ee328ed25defd1b4c39.gz";
    }

    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "G3/M9/SHA256E-s976352149--614424f3a4abeb5e712b59e62b07eab6c3ca374afd846d5267fc4d2a93f0ef7e.gz/SHA256E-s976352149--614424f3a4abeb5e712b59e62b07eab6c3ca374afd846d5267fc4d2a93f0ef7e.gz";
      r2 = "Zv/Mf/SHA256E-s981443459--a9d02c3233e2debecb09281bba9d2327a8bc9bb479065ddfc8d19bc247a48c51.gz/SHA256E-s981443459--a9d02c3233e2debecb09281bba9d2327a8bc9bb479065ddfc8d19bc247a48c51.gz";
    }

    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "qz/0q/SHA256E-s978555024--048c2d37dab2ea4d30c002b391420f4b0db6edaa7dc45c8dbe66ece36158c117.gz/SHA256E-s978555024--048c2d37dab2ea4d30c002b391420f4b0db6edaa7dc45c8dbe66ece36158c117.gz";
      r2 = "08/vJ/SHA256E-s983127056--61b0a580a32b23de84b139de532e55f19a2d2ae142368760ea020cbfd0dcfcb8.gz/SHA256E-s983127056--61b0a580a32b23de84b139de532e55f19a2d2ae142368760ea020cbfd0dcfcb8.gz";
    }

    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "mf/3V/SHA256E-s1003277950--f8fd5d2ce9dcaf9ece362e2765dd64ee18b0d329a954e90a96f3f3c863441237.gz/SHA256E-s1003277950--f8fd5d2ce9dcaf9ece362e2765dd64ee18b0d329a954e90a96f3f3c863441237.gz";
      r2 = "GX/0w/SHA256E-s1008359358--074d72ae91767fa3e1e5fd197dc8f10e5cfc5d85d81bf3ec557f703a1d5ca316.gz/SHA256E-s1008359358--074d72ae91767fa3e1e5fd197dc8f10e5cfc5d85d81bf3ec557f703a1d5ca316.gz";
    }

    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "Vp/q5/SHA256E-s981129614--d6b0e4c3649eed3dc47c1ce35b80b824a494c1960202c645efeabe19ca1dd2dc.gz/SHA256E-s981129614--d6b0e4c3649eed3dc47c1ce35b80b824a494c1960202c645efeabe19ca1dd2dc.gz";
      r2 = "G8/vk/SHA256E-s982542784--8d150510a25d98df98c15caebb6eee4c4246d29f347aa745d710277fd57d67a2.gz/SHA256E-s982542784--8d150510a25d98df98c15caebb6eee4c4246d29f347aa745d710277fd57d67a2.gz";
    }

    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "gM/fk/SHA256E-s997711372--a78b8b65e505be1c84979933c602ee257e8ef662cc71e5c1857ed619d91e2637.gz/SHA256E-s997711372--a78b8b65e505be1c84979933c602ee257e8ef662cc71e5c1857ed619d91e2637.gz";
      r2 = "GG/09/SHA256E-s1002051529--f68cefafaebb6b47e55a90e140bda2734d47dc29c73003d7169225996ee77e69.gz/SHA256E-s1002051529--f68cefafaebb6b47e55a90e140bda2734d47dc29c73003d7169225996ee77e69.gz";
    }

    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "kG/44/SHA256E-s958137814--bd92794d0be330549fbe18a2cd1129bc9a7bd48c1d12b95a9623abec7d3c6df2.gz/SHA256E-s958137814--bd92794d0be330549fbe18a2cd1129bc9a7bd48c1d12b95a9623abec7d3c6df2.gz";
      r2 = "58/wz/SHA256E-s958166643--95a438aedde2ba0a13dd5118c38b2df04d4becfd2dfd7ee94d3489fd2cb44d29.gz/SHA256E-s958166643--95a438aedde2ba0a13dd5118c38b2df04d4becfd2dfd7ee94d3489fd2cb44d29.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "fP/mp/SHA256E-s940672822--41cad183b758474b1c0fd353463e4186ed8c0c7d561501daf6e59878883ed8d6.gz/SHA256E-s940672822--41cad183b758474b1c0fd353463e4186ed8c0c7d561501daf6e59878883ed8d6.gz";
      r2 = "5g/5p/SHA256E-s942926186--644856f2ce089c746b5636fd54d32d7025541331791c6587d3860b3b8288821f.gz/SHA256E-s942926186--644856f2ce089c746b5636fd54d32d7025541331791c6587d3860b3b8288821f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "3g/W1/SHA256E-s942735026--709d6f9cf77f297385c57f7da8c97df0c37d4b0272e977aa7c7a36a26e975fa2.gz/SHA256E-s942735026--709d6f9cf77f297385c57f7da8c97df0c37d4b0272e977aa7c7a36a26e975fa2.gz";
      r2 = "58/pz/SHA256E-s943658076--579160dfab10b65fe64a0c83942a522aa4f6d9c5bd45e51982f2a2986ed16797.gz/SHA256E-s943658076--579160dfab10b65fe64a0c83942a522aa4f6d9c5bd45e51982f2a2986ed16797.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "M3/M1/SHA256E-s944229201--a902f7c858792533dd869766b17b0172c67e115911d22efc63def415bcccda07.gz/SHA256E-s944229201--a902f7c858792533dd869766b17b0172c67e115911d22efc63def415bcccda07.gz";
      r2 = "Xm/wJ/SHA256E-s941401165--4c69ad727da96e3870faa07972a1380c959b332f4c0a11517e7373a240c0ed37.gz/SHA256E-s941401165--4c69ad727da96e3870faa07972a1380c959b332f4c0a11517e7373a240c0ed37.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0013";
    typeHla = true;
    capture = TwistV2HR;
  }
