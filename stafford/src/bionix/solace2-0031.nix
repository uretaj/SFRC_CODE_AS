with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "m4/81/SHA256E-s1529823464--e6b2e23fd263343d1ab979c3c3b5aaff837029730451ec4147f8c08eb9d12a65.gz/SHA256E-s1529823464--e6b2e23fd263343d1ab979c3c3b5aaff837029730451ec4147f8c08eb9d12a65.gz";
      r2 = "W8/pq/SHA256E-s1547280403--4d74d0611e5ddd349e31365ead8d8c2fd8db3161f52f9ef54de532677ede5e03.gz/SHA256E-s1547280403--4d74d0611e5ddd349e31365ead8d8c2fd8db3161f52f9ef54de532677ede5e03.gz";
    }

    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "vk/2j/SHA256E-s1569411532--30c477422c84459b5d78330433b17dfab0591907be8cc376206730e4a5be3853.gz/SHA256E-s1569411532--30c477422c84459b5d78330433b17dfab0591907be8cc376206730e4a5be3853.gz";
      r2 = "F8/qz/SHA256E-s1591218787--90d2ddacf21e273be8b56ce981feadfa7d86b9186536d88dfd42c546be06919b.gz/SHA256E-s1591218787--90d2ddacf21e273be8b56ce981feadfa7d86b9186536d88dfd42c546be06919b.gz";
    }

    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "Vg/1Z/SHA256E-s1557722469--c37707fce8617e43308216ae356a04c66d4eb24a6f0cb9e8dba4674bb036f8e4.gz/SHA256E-s1557722469--c37707fce8617e43308216ae356a04c66d4eb24a6f0cb9e8dba4674bb036f8e4.gz";
      r2 = "x2/62/SHA256E-s1582008423--bf8ae0211f10f124f83b758bcbffe20d9ae898a4a99dd745e6895ac526f3bb74.gz/SHA256E-s1582008423--bf8ae0211f10f124f83b758bcbffe20d9ae898a4a99dd745e6895ac526f3bb74.gz";
    }

    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "M5/G5/SHA256E-s1588231532--ea4c49e38e34eb7be98e249a30d0262cd7d11d2d4a754d306df5b5fa3aa558d0.gz/SHA256E-s1588231532--ea4c49e38e34eb7be98e249a30d0262cd7d11d2d4a754d306df5b5fa3aa558d0.gz";
      r2 = "Z3/pF/SHA256E-s1611332647--3d9800cbc87a2c6b9831d51868f370ec686a78fc66c4d89e6189d9f7c8e1e887.gz/SHA256E-s1611332647--3d9800cbc87a2c6b9831d51868f370ec686a78fc66c4d89e6189d9f7c8e1e887.gz";
    }

    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "1J/24/SHA256E-s1616490097--f2088c52b40cbd9e034102567da11b66769465075c3dfe4c7933289f91252eec.gz/SHA256E-s1616490097--f2088c52b40cbd9e034102567da11b66769465075c3dfe4c7933289f91252eec.gz";
      r2 = "89/3W/SHA256E-s1641107518--7b8e82bad8eae0433d1250ce06c3706e71a1d771d5a9fc4c64fd130f8c011f91.gz/SHA256E-s1641107518--7b8e82bad8eae0433d1250ce06c3706e71a1d771d5a9fc4c64fd130f8c011f91.gz";
    }

    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "kj/4f/SHA256E-s1520454282--cbcea30722b0d18abd715a648ddddc6ed07c21e8f6f5167f38360c33aad54f88.gz/SHA256E-s1520454282--cbcea30722b0d18abd715a648ddddc6ed07c21e8f6f5167f38360c33aad54f88.gz";
      r2 = "Mw/Kj/SHA256E-s1539125252--365d8fe757c0411644f3ff6e470b518b39b7bdf301c3a1745b070a697d1ee37d.gz/SHA256E-s1539125252--365d8fe757c0411644f3ff6e470b518b39b7bdf301c3a1745b070a697d1ee37d.gz";
    }

    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "pj/XJ/SHA256E-s1607335974--f0cc08d47655c8be6c1051a4124078274c091193a45fa7c0d3fd9de1bfa16454.gz/SHA256E-s1607335974--f0cc08d47655c8be6c1051a4124078274c091193a45fa7c0d3fd9de1bfa16454.gz";
      r2 = "6M/Vv/SHA256E-s1631038597--ba625741f349dce8dca7033ba90c644751410c1bcf65d0bf2e7ea122013d1531.gz/SHA256E-s1631038597--ba625741f349dce8dca7033ba90c644751410c1bcf65d0bf2e7ea122013d1531.gz";
    }

    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "WP/4v/SHA256E-s1498671915--075b858277f48738a0ee0e9ff19e1e53341548d3b51ba3200a8263363c80c58a.gz/SHA256E-s1498671915--075b858277f48738a0ee0e9ff19e1e53341548d3b51ba3200a8263363c80c58a.gz";
      r2 = "kF/1M/SHA256E-s1515730339--e3382b46f0e610396cf58c7197659849c4d9dbf67911b6d09a76db86c4ae0c5d.gz/SHA256E-s1515730339--e3382b46f0e610396cf58c7197659849c4d9dbf67911b6d09a76db86c4ae0c5d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6F/6K/SHA256E-s1199715140--7d21ca3ea58e6c9bd452cce1c348c0102e7038ef401d7f7792a480f764d810e9.gz/SHA256E-s1199715140--7d21ca3ea58e6c9bd452cce1c348c0102e7038ef401d7f7792a480f764d810e9.gz";
      r2 = "kx/MP/SHA256E-s1200432936--a38d20b0a3984c135e0a2a59bec8d7a97ea0abc2bd572654dc0389f20b47786d.gz/SHA256E-s1200432936--a38d20b0a3984c135e0a2a59bec8d7a97ea0abc2bd572654dc0389f20b47786d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "mp/56/SHA256E-s1211743807--38c7cbf67bff2abd18f2af6fd137d92e558f43c7774111dcacf656bde92c2150.gz/SHA256E-s1211743807--38c7cbf67bff2abd18f2af6fd137d92e558f43c7774111dcacf656bde92c2150.gz";
      r2 = "KZ/xF/SHA256E-s1210607853--e63e7373238cc280dd28e8c491dd92a1d257e42c5857341a96f37385b7c1504c.gz/SHA256E-s1210607853--e63e7373238cc280dd28e8c491dd92a1d257e42c5857341a96f37385b7c1504c.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Zp/F1/SHA256E-s1215087509--896ab23d2c8f253ce6c1dba5bf1b70052a79e7e60e9d5761dd2edf7dc3e5f677.gz/SHA256E-s1215087509--896ab23d2c8f253ce6c1dba5bf1b70052a79e7e60e9d5761dd2edf7dc3e5f677.gz";
      r2 = "jm/7G/SHA256E-s1208845825--f7ce97e28549ed578c55bb7aadf105870b72118a5e5e93f9d255242d57dc5089.gz/SHA256E-s1208845825--f7ce97e28549ed578c55bb7aadf105870b72118a5e5e93f9d255242d57dc5089.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0031";
    typeHla = true;
    capture = TwistV2HR;
  }
