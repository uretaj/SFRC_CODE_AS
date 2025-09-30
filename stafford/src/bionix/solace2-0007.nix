with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "14MP";
      class = "tumours";
      pdx = false;
      r1 = "0Q/24/SHA256E-s348417919--d1e4654b157a6d15b260170916fe6da7a85f11fb77094d8f6794ad1e87d2fa84.gz/SHA256E-s348417919--d1e4654b157a6d15b260170916fe6da7a85f11fb77094d8f6794ad1e87d2fa84.gz";
      r2 = "f1/20/SHA256E-s374384555--0e709d1058a58dfdd08ff61612240d44b63afec3b5f52cfaf145bed0a4a9c853.gz/SHA256E-s374384555--0e709d1058a58dfdd08ff61612240d44b63afec3b5f52cfaf145bed0a4a9c853.gz";
    }

    {
      site = "14MP";
      class = "tumours";
      pdx = false;
      r1 = "58/V3/SHA256E-s361815988--c090cd5664e3aa90bb78930214e1ed3fd8d18aee9e632c5ffed78654a17e6199.gz/SHA256E-s361815988--c090cd5664e3aa90bb78930214e1ed3fd8d18aee9e632c5ffed78654a17e6199.gz";
      r2 = "W0/17/SHA256E-s389660162--b4d3257ee3693d45c82254832c19a877ff02a60df5c133116d126fafdd580398.gz/SHA256E-s389660162--b4d3257ee3693d45c82254832c19a877ff02a60df5c133116d126fafdd580398.gz";
    }

    {
      site = "14MP";
      class = "tumours";
      pdx = false;
      r1 = "gq/vk/SHA256E-s364050485--9ac1affca2cbeb4640bed8ded7ee7c5c9c96f1ba8a2762fdd379b4b8dc78d28e.gz/SHA256E-s364050485--9ac1affca2cbeb4640bed8ded7ee7c5c9c96f1ba8a2762fdd379b4b8dc78d28e.gz";
      r2 = "92/GQ/SHA256E-s392208113--4ad72775219eb93a18aaf8fa6014704fa611ce85e1a0f385060726a9389c43c1.gz/SHA256E-s392208113--4ad72775219eb93a18aaf8fa6014704fa611ce85e1a0f385060726a9389c43c1.gz";
    }

    {
      site = "14MP";
      class = "tumours";
      pdx = false;
      r1 = "kW/xq/SHA256E-s358399941--469da9b3ef3b2b40caeec2c7cfede78dd426fcbb3973e603b3accb9b9a99a9f8.gz/SHA256E-s358399941--469da9b3ef3b2b40caeec2c7cfede78dd426fcbb3973e603b3accb9b9a99a9f8.gz";
      r2 = "Fg/Vg/SHA256E-s385349107--8a99bd7b63bfa2b31e6e018c16a328e601b903de1511a053be9925086e99f854.gz/SHA256E-s385349107--8a99bd7b63bfa2b31e6e018c16a328e601b903de1511a053be9925086e99f854.gz";
    }

    {
      site = "14MP";
      class = "tumours";
      pdx = false;
      r1 = "QZ/K9/SHA256E-s367061043--ab1c5ba6872bf3288cf30d80971f43632a71b24e1c5dc5d0c2e4c2d951b340e1.gz/SHA256E-s367061043--ab1c5ba6872bf3288cf30d80971f43632a71b24e1c5dc5d0c2e4c2d951b340e1.gz";
      r2 = "Vf/v1/SHA256E-s395352879--e79df153b244589605653085ffbf9ed04113da09d0c5d4887fdc2e8e0ab283e8.gz/SHA256E-s395352879--e79df153b244589605653085ffbf9ed04113da09d0c5d4887fdc2e8e0ab283e8.gz";
    }

    {
      site = "14MP";
      class = "tumours";
      pdx = false;
      r1 = "Gx/Gx/SHA256E-s389696868--81e0f3a789096f0a55a2833b433da9415048206ca73f505f32240d18a02d2fa7.gz/SHA256E-s389696868--81e0f3a789096f0a55a2833b433da9415048206ca73f505f32240d18a02d2fa7.gz";
      r2 = "gJ/zG/SHA256E-s418092805--af3b69512b157ba4a0db55190ef3a86ffb18bf58c49cb1e251b20a151a967e1f.gz/SHA256E-s418092805--af3b69512b157ba4a0db55190ef3a86ffb18bf58c49cb1e251b20a151a967e1f.gz";
    }

    {
      site = "14MP";
      class = "tumours";
      pdx = false;
      r1 = "GV/Mz/SHA256E-s367890831--c8980e8d032f2dd4c4f5d308d9c9abcc8f270c84ba92a654f03275500ee342c9.gz/SHA256E-s367890831--c8980e8d032f2dd4c4f5d308d9c9abcc8f270c84ba92a654f03275500ee342c9.gz";
      r2 = "X3/Zf/SHA256E-s396412863--ebf64fa7b4515dcb774822228a6eff0a1cb993c85f60174a0cd3b81077dd92d4.gz/SHA256E-s396412863--ebf64fa7b4515dcb774822228a6eff0a1cb993c85f60174a0cd3b81077dd92d4.gz";
    }

    {
      site = "14MP";
      class = "tumours";
      pdx = false;
      r1 = "Jm/QV/SHA256E-s379021621--9f53c9a6607b54b052aab522be5852fc89f678d840c42d143e99d3f940b4f3cb.gz/SHA256E-s379021621--9f53c9a6607b54b052aab522be5852fc89f678d840c42d143e99d3f940b4f3cb.gz";
      r2 = "mP/px/SHA256E-s406015946--94e2ed236cbb6a9f72e175653048741c59f1e38e98dc0a71e842b57165d5310d.gz/SHA256E-s406015946--94e2ed236cbb6a9f72e175653048741c59f1e38e98dc0a71e842b57165d5310d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "vw/wp/SHA256E-s895115424--f71bb81011ae0390f19d20a4f5fc07599580599fd32970fe50f0fa595d04d2bd.gz/SHA256E-s895115424--f71bb81011ae0390f19d20a4f5fc07599580599fd32970fe50f0fa595d04d2bd.gz";
      r2 = "Qj/ZQ/SHA256E-s895239226--46da79362b2393f8c0118d5471f49e712270ac0f8a782f2685c9bebefb1ef9b9.gz/SHA256E-s895239226--46da79362b2393f8c0118d5471f49e712270ac0f8a782f2685c9bebefb1ef9b9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "1x/MM/SHA256E-s915790849--37ffb0487ad87004191e8d7f14dae47a4eda69fee7dc46bda2402c25374abc3c.gz/SHA256E-s915790849--37ffb0487ad87004191e8d7f14dae47a4eda69fee7dc46bda2402c25374abc3c.gz";
      r2 = "KW/fP/SHA256E-s914637429--d00aed25391fd1dd6f42eb94bb9df26aa1775178c4032688db457bc769efe045.gz/SHA256E-s914637429--d00aed25391fd1dd6f42eb94bb9df26aa1775178c4032688db457bc769efe045.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "02/pg/SHA256E-s923701828--cc53ef7566251b49395a7954c720044bfe672e996f3f2f7d54fd64b147c1666b.gz/SHA256E-s923701828--cc53ef7566251b49395a7954c720044bfe672e996f3f2f7d54fd64b147c1666b.gz";
      r2 = "Kz/Wv/SHA256E-s918434321--ad54ed406e370c22076f313853344592ea4883e665749a9d9e1fa8c6957cd5d3.gz/SHA256E-s918434321--ad54ed406e370c22076f313853344592ea4883e665749a9d9e1fa8c6957cd5d3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0007";
    typeHla = true;
    capture = TwistV2HR;
  }
