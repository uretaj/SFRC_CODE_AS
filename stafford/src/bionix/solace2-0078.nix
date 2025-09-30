with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2G";
      class = "tumours";
      pdx = false;
      r1 = "Q0/1P/SHA256E-s5208142512--5479cc3768f733aa43c9a1d6dbcf6328cc68e55be32ea7db68fed4abcddd9baf.gz/SHA256E-s5208142512--5479cc3768f733aa43c9a1d6dbcf6328cc68e55be32ea7db68fed4abcddd9baf.gz";
      r2 = "gG/83/SHA256E-s5162275974--e4b46307c75c16aa4513de73f04a345fb36dc01ea726a3cf660f2af77a7371ab.gz/SHA256E-s5162275974--e4b46307c75c16aa4513de73f04a345fb36dc01ea726a3cf660f2af77a7371ab.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "V5/k1/SHA256E-s1306952718--229e16f12320ca6c157262ca283f1aaa7b2e7fe144302c452ca80cfd07069ebf.gz/SHA256E-s1306952718--229e16f12320ca6c157262ca283f1aaa7b2e7fe144302c452ca80cfd07069ebf.gz";
      r2 = "zJ/gZ/SHA256E-s1311186794--f51e90076b2d88774992eb24f7b09e1fc05d7d72b468c6e3359cc02ceae54e2d.gz/SHA256E-s1311186794--f51e90076b2d88774992eb24f7b09e1fc05d7d72b468c6e3359cc02ceae54e2d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "0f/kX/SHA256E-s1338785627--04ef5f94fcd9d1efa56412aeb8625ce324b831bed0f6f7fa1826430f63308836.gz/SHA256E-s1338785627--04ef5f94fcd9d1efa56412aeb8625ce324b831bed0f6f7fa1826430f63308836.gz";
      r2 = "Pp/k0/SHA256E-s1341085138--f7827480718d7517f6ebd9de5ae93d1fe2750a744d1ff4ae767883c711daa83a.gz/SHA256E-s1341085138--f7827480718d7517f6ebd9de5ae93d1fe2750a744d1ff4ae767883c711daa83a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "50/pw/SHA256E-s1353952628--5771af6a4015082bb6c24602ef8baf2a5cde2b7ead7c083bf0944e19a6bab778.gz/SHA256E-s1353952628--5771af6a4015082bb6c24602ef8baf2a5cde2b7ead7c083bf0944e19a6bab778.gz";
      r2 = "Vp/0M/SHA256E-s1350460307--65581a1ea6126840fb3651e36194f0d70dcc97e1d1405b0bd3a2adefa0563cd8.gz/SHA256E-s1350460307--65581a1ea6126840fb3651e36194f0d70dcc97e1d1405b0bd3a2adefa0563cd8.gz";
    }
    {
      site = "2G";
      class = "tumours";
      pdx = false;
      r1 = "3m/W6/SHA256E-s4017076226--75ae06aa509ab3954e99cb7817dd795438bac132b791ddfe77f8dcc1731522c6.gz/SHA256E-s4017076226--75ae06aa509ab3954e99cb7817dd795438bac132b791ddfe77f8dcc1731522c6.gz";
      r2 = "x4/JG/SHA256E-s4000715229--0e684712bfd0d4d2575b9b93aecc6fb46f0ea2a3de159cb843cea2927354d486.gz/SHA256E-s4000715229--0e684712bfd0d4d2575b9b93aecc6fb46f0ea2a3de159cb843cea2927354d486.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0078";
    typeHla = true;
    capture = TwistV2HR;
  }
