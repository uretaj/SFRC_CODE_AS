with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "19/91/SHA256E-s1026377106--ca1ef35f2ccd0eeb659e38dce487206fd406bbeccfbd0559ee04723558de25e2.gz/SHA256E-s1026377106--ca1ef35f2ccd0eeb659e38dce487206fd406bbeccfbd0559ee04723558de25e2.gz";
      r2 = "X7/GZ/SHA256E-s1035691722--270e42df613ded40acecbd1278164431d04e143c8270ed4cf72e695a305b6fc1.gz/SHA256E-s1035691722--270e42df613ded40acecbd1278164431d04e143c8270ed4cf72e695a305b6fc1.gz";
    }

    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "2M/m0/SHA256E-s1062328873--e983d2dbf9843608fe3daa349cf3bab4579882950d8e92acc59d7a51f367af49.gz/SHA256E-s1062328873--e983d2dbf9843608fe3daa349cf3bab4579882950d8e92acc59d7a51f367af49.gz";
      r2 = "vv/J1/SHA256E-s1074842889--71d74bad8187aa978a04eb31a9eebc0ac4f3ddd875a96da314f615ae3db29720.gz/SHA256E-s1074842889--71d74bad8187aa978a04eb31a9eebc0ac4f3ddd875a96da314f615ae3db29720.gz";
    }

    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "Gp/KW/SHA256E-s1050833742--bcc6b51ab886e211f2cd6a6c010de19ec74e5ed53dfb4cdd4857960fd8591d6b.gz/SHA256E-s1050833742--bcc6b51ab886e211f2cd6a6c010de19ec74e5ed53dfb4cdd4857960fd8591d6b.gz";
      r2 = "Vf/WW/SHA256E-s1064546990--f2e4e26e74cce4e0454a53bc2a19a2fbb3505b7af8c7fe8661d218390db11b7a.gz/SHA256E-s1064546990--f2e4e26e74cce4e0454a53bc2a19a2fbb3505b7af8c7fe8661d218390db11b7a.gz";
    }

    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "x7/vq/SHA256E-s1071538258--998bd8b2e361947f61a4b445c42f3dc488053f18cf747d286122a42174813d66.gz/SHA256E-s1071538258--998bd8b2e361947f61a4b445c42f3dc488053f18cf747d286122a42174813d66.gz";
      r2 = "9F/wF/SHA256E-s1084317549--208c3c478f102e79a660d64d4542ad651f0b5a3300e7c9aca04f7f3338c0dbbb.gz/SHA256E-s1084317549--208c3c478f102e79a660d64d4542ad651f0b5a3300e7c9aca04f7f3338c0dbbb.gz";
    }

    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "0G/G5/SHA256E-s1099233093--39edc593c590032feea1f8b118d8aa5d6f1d650b428bc565257c3038442010a6.gz/SHA256E-s1099233093--39edc593c590032feea1f8b118d8aa5d6f1d650b428bc565257c3038442010a6.gz";
      r2 = "F0/7g/SHA256E-s1113301147--7a56844319f3953a09531813e9ba03fbc37dac5460c8fc39ffaae8441b283b59.gz/SHA256E-s1113301147--7a56844319f3953a09531813e9ba03fbc37dac5460c8fc39ffaae8441b283b59.gz";
    }

    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "VM/Pg/SHA256E-s1017193569--4768d3ba0fd9e733e2114f6db71a47759abdaa4bc64bd67e53ae0685a9a024bc.gz/SHA256E-s1017193569--4768d3ba0fd9e733e2114f6db71a47759abdaa4bc64bd67e53ae0685a9a024bc.gz";
      r2 = "Mg/Jm/SHA256E-s1026075972--42a15ac1f1d9d2e815e7102fc4033f28e2b3231a78b38c67d86ecf47c925ec27.gz/SHA256E-s1026075972--42a15ac1f1d9d2e815e7102fc4033f28e2b3231a78b38c67d86ecf47c925ec27.gz";
    }

    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "20/xK/SHA256E-s1093579222--271f85bcefec63abcaad6861be227e73fcc7f2c4285c7ba6e8a505ea666bc7b7.gz/SHA256E-s1093579222--271f85bcefec63abcaad6861be227e73fcc7f2c4285c7ba6e8a505ea666bc7b7.gz";
      r2 = "v8/2p/SHA256E-s1107424357--76eb64cbc8a9abaead47930800cc2a0f85fd50955b60e31e88d0d22a86f8679c.gz/SHA256E-s1107424357--76eb64cbc8a9abaead47930800cc2a0f85fd50955b60e31e88d0d22a86f8679c.gz";
    }

    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "3p/73/SHA256E-s995997048--2a9f555ccc93e92ef806ab5b0cc0c9ed6f2f4d969e7e78bb5f325e3a8281f6c2.gz/SHA256E-s995997048--2a9f555ccc93e92ef806ab5b0cc0c9ed6f2f4d969e7e78bb5f325e3a8281f6c2.gz";
      r2 = "9W/v9/SHA256E-s1003931751--b4e612a84c3bd8d0389fbf8dd62d9553762c072e89c9c80d3445396c31fd22a8.gz/SHA256E-s1003931751--b4e612a84c3bd8d0389fbf8dd62d9553762c072e89c9c80d3445396c31fd22a8.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jk/jM/SHA256E-s1044854835--5889f6e477c201f2a265ccc0712b7b931fdbf4f65640dc543adf73f19dd73235.gz/SHA256E-s1044854835--5889f6e477c201f2a265ccc0712b7b931fdbf4f65640dc543adf73f19dd73235.gz";
      r2 = "xQ/xJ/SHA256E-s1051047163--1cc75dee538133a5d0e771f3000c070383614859556cdf92f53e6a54fa248707.gz/SHA256E-s1051047163--1cc75dee538133a5d0e771f3000c070383614859556cdf92f53e6a54fa248707.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "GM/gM/SHA256E-s1058259377--2e69c0f074a6acce7ad80477a641fb8866a9e7b2cc161dac433ae997a33836a8.gz/SHA256E-s1058259377--2e69c0f074a6acce7ad80477a641fb8866a9e7b2cc161dac433ae997a33836a8.gz";
      r2 = "gx/gP/SHA256E-s1062436757--43c9ef84863924fd67db6978b8af8bce573516d147b0b12f6166ac1e02260584.gz/SHA256E-s1062436757--43c9ef84863924fd67db6978b8af8bce573516d147b0b12f6166ac1e02260584.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pg/mf/SHA256E-s1058445977--8fdfcda8808b6869c311fd534105fe95afd3de2cc56fd775703aa7d7547aa90e.gz/SHA256E-s1058445977--8fdfcda8808b6869c311fd534105fe95afd3de2cc56fd775703aa7d7547aa90e.gz";
      r2 = "qg/8F/SHA256E-s1057974745--8a4cc6201b18451a35d7ec24e2fd3625bf360c608110cf0629353c09de2999b2.gz/SHA256E-s1057974745--8a4cc6201b18451a35d7ec24e2fd3625bf360c608110cf0629353c09de2999b2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0129";
    typeHla = true;
    capture = TwistV2HR;
  }
