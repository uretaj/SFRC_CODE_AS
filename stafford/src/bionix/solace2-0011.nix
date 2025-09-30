with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "Gp/M5/SHA256E-s818881967--00516e366f6b28b6542dd8844f947abe729f96cdee148a174a7b6098c6cfca14.gz/SHA256E-s818881967--00516e366f6b28b6542dd8844f947abe729f96cdee148a174a7b6098c6cfca14.gz";
      r2 = "g1/xj/SHA256E-s817584557--ccd190ac1f1a3d2b3cae50d285e619ac069eb139a035fd856a0c3b7eb32b34d6.gz/SHA256E-s817584557--ccd190ac1f1a3d2b3cae50d285e619ac069eb139a035fd856a0c3b7eb32b34d6.gz";
    }

    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "6p/ZW/SHA256E-s838232583--f1425dbbafb2d7507e45a10f1d61cffc739264d08a9d7e0c920a0cb64c0affc0.gz/SHA256E-s838232583--f1425dbbafb2d7507e45a10f1d61cffc739264d08a9d7e0c920a0cb64c0affc0.gz";
      r2 = "MG/4v/SHA256E-s839173203--2d8aa7dc931b03c6bc0f290f285288fd3525916855bc87f783ccc8ed13401118.gz/SHA256E-s839173203--2d8aa7dc931b03c6bc0f290f285288fd3525916855bc87f783ccc8ed13401118.gz";
    }

    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "Qj/83/SHA256E-s831352178--2e8a37465c20481682b601880b84bf29c4017f763a84322ee837e77b8496b32e.gz/SHA256E-s831352178--2e8a37465c20481682b601880b84bf29c4017f763a84322ee837e77b8496b32e.gz";
      r2 = "16/xz/SHA256E-s833405739--e81d8c17beadf38e71930c0351e10f38736cd0b72d2e4eb14a5a5ca6644a04b5.gz/SHA256E-s833405739--e81d8c17beadf38e71930c0351e10f38736cd0b72d2e4eb14a5a5ca6644a04b5.gz";
    }

    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "7P/1g/SHA256E-s833760093--9f63cba18df75d90ef69f273eb981f419d910b2d503d00d69b113911ce1c7b0d.gz/SHA256E-s833760093--9f63cba18df75d90ef69f273eb981f419d910b2d503d00d69b113911ce1c7b0d.gz";
      r2 = "98/Gj/SHA256E-s835205983--cefb88a5a0991680d07b3e70666062089f3f6c7727ca170c47d32b59e459ec17.gz/SHA256E-s835205983--cefb88a5a0991680d07b3e70666062089f3f6c7727ca170c47d32b59e459ec17.gz";
    }

    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "mm/65/SHA256E-s855775841--461f91a53df96fc6a0619f6ec10192e44a4236c7525965d2e6f9899e6b0c2bac.gz/SHA256E-s855775841--461f91a53df96fc6a0619f6ec10192e44a4236c7525965d2e6f9899e6b0c2bac.gz";
      r2 = "G3/Gj/SHA256E-s857941183--d646550cc52a016ada57172c3213891ef18acda890b0bc2c596888c669a629e5.gz/SHA256E-s857941183--d646550cc52a016ada57172c3213891ef18acda890b0bc2c596888c669a629e5.gz";
    }

    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "gW/Gg/SHA256E-s816375750--101b4401d3364f3a0d9488e79c0073d4b64c949b452611f224824418bbe73b32.gz/SHA256E-s816375750--101b4401d3364f3a0d9488e79c0073d4b64c949b452611f224824418bbe73b32.gz";
      r2 = "P8/8W/SHA256E-s815110169--c193a93fcaefffdb49968d7a5a27c5138d6c712c8f517bf00e8c9927937ad1ea.gz/SHA256E-s815110169--c193a93fcaefffdb49968d7a5a27c5138d6c712c8f517bf00e8c9927937ad1ea.gz";
    }

    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "PK/5M/SHA256E-s856471639--9afb30a984d59fcd51dcfaca6e201bf403f3071d4097301b19755cbd9da9b96f.gz/SHA256E-s856471639--9afb30a984d59fcd51dcfaca6e201bf403f3071d4097301b19755cbd9da9b96f.gz";
      r2 = "z5/1M/SHA256E-s858192464--fb7a2303b6e4871a26020e0c0e4937a7adbc48541828d830eb1cf47fff98fc51.gz/SHA256E-s858192464--fb7a2303b6e4871a26020e0c0e4937a7adbc48541828d830eb1cf47fff98fc51.gz";
    }

    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "0F/xv/SHA256E-s804919557--b677a1cb636ce343bf28c67ca19db31872f1624d636e5f42debb51edd6db57a4.gz/SHA256E-s804919557--b677a1cb636ce343bf28c67ca19db31872f1624d636e5f42debb51edd6db57a4.gz";
      r2 = "j3/g2/SHA256E-s802816551--5a79df72b78e870257c1a4389bb033f112cb0c8f362b81436d7ae0b6ec37bd25.gz/SHA256E-s802816551--5a79df72b78e870257c1a4389bb033f112cb0c8f362b81436d7ae0b6ec37bd25.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "z5/VM/SHA256E-s1116718820--bd23884a2446d69577e30d6d6622adc26a44a1cee8d2216233bbbf992d790864.gz/SHA256E-s1116718820--bd23884a2446d69577e30d6d6622adc26a44a1cee8d2216233bbbf992d790864.gz";
      r2 = "z9/m2/SHA256E-s1117037248--cfbe85d8dd6fc388a08af4a6e8a8547e69c8d96514d7f0ddf75363d769be69a7.gz/SHA256E-s1117037248--cfbe85d8dd6fc388a08af4a6e8a8547e69c8d96514d7f0ddf75363d769be69a7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jw/8x/SHA256E-s1126751469--a86165185d033632b0404ef3f7fbe2d53dc32f40c76615565d8c7385880ffd83.gz/SHA256E-s1126751469--a86165185d033632b0404ef3f7fbe2d53dc32f40c76615565d8c7385880ffd83.gz";
      r2 = "87/x5/SHA256E-s1125271040--e3766e90416416f47cd4988a665cfe02d1513b15e4ee0d1a3d4ff2c3910d49cf.gz/SHA256E-s1125271040--e3766e90416416f47cd4988a665cfe02d1513b15e4ee0d1a3d4ff2c3910d49cf.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "72/X2/SHA256E-s1123910398--032e6da987315003e7a1520f5036adcbed67ed78c48ea4bdaf4e076819ced109.gz/SHA256E-s1123910398--032e6da987315003e7a1520f5036adcbed67ed78c48ea4bdaf4e076819ced109.gz";
      r2 = "Pv/qG/SHA256E-s1117826949--32cd5db87c19c124b03c91f88d4e352940e22babca03375cc7964dd878368a46.gz/SHA256E-s1117826949--32cd5db87c19c124b03c91f88d4e352940e22babca03375cc7964dd878368a46.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0011";
    typeHla = true;
    capture = TwistV2HR;
  }
