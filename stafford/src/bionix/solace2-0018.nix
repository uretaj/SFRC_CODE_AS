with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "m8/84/SHA256E-s480118385--271ce731e17104accee6f2d404d76ffb7ef81f26ef69d7ac3bb314898aced291.gz/SHA256E-s480118385--271ce731e17104accee6f2d404d76ffb7ef81f26ef69d7ac3bb314898aced291.gz";
      r2 = "ZW/7F/SHA256E-s483047155--8a656645a815db407a602664efd2226dda7bc934bff6f5b1c602a6240cce2e32.gz/SHA256E-s483047155--8a656645a815db407a602664efd2226dda7bc934bff6f5b1c602a6240cce2e32.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "qk/mj/SHA256E-s501062070--efa45e62148c4ce744b0f16332a4c085d30bc60115e8cf6b02c277220ce868ca.gz/SHA256E-s501062070--efa45e62148c4ce744b0f16332a4c085d30bc60115e8cf6b02c277220ce868ca.gz";
      r2 = "k7/g3/SHA256E-s505452740--61ed77c162e73650029cf30490b5ce448d5ac586eeaa7251df4ab79001e0442f.gz/SHA256E-s505452740--61ed77c162e73650029cf30490b5ce448d5ac586eeaa7251df4ab79001e0442f.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "f6/WG/SHA256E-s506718505--a9aa35a1de8215b8a6c53d97b34ac513e11818421d6d4b212ae00a0b638dd5fd.gz/SHA256E-s506718505--a9aa35a1de8215b8a6c53d97b34ac513e11818421d6d4b212ae00a0b638dd5fd.gz";
      r2 = "jQ/m7/SHA256E-s511771480--8299051b9b4a0377e84522d83800802756124bc76c859a43a4fe58717c281318.gz/SHA256E-s511771480--8299051b9b4a0377e84522d83800802756124bc76c859a43a4fe58717c281318.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "pK/VM/SHA256E-s514307746--faa1596b5a58f195df985a944fd4d2f6ed74d5eb7efcb10d310f6e4c641e8024.gz/SHA256E-s514307746--faa1596b5a58f195df985a944fd4d2f6ed74d5eb7efcb10d310f6e4c641e8024.gz";
      r2 = "z0/XV/SHA256E-s518834621--3491c5ea51e95a19a762b297b9769e7a4ac143fe18d210486c275e6357cbe677.gz/SHA256E-s518834621--3491c5ea51e95a19a762b297b9769e7a4ac143fe18d210486c275e6357cbe677.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "M2/xw/SHA256E-s522365555--c98d0a332b753fe2e5d71fe8c5169b8654d2e08ef3a628e65d1f5e15bafb0e8e.gz/SHA256E-s522365555--c98d0a332b753fe2e5d71fe8c5169b8654d2e08ef3a628e65d1f5e15bafb0e8e.gz";
      r2 = "X1/0Z/SHA256E-s527023085--6d079cfadf98aebbcf6bcb78fedbe214eadb075fde13ea43c77576b81d58d875.gz/SHA256E-s527023085--6d079cfadf98aebbcf6bcb78fedbe214eadb075fde13ea43c77576b81d58d875.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "q7/JW/SHA256E-s520736772--f6cc34f3fa0ed4af701eea4674747878b59bfad3db14ac2c8660838180e36f69.gz/SHA256E-s520736772--f6cc34f3fa0ed4af701eea4674747878b59bfad3db14ac2c8660838180e36f69.gz";
      r2 = "4P/2J/SHA256E-s523334848--1f059edddbb815daee9124eefd377b73d181d550185f49fee6949f345bf00580.gz/SHA256E-s523334848--1f059edddbb815daee9124eefd377b73d181d550185f49fee6949f345bf00580.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "W4/Zj/SHA256E-s515648862--5894515f99466eccb344be611b4bf51aef697f092d6387ab9715bb25829d8479.gz/SHA256E-s515648862--5894515f99466eccb344be611b4bf51aef697f092d6387ab9715bb25829d8479.gz";
      r2 = "W0/zj/SHA256E-s519878301--f133b72b76315506885d7444c9af5563eac3c665e11121b7a8e8afce045b7d3b.gz/SHA256E-s519878301--f133b72b76315506885d7444c9af5563eac3c665e11121b7a8e8afce045b7d3b.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "m3/Q0/SHA256E-s504594064--128fdc2f961fc645ddcbc85b561417433250494a090254004f32492896d36072.gz/SHA256E-s504594064--128fdc2f961fc645ddcbc85b561417433250494a090254004f32492896d36072.gz";
      r2 = "pg/MX/SHA256E-s506378596--dac5ea287ba962d40fe4fde5553f4ae79832a04bbd147e2ed1876af265586fac.gz/SHA256E-s506378596--dac5ea287ba962d40fe4fde5553f4ae79832a04bbd147e2ed1876af265586fac.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Q9/gq/SHA256E-s1036107182--2b360e843ddd2e8abeac81df4b1d5b53e4586c85fb38cc187c23030e7373d77a.gz/SHA256E-s1036107182--2b360e843ddd2e8abeac81df4b1d5b53e4586c85fb38cc187c23030e7373d77a.gz";
      r2 = "38/1w/SHA256E-s1033309393--83f554585ef3341e95fb7b1249d2a5d0f18413576a9f3331c77929b6933207b7.gz/SHA256E-s1033309393--83f554585ef3341e95fb7b1249d2a5d0f18413576a9f3331c77929b6933207b7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "QV/FV/SHA256E-s1048029150--984bfdaea190624997bda65e7fda4d118c9f07f5404e3ed2d606b4f28445d043.gz/SHA256E-s1048029150--984bfdaea190624997bda65e7fda4d118c9f07f5404e3ed2d606b4f28445d043.gz";
      r2 = "gK/72/SHA256E-s1044140149--e76e2dff64a9986d21c05d2de423498212ba6e0e6783ff98ed9cbc80b5ae8439.gz/SHA256E-s1044140149--e76e2dff64a9986d21c05d2de423498212ba6e0e6783ff98ed9cbc80b5ae8439.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "9K/f8/SHA256E-s1047069972--aad572ece0672d5cb38429cb94e3bd1a7208ad329c26e51c6837cda8c1402dc7.gz/SHA256E-s1047069972--aad572ece0672d5cb38429cb94e3bd1a7208ad329c26e51c6837cda8c1402dc7.gz";
      r2 = "3p/5V/SHA256E-s1039044951--fc9151040fce4ea779676ee31632c95e029a41430738dbc4f37b40b667bc0862.gz/SHA256E-s1039044951--fc9151040fce4ea779676ee31632c95e029a41430738dbc4f37b40b667bc0862.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0018";
    typeHla = true;
    capture = TwistV2HR;
  }
