with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3E";
      class = "tumours";
      pdx = false;
      r1 = "3Q/q4/SHA256E-s3739175253--ce6a47460b34357c00f4c7eda192dd5f5326e2f4e91f3d11450e8f4b5c298019.gz/SHA256E-s3739175253--ce6a47460b34357c00f4c7eda192dd5f5326e2f4e91f3d11450e8f4b5c298019.gz";
      r2 = "wp/w5/SHA256E-s3798406201--e7273932883d54bd19cf90d0cd9c2d27cad31877ceea3e4fd08f034e9dcca699.gz/SHA256E-s3798406201--e7273932883d54bd19cf90d0cd9c2d27cad31877ceea3e4fd08f034e9dcca699.gz";
    }

    {
      site = "3E";
      class = "tumours";
      pdx = false;
      r1 = "3Z/xG/SHA256E-s3784717733--86a86a9fc8fc67c1e87bd8a5d31ab7b6e0f00bc00947c5a7d28f104dcf949a70.gz/SHA256E-s3784717733--86a86a9fc8fc67c1e87bd8a5d31ab7b6e0f00bc00947c5a7d28f104dcf949a70.gz";
      r2 = "8F/mZ/SHA256E-s3828923640--a58301e3e32233630d4464ef33fbcb051ab1f4a6119376694ee540a6721f31a6.gz/SHA256E-s3828923640--a58301e3e32233630d4464ef33fbcb051ab1f4a6119376694ee540a6721f31a6.gz";
    }

    {
      site = "3E";
      class = "tumours";
      pdx = false;
      r1 = "fk/Xk/SHA256E-s3807411460--6d68de9b43dd20f3df97af25c81c2e05b1c795db6e6a0fe7794ee5070baa5315.gz/SHA256E-s3807411460--6d68de9b43dd20f3df97af25c81c2e05b1c795db6e6a0fe7794ee5070baa5315.gz";
      r2 = "8q/Mg/SHA256E-s3842384490--cf48c8236fd6626ec2bebcd574d2d6dfcae31536399ead730bc9caf6795649ef.gz/SHA256E-s3842384490--cf48c8236fd6626ec2bebcd574d2d6dfcae31536399ead730bc9caf6795649ef.gz";
    }

    {
      site = "3E";
      class = "tumours";
      pdx = false;
      r1 = "Z9/m6/SHA256E-s3732933128--801da2cf7ee03b39ec2123b8232a61d1ad765d0d9aa200d0cf8e0263946b155a.gz/SHA256E-s3732933128--801da2cf7ee03b39ec2123b8232a61d1ad765d0d9aa200d0cf8e0263946b155a.gz";
      r2 = "zz/Zk/SHA256E-s3767431626--feddd40f6aa915f1865e5bca02f47bdc93530b61629a50e5c41606fd45c79949.gz/SHA256E-s3767431626--feddd40f6aa915f1865e5bca02f47bdc93530b61629a50e5c41606fd45c79949.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VQ/Qf/SHA256E-s1013393267--241f03e134fd58d5c14a5c61f478403a7135563241d9dcc34152f864cec496e1.gz/SHA256E-s1013393267--241f03e134fd58d5c14a5c61f478403a7135563241d9dcc34152f864cec496e1.gz";
      r2 = "0W/q4/SHA256E-s1018720255--f97e2de13960703badcbb5a9144b4c5f2c0a7fbde91efc66737b6f495ce7b5dc.gz/SHA256E-s1018720255--f97e2de13960703badcbb5a9144b4c5f2c0a7fbde91efc66737b6f495ce7b5dc.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8p/G1/SHA256E-s1035343177--b08f033399c0b6211059f28b12e0ba715dbcd7579bcf90bdcbe02a6e547e2759.gz/SHA256E-s1035343177--b08f033399c0b6211059f28b12e0ba715dbcd7579bcf90bdcbe02a6e547e2759.gz";
      r2 = "xf/Fp/SHA256E-s1038944868--06c954bb571c2e17a530ac4f7820b4e4218d058ccf261a8f69179145dfebbd21.gz/SHA256E-s1038944868--06c954bb571c2e17a530ac4f7820b4e4218d058ccf261a8f69179145dfebbd21.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "qZ/Xf/SHA256E-s1042965180--222868080dbe52947c76b3dfcfcfba2900b9e3f9560b89d340c32257564b9065.gz/SHA256E-s1042965180--222868080dbe52947c76b3dfcfcfba2900b9e3f9560b89d340c32257564b9065.gz";
      r2 = "kz/mv/SHA256E-s1041920738--4c64b9feba47e83e6477246b940baf29cc22033e60ec7a40c0427a8b8ed61842.gz/SHA256E-s1041920738--4c64b9feba47e83e6477246b940baf29cc22033e60ec7a40c0427a8b8ed61842.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0027";
    typeHla = true;
    capture = TwistV2HR;
  }
