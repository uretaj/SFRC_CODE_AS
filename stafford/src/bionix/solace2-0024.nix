with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "6v/gF/SHA256E-s854845328--7cf48dcbae045e507e4d566830215e0b347849dbcf5d0d24a683f5f4f6020ce0.gz/SHA256E-s854845328--7cf48dcbae045e507e4d566830215e0b347849dbcf5d0d24a683f5f4f6020ce0.gz";
      r2 = "8W/k0/SHA256E-s856043281--d6192d6eb3ba7bf28cfd554a5e49cfbd58ecf673cc5b2ede317c06715b13d150.gz/SHA256E-s856043281--d6192d6eb3ba7bf28cfd554a5e49cfbd58ecf673cc5b2ede317c06715b13d150.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "36/w1/SHA256E-s881223045--7c12fa95f400803ea4670dc5503a0adca25d64273a88c3e3a007fc4a1a316af4.gz/SHA256E-s881223045--7c12fa95f400803ea4670dc5503a0adca25d64273a88c3e3a007fc4a1a316af4.gz";
      r2 = "Zj/86/SHA256E-s884980595--dc707e94cd7e6da8c6bd6fd0699e8dbbbe1f989ee40c351927ca8afd3a048fa6.gz/SHA256E-s884980595--dc707e94cd7e6da8c6bd6fd0699e8dbbbe1f989ee40c351927ca8afd3a048fa6.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "qq/Pv/SHA256E-s888456617--7cc57b29acf3db7f215174548be285b9e01e5e7676a85caf7625288297ae5947.gz/SHA256E-s888456617--7cc57b29acf3db7f215174548be285b9e01e5e7676a85caf7625288297ae5947.gz";
      r2 = "Mg/KM/SHA256E-s893637064--896712c924b870ed09339c0e1404b348d197dcfbcce535599704cacede160279.gz/SHA256E-s893637064--896712c924b870ed09339c0e1404b348d197dcfbcce535599704cacede160279.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "K7/5Q/SHA256E-s896406472--8602eeb10ab58b551bb7a6e74c2c1504e4a9f242670646ecd01a81356778606e.gz/SHA256E-s896406472--8602eeb10ab58b551bb7a6e74c2c1504e4a9f242670646ecd01a81356778606e.gz";
      r2 = "JX/qX/SHA256E-s900765569--9eaf47eb5ca55628a45b50627700f513207802648ca54546f6312db85de9c150.gz/SHA256E-s900765569--9eaf47eb5ca55628a45b50627700f513207802648ca54546f6312db85de9c150.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "9q/x1/SHA256E-s913823483--03e98f3ff4d949ac326399a7f8d4ccdddf367e54ac06e59f4df8c48d28336250.gz/SHA256E-s913823483--03e98f3ff4d949ac326399a7f8d4ccdddf367e54ac06e59f4df8c48d28336250.gz";
      r2 = "qj/8G/SHA256E-s918837882--04523fc0924935f79590ba593906c92c01502225b0a4b8465921e08c27969ac4.gz/SHA256E-s918837882--04523fc0924935f79590ba593906c92c01502225b0a4b8465921e08c27969ac4.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "78/44/SHA256E-s900616354--e8e70a7a77fc19bb4367ed284461b1e92ab403e81a88edbbdeec17dafc0a76ad.gz/SHA256E-s900616354--e8e70a7a77fc19bb4367ed284461b1e92ab403e81a88edbbdeec17dafc0a76ad.gz";
      r2 = "2z/06/SHA256E-s902266862--f34412d28fb079865d5cb820bba638524d550fee4f1283682002a771d9f05134.gz/SHA256E-s902266862--f34412d28fb079865d5cb820bba638524d550fee4f1283682002a771d9f05134.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "6k/2z/SHA256E-s904123410--a246dcaa3a831da95b5716e0eba9a8f7f706f11269b04b3af78f79e3d618439b.gz/SHA256E-s904123410--a246dcaa3a831da95b5716e0eba9a8f7f706f11269b04b3af78f79e3d618439b.gz";
      r2 = "Vz/F2/SHA256E-s908420659--073530a427f3b9c5faaebeb0f50e4baa09cd3acc7e68920286630fdb9c719674.gz/SHA256E-s908420659--073530a427f3b9c5faaebeb0f50e4baa09cd3acc7e68920286630fdb9c719674.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "j6/xG/SHA256E-s884728052--2f289955a2131d4789b3e434278cf7803b31c2f09a2fa0a566085b0274b48579.gz/SHA256E-s884728052--2f289955a2131d4789b3e434278cf7803b31c2f09a2fa0a566085b0274b48579.gz";
      r2 = "Q5/mJ/SHA256E-s884954784--e0a25bc1e4ad53f2d80626b667091f5b8505e9762adc132a69268733a02e93d4.gz/SHA256E-s884954784--e0a25bc1e4ad53f2d80626b667091f5b8505e9762adc132a69268733a02e93d4.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "f2/4v/SHA256E-s1226316710--5d93f1f1c6db9c87e64d19bf20cfb147eecb7cb3e67b83778e5b46f071265ad5.gz/SHA256E-s1226316710--5d93f1f1c6db9c87e64d19bf20cfb147eecb7cb3e67b83778e5b46f071265ad5.gz";
      r2 = "6M/0Q/SHA256E-s1224141051--ca2f40328429c33803c1a2479dd7ef6ae679b92d7eff2421aa453d9a929a4c59.gz/SHA256E-s1224141051--ca2f40328429c33803c1a2479dd7ef6ae679b92d7eff2421aa453d9a929a4c59.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "QX/0z/SHA256E-s1241392271--ebffe7e57538359e242b7c52f47068392cab119402fa5b9804ee5a4f409c56e1.gz/SHA256E-s1241392271--ebffe7e57538359e242b7c52f47068392cab119402fa5b9804ee5a4f409c56e1.gz";
      r2 = "jp/8x/SHA256E-s1237914149--3268e18be5a37c84ee49d7b3047767c0a8633784083f856692808da167eea7b9.gz/SHA256E-s1237914149--3268e18be5a37c84ee49d7b3047767c0a8633784083f856692808da167eea7b9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VF/PP/SHA256E-s1243483089--298598a05ba2bec0d203398ffeea9e355ce10c7d5fae9a52ebd2ea7981723ae3.gz/SHA256E-s1243483089--298598a05ba2bec0d203398ffeea9e355ce10c7d5fae9a52ebd2ea7981723ae3.gz";
      r2 = "Pm/Qj/SHA256E-s1235066948--0d7c37de0a94d2f02b3e1daba18c34e2d8328b163cadc145d4d692238c0e9d5f.gz/SHA256E-s1235066948--0d7c37de0a94d2f02b3e1daba18c34e2d8328b163cadc145d4d692238c0e9d5f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0024";
    typeHla = true;
    capture = TwistV2HR;
  }
