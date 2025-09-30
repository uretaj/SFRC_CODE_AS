with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "mv/17/SHA256E-s1134966021--1708ceec3d462d45887034132a2c289b9b410b5d213228357def554ebf298f19.gz/SHA256E-s1134966021--1708ceec3d462d45887034132a2c289b9b410b5d213228357def554ebf298f19.gz";
      r2 = "5W/z1/SHA256E-s1141898721--3cb644530184b09eee09869fa71636047d28b6d4fdaa1b5c38df036184204051.gz/SHA256E-s1141898721--3cb644530184b09eee09869fa71636047d28b6d4fdaa1b5c38df036184204051.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "fj/f8/SHA256E-s1163084123--ca2ec4a04080c7dacecf65e2f4878e6692e4ba11609c298ecd8bbc8c35ba72c6.gz/SHA256E-s1163084123--ca2ec4a04080c7dacecf65e2f4878e6692e4ba11609c298ecd8bbc8c35ba72c6.gz";
      r2 = "j7/3j/SHA256E-s1173435656--6b6006bf896fa5c8771229ed679df79d505bd1b77bb75c5ea0317dbde9910772.gz/SHA256E-s1173435656--6b6006bf896fa5c8771229ed679df79d505bd1b77bb75c5ea0317dbde9910772.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "M5/ZW/SHA256E-s1162846956--6fd3ae2d00e0acb253ada2cc2081971dada084fd8a23a274ea398d48362ae26b.gz/SHA256E-s1162846956--6fd3ae2d00e0acb253ada2cc2081971dada084fd8a23a274ea398d48362ae26b.gz";
      r2 = "qV/qW/SHA256E-s1175047861--bf0051ca67d23bded2014d60a04902d013fe0370064d44112845f0645446c433.gz/SHA256E-s1175047861--bf0051ca67d23bded2014d60a04902d013fe0370064d44112845f0645446c433.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "7w/Kv/SHA256E-s1185543979--7b059bff4bfa6dd1f2e663cc292b779078358fd97435d58b32bf1b2d3655a76c.gz/SHA256E-s1185543979--7b059bff4bfa6dd1f2e663cc292b779078358fd97435d58b32bf1b2d3655a76c.gz";
      r2 = "mW/7j/SHA256E-s1196825532--94e9ead81d6193a262b9d0ac6cf595ce334cfbd9235d6e32f724abac5f83eff1.gz/SHA256E-s1196825532--94e9ead81d6193a262b9d0ac6cf595ce334cfbd9235d6e32f724abac5f83eff1.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "pX/3M/SHA256E-s1204308775--601262ca1bdbe8853ec0a21b169169e41c4c5b66fbc1eb885b86e4245a1f2702.gz/SHA256E-s1204308775--601262ca1bdbe8853ec0a21b169169e41c4c5b66fbc1eb885b86e4245a1f2702.gz";
      r2 = "J1/MQ/SHA256E-s1216652287--50cf57fd5d44591cb055c7611ee8c04aa029d0dbf0842533419edf9dd44797de.gz/SHA256E-s1216652287--50cf57fd5d44591cb055c7611ee8c04aa029d0dbf0842533419edf9dd44797de.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "mw/jq/SHA256E-s1147022136--df6a4d1da34a47f2a81ec02af4e359ea3557fe35a7816dde428ca69368c24f0a.gz/SHA256E-s1147022136--df6a4d1da34a47f2a81ec02af4e359ea3557fe35a7816dde428ca69368c24f0a.gz";
      r2 = "j5/W0/SHA256E-s1154730589--a5b87af847aefb4ea608b66878085ee76655dbd092cddd34223f4f0f545a9401.gz/SHA256E-s1154730589--a5b87af847aefb4ea608b66878085ee76655dbd092cddd34223f4f0f545a9401.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "gx/55/SHA256E-s1191766059--17874ded82114cbde1b206ffb3aa6eb663f39c15f7a2c05007f63c40cf15e803.gz/SHA256E-s1191766059--17874ded82114cbde1b206ffb3aa6eb663f39c15f7a2c05007f63c40cf15e803.gz";
      r2 = "V9/9W/SHA256E-s1203548615--d584f418b83c7dd21bf622bc6556129ecbc10bd6de457437cf0ad2ab739ed220.gz/SHA256E-s1203548615--d584f418b83c7dd21bf622bc6556129ecbc10bd6de457437cf0ad2ab739ed220.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "Vq/q3/SHA256E-s1130523935--7644f977de9a8e7f25a218a6c8dea589b3797172ed5cb9921d995e20d8fc315a.gz/SHA256E-s1130523935--7644f977de9a8e7f25a218a6c8dea589b3797172ed5cb9921d995e20d8fc315a.gz";
      r2 = "GK/gG/SHA256E-s1136697042--a2500467c7459d3922852667856932d8e9ef34ba32d3afc2f45e54639aa7816b.gz/SHA256E-s1136697042--a2500467c7459d3922852667856932d8e9ef34ba32d3afc2f45e54639aa7816b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "mp/vf/SHA256E-s884430062--4cb4d61d1b8433f4753a01aa75466f3156675a163e00c3e64cc7be0863c02d8f.gz/SHA256E-s884430062--4cb4d61d1b8433f4753a01aa75466f3156675a163e00c3e64cc7be0863c02d8f.gz";
      r2 = "2z/wJ/SHA256E-s880548902--4b6f4e8890eaf5c242de1d36c7811cef484594ac18da284e3df8efd026810dc3.gz/SHA256E-s880548902--4b6f4e8890eaf5c242de1d36c7811cef484594ac18da284e3df8efd026810dc3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Gv/Zq/SHA256E-s901764910--4ff383d7f008e149e666e125bd0cc09945015d0de2be0aa52a0f9325fc84bb88.gz/SHA256E-s901764910--4ff383d7f008e149e666e125bd0cc09945015d0de2be0aa52a0f9325fc84bb88.gz";
      r2 = "fg/Ff/SHA256E-s896639994--ac8f4f6033879483df7cd5fe85d06108feaf6737e5b14fa36f2647410882bcdc.gz/SHA256E-s896639994--ac8f4f6033879483df7cd5fe85d06108feaf6737e5b14fa36f2647410882bcdc.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "32/z1/SHA256E-s907857286--71c3f7e7e4d1eb25f109f4e3dec480e89f335a8b169e59cd3d55f4ff8cd478d0.gz/SHA256E-s907857286--71c3f7e7e4d1eb25f109f4e3dec480e89f335a8b169e59cd3d55f4ff8cd478d0.gz";
      r2 = "Mq/2M/SHA256E-s898756867--ead98cf76c3e17293c3ba268531f1d1287cc5390200c45ac7fb5334d29ae2d0c.gz/SHA256E-s898756867--ead98cf76c3e17293c3ba268531f1d1287cc5390200c45ac7fb5334d29ae2d0c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0115";
    typeHla = true;
    capture = TwistV2HR;
  }
