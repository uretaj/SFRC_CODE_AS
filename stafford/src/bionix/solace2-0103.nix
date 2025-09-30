with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "83/ZG/SHA256E-s980786202--eb2d24708b001785b2ee0d8f1f94c2d1c94f2794253ab6fa5d09bab8a30fa2fe.gz/SHA256E-s980786202--eb2d24708b001785b2ee0d8f1f94c2d1c94f2794253ab6fa5d09bab8a30fa2fe.gz";
      r2 = "7j/7K/SHA256E-s978541323--55cf9fd9ba67ec3ff115a5cdee2c41c542ede9dd5fe4658e8fe78b66ce2c716a.gz/SHA256E-s978541323--55cf9fd9ba67ec3ff115a5cdee2c41c542ede9dd5fe4658e8fe78b66ce2c716a.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "49/3Q/SHA256E-s1019159386--ccb11ce62733841512c463c45abe1d945b1d7397590da0c5e98dff4d10929568.gz/SHA256E-s1019159386--ccb11ce62733841512c463c45abe1d945b1d7397590da0c5e98dff4d10929568.gz";
      r2 = "9f/qP/SHA256E-s1019870082--39403f356a38dff794b6466dd5849ad85dbccaff4b2dd065276cbd8788a0a416.gz/SHA256E-s1019870082--39403f356a38dff794b6466dd5849ad85dbccaff4b2dd065276cbd8788a0a416.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Qf/3f/SHA256E-s1013742080--e089f80610306efd9ab74476202fbbd941a5b0676c5f3832f0d7932bd70baca0.gz/SHA256E-s1013742080--e089f80610306efd9ab74476202fbbd941a5b0676c5f3832f0d7932bd70baca0.gz";
      r2 = "zZ/KF/SHA256E-s1015686278--96cdefecc2868fe137b8d7ac0c75630077356355f4fafeb9ea1ed75699503b44.gz/SHA256E-s1015686278--96cdefecc2868fe137b8d7ac0c75630077356355f4fafeb9ea1ed75699503b44.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "70/v3/SHA256E-s1012018357--1644255928b30ed4e8b88891de0ae6647af0c1830e9fdc0fabdb015125d8f78b.gz/SHA256E-s1012018357--1644255928b30ed4e8b88891de0ae6647af0c1830e9fdc0fabdb015125d8f78b.gz";
      r2 = "k2/46/SHA256E-s1013128634--52f6f03bba9e07cc098f0d8a61daf82028dc6a72cada8bbc19850342f7864b60.gz/SHA256E-s1013128634--52f6f03bba9e07cc098f0d8a61daf82028dc6a72cada8bbc19850342f7864b60.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "wX/v6/SHA256E-s1043314904--66759b7039233d9feba46edb6e4734e5347bfce163c95361693577c6fca402fa.gz/SHA256E-s1043314904--66759b7039233d9feba46edb6e4734e5347bfce163c95361693577c6fca402fa.gz";
      r2 = "mW/Zw/SHA256E-s1045219214--72353dc7f2cace58046eb74908428dc82e79290520928bb225d6af60b47409ba.gz/SHA256E-s1045219214--72353dc7f2cace58046eb74908428dc82e79290520928bb225d6af60b47409ba.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Xq/m9/SHA256E-s1016954851--9ac4f211bcd8e6912e38781d7bfe8dfd12f0910fd83849c43ab2c4b8e92a2b1f.gz/SHA256E-s1016954851--9ac4f211bcd8e6912e38781d7bfe8dfd12f0910fd83849c43ab2c4b8e92a2b1f.gz";
      r2 = "xG/X2/SHA256E-s1014676237--7ae5e002a56aabc402bb10169a3006a984e370f7d7cb191a7b2d0e578b609ff1.gz/SHA256E-s1014676237--7ae5e002a56aabc402bb10169a3006a984e370f7d7cb191a7b2d0e578b609ff1.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "qX/v9/SHA256E-s1046511118--970d41ceddb3ea652fe0f3eaf74062c6f75f6627e711d6f3cbc66efda6f23430.gz/SHA256E-s1046511118--970d41ceddb3ea652fe0f3eaf74062c6f75f6627e711d6f3cbc66efda6f23430.gz";
      r2 = "gw/Fp/SHA256E-s1047564564--38cdbdc542e0cca33e0fce654ded8740f704f14edcd9ac7634f55e8c7c329b61.gz/SHA256E-s1047564564--38cdbdc542e0cca33e0fce654ded8740f704f14edcd9ac7634f55e8c7c329b61.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "fJ/JJ/SHA256E-s994922457--442d721cc03248056abd0bd905123794e5fbf270d24331fe6991424c41407b93.gz/SHA256E-s994922457--442d721cc03248056abd0bd905123794e5fbf270d24331fe6991424c41407b93.gz";
      r2 = "ZJ/Jm/SHA256E-s991030019--5b007cc2762375cc71a3418875220b8ba8ea7dec8f37761f971b72e3e2da4d8d.gz/SHA256E-s991030019--5b007cc2762375cc71a3418875220b8ba8ea7dec8f37761f971b72e3e2da4d8d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "f8/pX/SHA256E-s942669470--71d7cced579e33a5be6d1fa7ca158152d183985b6b0d65a8d1679cfa38607dde.gz/SHA256E-s942669470--71d7cced579e33a5be6d1fa7ca158152d183985b6b0d65a8d1679cfa38607dde.gz";
      r2 = "gw/1g/SHA256E-s943839756--ddfa5644b68b12890cab0ec1e44e51d8e99b7f9a52bf63f27ce73a4f2fb1ce52.gz/SHA256E-s943839756--ddfa5644b68b12890cab0ec1e44e51d8e99b7f9a52bf63f27ce73a4f2fb1ce52.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "JQ/1Q/SHA256E-s957792262--c234f37883a0a8952a1571722491e75f271af6278e8965160232d63f369347f6.gz/SHA256E-s957792262--c234f37883a0a8952a1571722491e75f271af6278e8965160232d63f369347f6.gz";
      r2 = "wP/12/SHA256E-s957633655--d918563f2f6d29ce02dd788418df743d09047fd3da2db4f3a6b16e1045d4a1e5.gz/SHA256E-s957633655--d918563f2f6d29ce02dd788418df743d09047fd3da2db4f3a6b16e1045d4a1e5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "3p/kW/SHA256E-s959131293--5982be14952748ec9301c0710d8cb9d0573abad08f269d94ba89949ca40c9853.gz/SHA256E-s959131293--5982be14952748ec9301c0710d8cb9d0573abad08f269d94ba89949ca40c9853.gz";
      r2 = "Jj/W0/SHA256E-s955115888--51788641ec6ed7351fa280e30906cc7b9a03115d3ac5fe3a20fb755b37a4d8e2.gz/SHA256E-s955115888--51788641ec6ed7351fa280e30906cc7b9a03115d3ac5fe3a20fb755b37a4d8e2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0103";
    typeHla = true;
    capture = TwistV2HR;
  }
