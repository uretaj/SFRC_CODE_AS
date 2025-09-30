with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "Px/81/SHA256E-s1095623099--4c8722e9a330ba6f2811e3c3532c6e61026e1d0385657057f36cdeba14a6da11.gz/SHA256E-s1095623099--4c8722e9a330ba6f2811e3c3532c6e61026e1d0385657057f36cdeba14a6da11.gz";
      r2 = "mg/J0/SHA256E-s1097289664--10d560c7afd9ef69b4611493235317bc48e00574288c9bfb859de2c5e48995f2.gz/SHA256E-s1097289664--10d560c7afd9ef69b4611493235317bc48e00574288c9bfb859de2c5e48995f2.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "1w/6J/SHA256E-s1143852826--99419e92e31b2c7f02444d8265d65429c7d755cb645c5aa430b5f53aeb9eb522.gz/SHA256E-s1143852826--99419e92e31b2c7f02444d8265d65429c7d755cb645c5aa430b5f53aeb9eb522.gz";
      r2 = "5x/vZ/SHA256E-s1148045003--cfca8946dbadd82eb92403268f2dbb8127a02d4154545d938301a9737fe99ae3.gz/SHA256E-s1148045003--cfca8946dbadd82eb92403268f2dbb8127a02d4154545d938301a9737fe99ae3.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "jK/Jv/SHA256E-s1144129397--3272556dd304920b2f2709508e346f962db580056f933391bdfa7cb9d1049bb5.gz/SHA256E-s1144129397--3272556dd304920b2f2709508e346f962db580056f933391bdfa7cb9d1049bb5.gz";
      r2 = "0v/KP/SHA256E-s1150132006--f5f3889b113763e444c1541665dcb0c8bcfd53c3e2e7c7ad10fb1d626e8322cd.gz/SHA256E-s1150132006--f5f3889b113763e444c1541665dcb0c8bcfd53c3e2e7c7ad10fb1d626e8322cd.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "Zj/W9/SHA256E-s1140626114--a04452350a09b40e3e805bc15119a3c8b1bcec948126d315525a63208543a8f6.gz/SHA256E-s1140626114--a04452350a09b40e3e805bc15119a3c8b1bcec948126d315525a63208543a8f6.gz";
      r2 = "JW/zV/SHA256E-s1145349390--379e6195b4996bdda20aa0dc881dd50ab4ca4999f6978fa567fd433cfddb1580.gz/SHA256E-s1145349390--379e6195b4996bdda20aa0dc881dd50ab4ca4999f6978fa567fd433cfddb1580.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "2v/14/SHA256E-s1175730265--440aa8d7f7b4c239c481c52892a9055e91cf8e8cb805f81eb1602b1213da279b.gz/SHA256E-s1175730265--440aa8d7f7b4c239c481c52892a9055e91cf8e8cb805f81eb1602b1213da279b.gz";
      r2 = "vx/PQ/SHA256E-s1181180849--93933c7fce59d10188ac46c1445d1ba7e0d68fe4020902352589802a3c0d0a86.gz/SHA256E-s1181180849--93933c7fce59d10188ac46c1445d1ba7e0d68fe4020902352589802a3c0d0a86.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "qq/gg/SHA256E-s1173447403--afbddd055dd9c4de38b18c6596c174d5ef529e50fed47d8a6d3a80194bdc9cae.gz/SHA256E-s1173447403--afbddd055dd9c4de38b18c6596c174d5ef529e50fed47d8a6d3a80194bdc9cae.gz";
      r2 = "4m/z3/SHA256E-s1175002390--49047897d7d98fc5aaff46760aed69260de25b5e3b2f4f91dad0c18316f62cf6.gz/SHA256E-s1175002390--49047897d7d98fc5aaff46760aed69260de25b5e3b2f4f91dad0c18316f62cf6.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "mK/z3/SHA256E-s1178718797--e3a4de3248e6d42ed101067f99b87b9762cc19fa0f4e860475dab4fa5ddec7df.gz/SHA256E-s1178718797--e3a4de3248e6d42ed101067f99b87b9762cc19fa0f4e860475dab4fa5ddec7df.gz";
      r2 = "6x/k7/SHA256E-s1183376452--65d04e362f25778503fa31930d80758bd7fca4e96bb8db26e6e6eac7833a5e1f.gz/SHA256E-s1183376452--65d04e362f25778503fa31930d80758bd7fca4e96bb8db26e6e6eac7833a5e1f.gz";
    }

    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "0Z/9p/SHA256E-s1139869633--07153c419e9bb99e6eab0baaacb7c3be02d02a59167f6ef2dad6d11532fc0d9d.gz/SHA256E-s1139869633--07153c419e9bb99e6eab0baaacb7c3be02d02a59167f6ef2dad6d11532fc0d9d.gz";
      r2 = "07/J2/SHA256E-s1139784456--7f0a3aac1a69b44d757ac6c7b459c3ddbdf8a3a690c5b6aee417b1a77d41925e.gz/SHA256E-s1139784456--7f0a3aac1a69b44d757ac6c7b459c3ddbdf8a3a690c5b6aee417b1a77d41925e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "00/8K/SHA256E-s1082793624--0cf156c723b4295f61988629b15f5e4bf30490f45f39ac28ee1ef399caab177a.gz/SHA256E-s1082793624--0cf156c723b4295f61988629b15f5e4bf30490f45f39ac28ee1ef399caab177a.gz";
      r2 = "1X/QW/SHA256E-s1088290741--aae990a5d8f037f8b5e3d8ed9208f6dd30bb37fc13f9bfd28ebba5f6a8966701.gz/SHA256E-s1088290741--aae990a5d8f037f8b5e3d8ed9208f6dd30bb37fc13f9bfd28ebba5f6a8966701.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "WF/F6/SHA256E-s1095844811--e15a7d24ab697a911c34c1b793251d3930333dde6dcc5d9829636e58c2578a61.gz/SHA256E-s1095844811--e15a7d24ab697a911c34c1b793251d3930333dde6dcc5d9829636e58c2578a61.gz";
      r2 = "K3/09/SHA256E-s1099040140--2b3ea7215bb2c4974624313b14eed7874db2722c278aaa92c0a8e458c7746ac6.gz/SHA256E-s1099040140--2b3ea7215bb2c4974624313b14eed7874db2722c278aaa92c0a8e458c7746ac6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "V8/mX/SHA256E-s1098792433--cb7f707e0f0085f765a43bacd24a1088a74282cbe320bb82110871015a24c619.gz/SHA256E-s1098792433--cb7f707e0f0085f765a43bacd24a1088a74282cbe320bb82110871015a24c619.gz";
      r2 = "Fq/Q7/SHA256E-s1096574319--95d56b8da31988163e4ac26bc14e7cfc73e5d6c2e396a613a537eecc64f757e9.gz/SHA256E-s1096574319--95d56b8da31988163e4ac26bc14e7cfc73e5d6c2e396a613a537eecc64f757e9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0109";
    typeHla = true;
    capture = TwistV2HR;
  }
