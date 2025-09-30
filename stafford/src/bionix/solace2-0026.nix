with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "48/Xx/SHA256E-s1176852934--5786c5bdcd92e8298122db86161015a264a38f080334ae2800960c30e03c1e1f.gz/SHA256E-s1176852934--5786c5bdcd92e8298122db86161015a264a38f080334ae2800960c30e03c1e1f.gz";
      r2 = "8M/Wx/SHA256E-s1177726807--58873e17fa6cfb3018bbb370740c7595b1b6c60c1e5a106b0ff0d8970d938073.gz/SHA256E-s1177726807--58873e17fa6cfb3018bbb370740c7595b1b6c60c1e5a106b0ff0d8970d938073.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "kk/jf/SHA256E-s1206828407--66a0c3384528ba705fcfe26d3d6d0b8fea76c75eeb904fd742cdeaf12ff4604f.gz/SHA256E-s1206828407--66a0c3384528ba705fcfe26d3d6d0b8fea76c75eeb904fd742cdeaf12ff4604f.gz";
      r2 = "WX/QM/SHA256E-s1211036673--98933504b7f83e556eb8bcbf76f8fa9e39998c22da1aa3fd1c7005f9fe486ad7.gz/SHA256E-s1211036673--98933504b7f83e556eb8bcbf76f8fa9e39998c22da1aa3fd1c7005f9fe486ad7.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "jZ/10/SHA256E-s1192941862--2c67964b04a964b23a47f5ffbedf9ff01f61f08c2acfd19895cb6b66e4094841.gz/SHA256E-s1192941862--2c67964b04a964b23a47f5ffbedf9ff01f61f08c2acfd19895cb6b66e4094841.gz";
      r2 = "gK/j1/SHA256E-s1198948093--54c96f525fa4bc965dcc1e654f607c44df66493e600d026dbb800b1ed0a0e878.gz/SHA256E-s1198948093--54c96f525fa4bc965dcc1e654f607c44df66493e600d026dbb800b1ed0a0e878.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "XQ/GZ/SHA256E-s1192159369--37aa5cd5e5af2fa403071d54667f7552de96f7e7791830f9627462ca03248dce.gz/SHA256E-s1192159369--37aa5cd5e5af2fa403071d54667f7552de96f7e7791830f9627462ca03248dce.gz";
      r2 = "mF/90/SHA256E-s1197239246--67e29efdb22530cd8f809b6c65eec7f02f2cf9c71be62120850557018670b99a.gz/SHA256E-s1197239246--67e29efdb22530cd8f809b6c65eec7f02f2cf9c71be62120850557018670b99a.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "Fv/jp/SHA256E-s1229073767--ff1e63c1f72b17198a610cdf35dd1f83e97d7cc11f60f4c776edd00f0fa883fa.gz/SHA256E-s1229073767--ff1e63c1f72b17198a610cdf35dd1f83e97d7cc11f60f4c776edd00f0fa883fa.gz";
      r2 = "ZM/pZ/SHA256E-s1234963284--558ad45bae3fafb4be23158f89705b0035e7c0eda9b9c0c7458a60b225d033a7.gz/SHA256E-s1234963284--558ad45bae3fafb4be23158f89705b0035e7c0eda9b9c0c7458a60b225d033a7.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "Mv/01/SHA256E-s1186887675--b5219c2ec06f017750151eed8aacd5b012ce01f7c8ff445236863595d6176169.gz/SHA256E-s1186887675--b5219c2ec06f017750151eed8aacd5b012ce01f7c8ff445236863595d6176169.gz";
      r2 = "p3/kQ/SHA256E-s1188143711--7978e5b6b75e109c0a8349d9031e8b4df00bf71f09731f446d8e1f8826474e47.gz/SHA256E-s1188143711--7978e5b6b75e109c0a8349d9031e8b4df00bf71f09731f446d8e1f8826474e47.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "gf/pZ/SHA256E-s1231936893--be68d1ae913e0348c1f4fb26f1b83cb14fb45866bff97d51f7bb7a95fa871365.gz/SHA256E-s1231936893--be68d1ae913e0348c1f4fb26f1b83cb14fb45866bff97d51f7bb7a95fa871365.gz";
      r2 = "qj/Kq/SHA256E-s1237018750--2ea846f4f451cba4f56d3c2ec378467c6e834ac49f7b7e7328d5dc1845621a38.gz/SHA256E-s1237018750--2ea846f4f451cba4f56d3c2ec378467c6e834ac49f7b7e7328d5dc1845621a38.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "qf/fp/SHA256E-s1166633391--3147f90bc58b7cd290a4ce99211534d8d171eb595fb96fb435175b48a4805f50.gz/SHA256E-s1166633391--3147f90bc58b7cd290a4ce99211534d8d171eb595fb96fb435175b48a4805f50.gz";
      r2 = "vg/WP/SHA256E-s1166503140--fc148235f9395a4833b0619fb932b332ce88314effdbfda343c62381b3ffe9e6.gz/SHA256E-s1166503140--fc148235f9395a4833b0619fb932b332ce88314effdbfda343c62381b3ffe9e6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "77/68/SHA256E-s856977040--8d0100580d1ace4ffbfe864745d28b8d3e7525f01e0da5f64b81abed20b25efd.gz/SHA256E-s856977040--8d0100580d1ace4ffbfe864745d28b8d3e7525f01e0da5f64b81abed20b25efd.gz";
      r2 = "xZ/kk/SHA256E-s858168281--16cbd2d19b1a5fc153e44c47790da68d0169a0e53da7d0148c2a02ed99714fb8.gz/SHA256E-s858168281--16cbd2d19b1a5fc153e44c47790da68d0169a0e53da7d0148c2a02ed99714fb8.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "4f/83/SHA256E-s864737022--7d71783a511b987706f44e393ed11bee849ed49cc145dd6177e1f9a0b62ec949.gz/SHA256E-s864737022--7d71783a511b987706f44e393ed11bee849ed49cc145dd6177e1f9a0b62ec949.gz";
      r2 = "P0/qw/SHA256E-s864793382--d3090df72999f269f3812f0649cef5dc23a9f25161aeb30eab494de82ff452ab.gz/SHA256E-s864793382--d3090df72999f269f3812f0649cef5dc23a9f25161aeb30eab494de82ff452ab.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "qJ/0g/SHA256E-s864863128--0acfb9f11f59603171d913efb7f3c894717e8bb8bf5a13a06cac833436eba142.gz/SHA256E-s864863128--0acfb9f11f59603171d913efb7f3c894717e8bb8bf5a13a06cac833436eba142.gz";
      r2 = "P3/FV/SHA256E-s861383283--9cf390ba1b794b0c43a3eb6918d64b50f403a47efa5a845d4c30164edb0498bf.gz/SHA256E-s861383283--9cf390ba1b794b0c43a3eb6918d64b50f403a47efa5a845d4c30164edb0498bf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0026";
    typeHla = true;
    capture = TwistV2HR;
  }
