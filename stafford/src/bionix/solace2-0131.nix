with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "W9/0W/SHA256E-s936325849--1042632bee4c2628dd24ef24f6ff3f2e6abca6b6833a89ce5cb4c62a716f1dd0.gz/SHA256E-s936325849--1042632bee4c2628dd24ef24f6ff3f2e6abca6b6833a89ce5cb4c62a716f1dd0.gz";
      r2 = "fx/4v/SHA256E-s936532592--491ffff8a180bf38471589412beef7ce5ed14e15a750b55dfc23b52f95a041bd.gz/SHA256E-s936532592--491ffff8a180bf38471589412beef7ce5ed14e15a750b55dfc23b52f95a041bd.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "zX/j2/SHA256E-s976633168--8ba173f1b3620376221194475908017e5395cfca62fb65fe8599694ec2358bb8.gz/SHA256E-s976633168--8ba173f1b3620376221194475908017e5395cfca62fb65fe8599694ec2358bb8.gz";
      r2 = "Zz/05/SHA256E-s979532784--cbe151663bd44271bbc49f519b9db2f06f49c497078c2254b89ea54c39c3b4db.gz/SHA256E-s979532784--cbe151663bd44271bbc49f519b9db2f06f49c497078c2254b89ea54c39c3b4db.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "kj/Z7/SHA256E-s984899701--2ae5028d0237c3bac16f3f0b8c5d565754892bf0c5fe9cbface0eed16576a6ac.gz/SHA256E-s984899701--2ae5028d0237c3bac16f3f0b8c5d565754892bf0c5fe9cbface0eed16576a6ac.gz";
      r2 = "PG/fp/SHA256E-s989101376--ff668f9ed382cf01ad533ab969a1e862df75909cc3ae35a64940a122258ec310.gz/SHA256E-s989101376--ff668f9ed382cf01ad533ab969a1e862df75909cc3ae35a64940a122258ec310.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "pf/Fz/SHA256E-s996665289--25eb4d4f1b17e8e7713acd230a33484b865629d56fe8edf1217d61cbfdaca24e.gz/SHA256E-s996665289--25eb4d4f1b17e8e7713acd230a33484b865629d56fe8edf1217d61cbfdaca24e.gz";
      r2 = "W8/4W/SHA256E-s999945610--dabfaf005c08d444c39f19d2b4bfe83ead0f312d41eee3ef604dd0a1c5605dba.gz/SHA256E-s999945610--dabfaf005c08d444c39f19d2b4bfe83ead0f312d41eee3ef604dd0a1c5605dba.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "xG/W8/SHA256E-s1014835191--52eb15ee156b1667abc460be89cc2727a7f3e72684870cf400edd9704d24b429.gz/SHA256E-s1014835191--52eb15ee156b1667abc460be89cc2727a7f3e72684870cf400edd9704d24b429.gz";
      r2 = "p1/8q/SHA256E-s1018685270--20781839e3a18bc224b40886566dd977981dda7cbe57d77c7c5230c5ef6d1d65.gz/SHA256E-s1018685270--20781839e3a18bc224b40886566dd977981dda7cbe57d77c7c5230c5ef6d1d65.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "v3/Jx/SHA256E-s995842778--9c5d02d1f54a154567f59f4f853b9c5c546e53cf0f47d49553889330dd2db75e.gz/SHA256E-s995842778--9c5d02d1f54a154567f59f4f853b9c5c546e53cf0f47d49553889330dd2db75e.gz";
      r2 = "fv/0p/SHA256E-s995575437--1768fc59c216d47280dc87ef75c96e4a7a04b2db8774dc4ea97c0e6bb3595976.gz/SHA256E-s995575437--1768fc59c216d47280dc87ef75c96e4a7a04b2db8774dc4ea97c0e6bb3595976.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "4j/m3/SHA256E-s1007750873--a94e050ff6f114a66a820c730fce13619334f2d9ef674cf466b020a651504428.gz/SHA256E-s1007750873--a94e050ff6f114a66a820c730fce13619334f2d9ef674cf466b020a651504428.gz";
      r2 = "m3/zX/SHA256E-s1010866891--7cfd6e4c7cc40521d0d5b700c9c8c70ddb31609dcbd121ecd1194e3058f2544f.gz/SHA256E-s1010866891--7cfd6e4c7cc40521d0d5b700c9c8c70ddb31609dcbd121ecd1194e3058f2544f.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "jV/q0/SHA256E-s970167684--82042c5c3c020d375b2df8a43f0b95f09c0d3f92522e64b4c688a6495f605e31.gz/SHA256E-s970167684--82042c5c3c020d375b2df8a43f0b95f09c0d3f92522e64b4c688a6495f605e31.gz";
      r2 = "WQ/Kv/SHA256E-s968560529--eaf56b970fe337a94aeaa65ddbc027f40302aae6f60e34fe466ec62e83cac2ef.gz/SHA256E-s968560529--eaf56b970fe337a94aeaa65ddbc027f40302aae6f60e34fe466ec62e83cac2ef.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5X/fP/SHA256E-s1035460344--db0cba265642a45711d819fae811b4880de92ded6ffa1bbe4b8e604b1a95f866.gz/SHA256E-s1035460344--db0cba265642a45711d819fae811b4880de92ded6ffa1bbe4b8e604b1a95f866.gz";
      r2 = "wz/z1/SHA256E-s1045014937--a3e1a88109a36ddea2a769026cc1fb7de1e7838286de0d57098c44cda92b0a47.gz/SHA256E-s1045014937--a3e1a88109a36ddea2a769026cc1fb7de1e7838286de0d57098c44cda92b0a47.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "9v/VW/SHA256E-s1040374897--80f71d91d64e693b6d3e9591093ebbe27cc4a664fb2ede28bb8bc0b84d4b4fb3.gz/SHA256E-s1040374897--80f71d91d64e693b6d3e9591093ebbe27cc4a664fb2ede28bb8bc0b84d4b4fb3.gz";
      r2 = "V2/Qf/SHA256E-s1047957747--77e10780f695853d0d61e08763bf0eaccb176b1d00a546af1ff7e2d98ba6c70e.gz/SHA256E-s1047957747--77e10780f695853d0d61e08763bf0eaccb176b1d00a546af1ff7e2d98ba6c70e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jv/mq/SHA256E-s1034691846--9bbae859553042c5f7ff0a6361fa89a8bb0c03aeaafb0ebd219b784c4b02ac10.gz/SHA256E-s1034691846--9bbae859553042c5f7ff0a6361fa89a8bb0c03aeaafb0ebd219b784c4b02ac10.gz";
      r2 = "xg/z8/SHA256E-s1037816387--778c8f7851f6999281a88f926f5c199175538bdb87652d570e4d315524accdf5.gz/SHA256E-s1037816387--778c8f7851f6999281a88f926f5c199175538bdb87652d570e4d315524accdf5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0131";
    typeHla = true;
    capture = TwistV2HR;
  }
