with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "4x/Zg/SHA256E-s2580886148--cd0373697fe65a55f11b8111e7ad9b84d25c26bff2abadd9ea97459acba04ae8.gz/SHA256E-s2580886148--cd0373697fe65a55f11b8111e7ad9b84d25c26bff2abadd9ea97459acba04ae8.gz";
      r2 = "zQ/Fk/SHA256E-s2572119029--3ffb060dc50e91734693a06ae916fb4cb9edcecd02affdf33d2c21b7891a70d0.gz/SHA256E-s2572119029--3ffb060dc50e91734693a06ae916fb4cb9edcecd02affdf33d2c21b7891a70d0.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "Z1/7f/SHA256E-s2588723296--1d589c7900360782e9b586179a04c734e3b41bb8f81bef14536bee4bf16cdd33.gz/SHA256E-s2588723296--1d589c7900360782e9b586179a04c734e3b41bb8f81bef14536bee4bf16cdd33.gz";
      r2 = "5z/8K/SHA256E-s2592414852--71854bc2a5908e8dd003f3022c5179f70f6d0206c7a7d13412e7af41ecc2b404.gz/SHA256E-s2592414852--71854bc2a5908e8dd003f3022c5179f70f6d0206c7a7d13412e7af41ecc2b404.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "62/8J/SHA256E-s2594495973--d926d55e6f5e6312808e0980b2fec851ea2328828ea3be8696e72f0c70c4006a.gz/SHA256E-s2594495973--d926d55e6f5e6312808e0980b2fec851ea2328828ea3be8696e72f0c70c4006a.gz";
      r2 = "Z0/5K/SHA256E-s2593063861--8e253360c0d16c1a0e8ccb96cb46c364b14dcf209df7272cf3239765c63a7c1e.gz/SHA256E-s2593063861--8e253360c0d16c1a0e8ccb96cb46c364b14dcf209df7272cf3239765c63a7c1e.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "gw/JZ/SHA256E-s2447355868--0779ee74da8afe50bb79bacb521d3d32c17b9dfd8c6647ba5887cbab7c6b56ab.gz/SHA256E-s2447355868--0779ee74da8afe50bb79bacb521d3d32c17b9dfd8c6647ba5887cbab7c6b56ab.gz";
      r2 = "00/9k/SHA256E-s2460645185--eb691fa5a470381287ff0fdf2dd69d8953fa45b03c3ea523384b680cad5d47c5.gz/SHA256E-s2460645185--eb691fa5a470381287ff0fdf2dd69d8953fa45b03c3ea523384b680cad5d47c5.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "2M/m8/SHA256E-s2340174723--2b1dc486b717e76510e3f1a58fe73a86928288053a8345321aa6a2d15d56ca94.gz/SHA256E-s2340174723--2b1dc486b717e76510e3f1a58fe73a86928288053a8345321aa6a2d15d56ca94.gz";
      r2 = "FF/q6/SHA256E-s2351633479--627094b3c4920595db59670bf963531425136418e160aed63125231c65f8bf99.gz/SHA256E-s2351633479--627094b3c4920595db59670bf963531425136418e160aed63125231c65f8bf99.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "kX/xZ/SHA256E-s2341486385--08f985914c0bd55e26903b96a5f8435bcbdedb30072b0ab3e40a1356d8620d4a.gz/SHA256E-s2341486385--08f985914c0bd55e26903b96a5f8435bcbdedb30072b0ab3e40a1356d8620d4a.gz";
      r2 = "7z/qk/SHA256E-s2364019874--2b094ddb551b82edfce8c4e712b337c0df3ec7c4b918a4edb40f955d65f84033.gz/SHA256E-s2364019874--2b094ddb551b82edfce8c4e712b337c0df3ec7c4b918a4edb40f955d65f84033.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "M6/8Z/SHA256E-s2351877225--de924ac5af1dd37c8fddd963b14d953039cf1a577a5c48e9dbdde716ea6f46da.gz/SHA256E-s2351877225--de924ac5af1dd37c8fddd963b14d953039cf1a577a5c48e9dbdde716ea6f46da.gz";
      r2 = "G0/j8/SHA256E-s2370732466--fc403315330dcbd83ce0abfb14152efef2002b5c8a64a8184d88aa2d07a6d6f0.gz/SHA256E-s2370732466--fc403315330dcbd83ce0abfb14152efef2002b5c8a64a8184d88aa2d07a6d6f0.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "k6/0x/SHA256E-s2192300601--3021670238cca0ea1617eccdfbfac6c6192732c1a598dfeda5465e60aef94376.gz/SHA256E-s2192300601--3021670238cca0ea1617eccdfbfac6c6192732c1a598dfeda5465e60aef94376.gz";
      r2 = "ZZ/qg/SHA256E-s2222854509--9e7721326a2c586ba3c737c6284eafaabfdb81b140f3f30b0509a1194eb41523.gz/SHA256E-s2222854509--9e7721326a2c586ba3c737c6284eafaabfdb81b140f3f30b0509a1194eb41523.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "P1/vj/SHA256E-s742838170--03d84744d0bca5db5aa0ef5b633d845c111b2b166cfb61d30c1a183c628bb609.gz/SHA256E-s742838170--03d84744d0bca5db5aa0ef5b633d845c111b2b166cfb61d30c1a183c628bb609.gz";
      r2 = "Gk/Zq/SHA256E-s747385378--66909fa3714d494b6925fc0e6c76df1930772a97a83d9d89b149a73eb6050c96.gz/SHA256E-s747385378--66909fa3714d494b6925fc0e6c76df1930772a97a83d9d89b149a73eb6050c96.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "66/x8/SHA256E-s747130259--b172b8e267400c621b2efef6b2f9f4e72c1e44d4fc5b4875cb95f62679840320.gz/SHA256E-s747130259--b172b8e267400c621b2efef6b2f9f4e72c1e44d4fc5b4875cb95f62679840320.gz";
      r2 = "Zk/7w/SHA256E-s756418934--1c3d99682ae74611979caf804c0833777cb59f1c8ea698f356daf32f8caef6a6.gz/SHA256E-s756418934--1c3d99682ae74611979caf804c0833777cb59f1c8ea698f356daf32f8caef6a6.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "jw/Mx/SHA256E-s739908882--d74a8c632c02c5e22cf12f6d2f17c3583f99c4a9dc5c1830def857e7ef4318b5.gz/SHA256E-s739908882--d74a8c632c02c5e22cf12f6d2f17c3583f99c4a9dc5c1830def857e7ef4318b5.gz";
      r2 = "gJ/Wp/SHA256E-s746955525--8c9b64f920cec25df6f1a01c32b99ecc7814ad74df9a31d9bbdbe169d3cf0214.gz/SHA256E-s746955525--8c9b64f920cec25df6f1a01c32b99ecc7814ad74df9a31d9bbdbe169d3cf0214.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "VX/XG/SHA256E-s787195163--1d4c4e6c7497d7f501272585c4f44b67de28a0e3359d7bcc0fe7816ca2961efd.gz/SHA256E-s787195163--1d4c4e6c7497d7f501272585c4f44b67de28a0e3359d7bcc0fe7816ca2961efd.gz";
      r2 = "gG/09/SHA256E-s799616435--d8ead29baeaa345b34d620c3f381636be1414add35bc77a7b2a901222e416311.gz/SHA256E-s799616435--d8ead29baeaa345b34d620c3f381636be1414add35bc77a7b2a901222e416311.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE06";
    capture = TwistV2HR;
  }
