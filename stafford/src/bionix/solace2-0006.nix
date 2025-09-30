with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "qW/QW/SHA256E-s831978191--f5560609fd9fe1d67518a425c35c1d9364de774477daf9349971fb287bf457e9.gz/SHA256E-s831978191--f5560609fd9fe1d67518a425c35c1d9364de774477daf9349971fb287bf457e9.gz";
      r2 = "qx/KG/SHA256E-s834652876--1e83f62125bc5684e60618f04d5e34e5aefdae77b648843db49ac07ebec00052.gz/SHA256E-s834652876--1e83f62125bc5684e60618f04d5e34e5aefdae77b648843db49ac07ebec00052.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "p0/20/SHA256E-s858927725--4025a82e6e0275b15bcfc3d6935b5aca3038f4d06d9d13d6ab7a357ee0f490d2.gz/SHA256E-s858927725--4025a82e6e0275b15bcfc3d6935b5aca3038f4d06d9d13d6ab7a357ee0f490d2.gz";
      r2 = "5v/vZ/SHA256E-s863719901--9fc7e72fd162ee1dcfbec11892e342df28495f1d7f1459acfa13f1f881f5aa8d.gz/SHA256E-s863719901--9fc7e72fd162ee1dcfbec11892e342df28495f1d7f1459acfa13f1f881f5aa8d.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "45/JW/SHA256E-s861385906--e52ac5aac2885e2f459223f93034d8a1468fc1422bf4d5d6016cf7731a525763.gz/SHA256E-s861385906--e52ac5aac2885e2f459223f93034d8a1468fc1422bf4d5d6016cf7731a525763.gz";
      r2 = "2J/J1/SHA256E-s867443870--4cd4daee3bd243a9d866368accead559d42ffe4957e59ea95e19c60db82bf4d7.gz/SHA256E-s867443870--4cd4daee3bd243a9d866368accead559d42ffe4957e59ea95e19c60db82bf4d7.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "ZF/kj/SHA256E-s865222514--e5aa3f981063b22dbe135ebf096ff4fd07402ab0fc0bc3791d5b105304d27fc2.gz/SHA256E-s865222514--e5aa3f981063b22dbe135ebf096ff4fd07402ab0fc0bc3791d5b105304d27fc2.gz";
      r2 = "W4/Zf/SHA256E-s870491137--ed24902efbca3df4378e5eb7eb40af21eb17dce9f3dcc8198d6a8790e4b94f12.gz/SHA256E-s870491137--ed24902efbca3df4378e5eb7eb40af21eb17dce9f3dcc8198d6a8790e4b94f12.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "X5/pM/SHA256E-s883038764--d714cd678758004df42be99fdce531606618c7acbb652b711c088ac83d45e270.gz/SHA256E-s883038764--d714cd678758004df42be99fdce531606618c7acbb652b711c088ac83d45e270.gz";
      r2 = "Wj/kf/SHA256E-s888739596--4b0318c6f6a1ae869652b603fff274c753ef88e107280c2cb7ca7e13b9d8ab12.gz/SHA256E-s888739596--4b0318c6f6a1ae869652b603fff274c753ef88e107280c2cb7ca7e13b9d8ab12.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "JW/3z/SHA256E-s866540018--e2694ac7f548e1fdbad1da716b882dd2c862775f94c0e32b7f019cb003314079.gz/SHA256E-s866540018--e2694ac7f548e1fdbad1da716b882dd2c862775f94c0e32b7f019cb003314079.gz";
      r2 = "Qz/qv/SHA256E-s869005905--bb2fcdb13db3ae929353b1a5608147fd8a84f158d322c84bf67f56e2612879bc.gz/SHA256E-s869005905--bb2fcdb13db3ae929353b1a5608147fd8a84f158d322c84bf67f56e2612879bc.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "Kz/X6/SHA256E-s878156910--d59f08270dd973aa244745d285d66defb0eeb0053dac83d2b5cf012867b29c62.gz/SHA256E-s878156910--d59f08270dd973aa244745d285d66defb0eeb0053dac83d2b5cf012867b29c62.gz";
      r2 = "Jv/mQ/SHA256E-s883260600--fcae9d178e1048aadbcbe055d63e078821fe8aa4aef81db1197dd95263d963f1.gz/SHA256E-s883260600--fcae9d178e1048aadbcbe055d63e078821fe8aa4aef81db1197dd95263d963f1.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "p1/3z/SHA256E-s850359357--bf377920d31cd49b99775728006936dca91b9535d1449567949df5c69ee8fb6d.gz/SHA256E-s850359357--bf377920d31cd49b99775728006936dca91b9535d1449567949df5c69ee8fb6d.gz";
      r2 = "FF/38/SHA256E-s851664452--acc2237fc06bfddee6eafc7df6a499919cf097d361fc4b06a919c5cdeb1b4ae4.gz/SHA256E-s851664452--acc2237fc06bfddee6eafc7df6a499919cf097d361fc4b06a919c5cdeb1b4ae4.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "wq/0k/SHA256E-s736374832--a7a3486395ed6ac15a76f4c3564eed15bb17353d283a8833d64e5af4fd3a7929.gz/SHA256E-s736374832--a7a3486395ed6ac15a76f4c3564eed15bb17353d283a8833d64e5af4fd3a7929.gz";
      r2 = "0J/m5/SHA256E-s743096549--d025428006ad3f064b2c269817f6a7898c7911e9766615a21db66d7dfc3f17f7.gz/SHA256E-s743096549--d025428006ad3f064b2c269817f6a7898c7911e9766615a21db66d7dfc3f17f7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "QV/jG/SHA256E-s747324212--0647c9a9ba93c6a63a7edf7ea7a745cde9cc9826a33657d805027e9689501f6e.gz/SHA256E-s747324212--0647c9a9ba93c6a63a7edf7ea7a745cde9cc9826a33657d805027e9689501f6e.gz";
      r2 = "x6/MZ/SHA256E-s752975419--17e4c95cdd884d2a3066b4c4c2f3e27026c885ea13794f507e72e54aaa7e886f.gz/SHA256E-s752975419--17e4c95cdd884d2a3066b4c4c2f3e27026c885ea13794f507e72e54aaa7e886f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "64/0k/SHA256E-s744830156--299cbcc4bb35906e6dc2a725767699e43473730aba384d83282344a0d38296d9.gz/SHA256E-s744830156--299cbcc4bb35906e6dc2a725767699e43473730aba384d83282344a0d38296d9.gz";
      r2 = "m9/wG/SHA256E-s747509193--7a1ebf9eaf0eff4bb4230e78368476f7d723dacff8dcbf9bd0aee0fb3c539ac6.gz/SHA256E-s747509193--7a1ebf9eaf0eff4bb4230e78368476f7d723dacff8dcbf9bd0aee0fb3c539ac6.gz";
    }

    {
      site = "S1_T1_22384";
      class = "tumours";
      pdx = true;
      r1 = "x2/8M/SHA256E-s3941205688--161ad132600abb41fce05012ed3379d9a8ed7063fcdc78aaa51fb185caa630c2.gz/SHA256E-s3941205688--161ad132600abb41fce05012ed3379d9a8ed7063fcdc78aaa51fb185caa630c2.gz";
      r2 = "ZF/K8/SHA256E-s3957321192--375f6edfcaef4a09c6eb10a860bff829507b9d0dbc2e7e60832a5ce0af4e6b0f.gz/SHA256E-s3957321192--375f6edfcaef4a09c6eb10a860bff829507b9d0dbc2e7e60832a5ce0af4e6b0f.gz";
    }
    {
      site = "S1_T1_22384";
      class = "tumours";
      pdx = true;
      r1 = "FX/Fm/SHA256E-s3949057071--d2626c2b95d3345653c826aaf7ff453748d773b45f1dd7ec6e49c233f928d0a6.gz/SHA256E-s3949057071--d2626c2b95d3345653c826aaf7ff453748d773b45f1dd7ec6e49c233f928d0a6.gz";
      r2 = "zk/1W/SHA256E-s3972912029--ad5a0baad578d2a4584cb60527a7bdcb452d7678331acebc23b6a005ed9c04ab.gz/SHA256E-s3972912029--ad5a0baad578d2a4584cb60527a7bdcb452d7678331acebc23b6a005ed9c04ab.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0006";
    typeHla = true;
    capture = TwistV2HR;
  }
