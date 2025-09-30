with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "7q/fK/SHA256E-s994641762--aeab27bfaab0d2e85223fbdac6d494875554a15ceeb2ec3aefb643e04942d480.gz/SHA256E-s994641762--aeab27bfaab0d2e85223fbdac6d494875554a15ceeb2ec3aefb643e04942d480.gz";
      r2 = "zF/0Q/SHA256E-s994997702--f1f9e202e76503d9233de4e8fd35d250b443cb29121dfee686a6af155d1f94df.gz/SHA256E-s994997702--f1f9e202e76503d9233de4e8fd35d250b443cb29121dfee686a6af155d1f94df.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "7p/3j/SHA256E-s1037663605--70b444bf3d69f8acdd5415ba327ff46f9f854883dd1e7ba4487a8aed59556a2f.gz/SHA256E-s1037663605--70b444bf3d69f8acdd5415ba327ff46f9f854883dd1e7ba4487a8aed59556a2f.gz";
      r2 = "fw/Q7/SHA256E-s1040634089--cd46784eeada1909d490aaacdeab87b4be0176a49c0fc29e26a4ac69f80b733a.gz/SHA256E-s1040634089--cd46784eeada1909d490aaacdeab87b4be0176a49c0fc29e26a4ac69f80b733a.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Gf/xk/SHA256E-s1026938381--7f4c81be48e1cf8bd13d0a0c96ded8271a47517cb8fe11e7f8e69650d5e070eb.gz/SHA256E-s1026938381--7f4c81be48e1cf8bd13d0a0c96ded8271a47517cb8fe11e7f8e69650d5e070eb.gz";
      r2 = "WZ/qJ/SHA256E-s1031167647--95602e9ce306d3d8858fd92c9676e45c5ab9bf773c6dca2255625000e7c7f199.gz/SHA256E-s1031167647--95602e9ce306d3d8858fd92c9676e45c5ab9bf773c6dca2255625000e7c7f199.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "7v/mx/SHA256E-s1025884312--6e762f3048facb7acd350763a0a4911559bafb142dc7dffd1f6eec3228fe7e38.gz/SHA256E-s1025884312--6e762f3048facb7acd350763a0a4911559bafb142dc7dffd1f6eec3228fe7e38.gz";
      r2 = "P3/J5/SHA256E-s1029230588--c4b7ebcbec2acf2b88f99de4fb3199e9ad4b97232fb5ba6c0e18d1549849e68a.gz/SHA256E-s1029230588--c4b7ebcbec2acf2b88f99de4fb3199e9ad4b97232fb5ba6c0e18d1549849e68a.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "3M/3Z/SHA256E-s1060758030--84ec08d3f36187871858959250c5a720eae6b42846cc20e636a99b69e2324a84.gz/SHA256E-s1060758030--84ec08d3f36187871858959250c5a720eae6b42846cc20e636a99b69e2324a84.gz";
      r2 = "W6/G0/SHA256E-s1064794151--ece53d3edd167e2fa97877e003c3ffcddd9846cae072dddd1b02692c70bc415f.gz/SHA256E-s1064794151--ece53d3edd167e2fa97877e003c3ffcddd9846cae072dddd1b02692c70bc415f.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "f2/pk/SHA256E-s1008115810--e5a6cc70cf66278ea0f8104dbaa8b3d2d7a30fe5e0e3e3806bc480b76147ad81.gz/SHA256E-s1008115810--e5a6cc70cf66278ea0f8104dbaa8b3d2d7a30fe5e0e3e3806bc480b76147ad81.gz";
      r2 = "Zq/8K/SHA256E-s1008089780--ee180e286b0656eedebd1f6f958e0805983590f0a194a08cac50901ec82b6f87.gz/SHA256E-s1008089780--ee180e286b0656eedebd1f6f958e0805983590f0a194a08cac50901ec82b6f87.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "V0/PP/SHA256E-s1066196021--c1b04ad724b6e594ae63f60ba532b97bffa3d27879f37c3e226f628f511c0e5d.gz/SHA256E-s1066196021--c1b04ad724b6e594ae63f60ba532b97bffa3d27879f37c3e226f628f511c0e5d.gz";
      r2 = "G7/kQ/SHA256E-s1069607226--88460cee9256073936f827b1acb2041375bcb3d51e565f1963d75d18d39d59a6.gz/SHA256E-s1069607226--88460cee9256073936f827b1acb2041375bcb3d51e565f1963d75d18d39d59a6.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "54/F0/SHA256E-s987551779--4a836efa25835e34b23a589a582a9f59ed6e2e6adc91292d31f72acab4d6ea38.gz/SHA256E-s987551779--4a836efa25835e34b23a589a582a9f59ed6e2e6adc91292d31f72acab4d6ea38.gz";
      r2 = "P5/fK/SHA256E-s986400740--080b1be2447cac4a4294753d32839e67b1e607a6ea59a6f9c7dcb8d4622918ab.gz/SHA256E-s986400740--080b1be2447cac4a4294753d32839e67b1e607a6ea59a6f9c7dcb8d4622918ab.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VM/jp/SHA256E-s941271040--4b0a1f934214af6d4bc05038ace140d4d76028ca49cba4e01e4eac031c39fe53.gz/SHA256E-s941271040--4b0a1f934214af6d4bc05038ace140d4d76028ca49cba4e01e4eac031c39fe53.gz";
      r2 = "v8/ff/SHA256E-s936471519--26a110593988d6853367f762f8b8847ad7e6da9c58764e8b6ef5717b32596521.gz/SHA256E-s936471519--26a110593988d6853367f762f8b8847ad7e6da9c58764e8b6ef5717b32596521.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "ZF/3z/SHA256E-s957442859--417b48413be47550c18ece71c6621418a49582b6970d5fac70b4bf1a9e42a976.gz/SHA256E-s957442859--417b48413be47550c18ece71c6621418a49582b6970d5fac70b4bf1a9e42a976.gz";
      r2 = "xM/m5/SHA256E-s951499992--306eb694df2b3a09abc7b1176f11ed92342b23403327dedce417727e4257f873.gz/SHA256E-s951499992--306eb694df2b3a09abc7b1176f11ed92342b23403327dedce417727e4257f873.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Fz/fp/SHA256E-s956837388--054c196135cc7a657dbf731900e38788d0f81830cf66d8319f58bfdbf1df8171.gz/SHA256E-s956837388--054c196135cc7a657dbf731900e38788d0f81830cf66d8319f58bfdbf1df8171.gz";
      r2 = "ZJ/VF/SHA256E-s947219352--9b74e9fdbd0c3f52a0a8ab0c20034169b4d3f9fd2c3e33bd3a9b8fbde7fdc5e3.gz/SHA256E-s947219352--9b74e9fdbd0c3f52a0a8ab0c20034169b4d3f9fd2c3e33bd3a9b8fbde7fdc5e3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0019";
    typeHla = true;
    capture = TwistV2HR;
  }
