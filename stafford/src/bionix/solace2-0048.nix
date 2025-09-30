with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Wv/8W/SHA256E-s3597985452--52643bab1ca4f8e413ee926b124c4d0fd1aaedbef26773fe253cb07276908c9e.gz/SHA256E-s3597985452--52643bab1ca4f8e413ee926b124c4d0fd1aaedbef26773fe253cb07276908c9e.gz";
      r2 = "8J/Qg/SHA256E-s3671995331--b8d80b37c609cc9edc6d240f28b02456a420047665489b02b390cd3f74542c54.gz/SHA256E-s3671995331--b8d80b37c609cc9edc6d240f28b02456a420047665489b02b390cd3f74542c54.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "qf/Gj/SHA256E-s3548316443--5fd3625efb06b310726ec1eaf6ed3dbf79cb51b2974f755d7d17a2bf6e84355f.gz/SHA256E-s3548316443--5fd3625efb06b310726ec1eaf6ed3dbf79cb51b2974f755d7d17a2bf6e84355f.gz";
      r2 = "vj/p0/SHA256E-s3603476211--935c4243bc9b4e534a61eafc1f391b0a2882b11484531bc1cc75c81f8795d5d2.gz/SHA256E-s3603476211--935c4243bc9b4e534a61eafc1f391b0a2882b11484531bc1cc75c81f8795d5d2.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Px/xz/SHA256E-s3594592487--d971e2986aa9d5e76a815f1dab482a3ffaa0e3334167a76752d2d5cc9962956b.gz/SHA256E-s3594592487--d971e2986aa9d5e76a815f1dab482a3ffaa0e3334167a76752d2d5cc9962956b.gz";
      r2 = "vm/km/SHA256E-s3642020500--f0056599edebfb8d033030bdf1a48547316c153689632bd9b37c55741380ce62.gz/SHA256E-s3642020500--f0056599edebfb8d033030bdf1a48547316c153689632bd9b37c55741380ce62.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Kp/5v/SHA256E-s3651665510--1f7e64c076b6bb8e5990940ace1ae0a2e88d759abc0837670ce3e259066644bc.gz/SHA256E-s3651665510--1f7e64c076b6bb8e5990940ace1ae0a2e88d759abc0837670ce3e259066644bc.gz";
      r2 = "9W/v2/SHA256E-s3697507292--ece693d62dd70c3f9fdf99e9f7a6ea5b9683e3c2acfdfa26d9d11e14c2630308.gz/SHA256E-s3697507292--ece693d62dd70c3f9fdf99e9f7a6ea5b9683e3c2acfdfa26d9d11e14c2630308.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "88/58/SHA256E-s981844627--834de1a7f819a54c65a4eb287220383a0f51b81d3319a29e6b3357d42ddc6c27.gz/SHA256E-s981844627--834de1a7f819a54c65a4eb287220383a0f51b81d3319a29e6b3357d42ddc6c27.gz";
      r2 = "FM/v3/SHA256E-s980418834--f7b49ec748f921257b906d06b0572ca4de65ef32e5c9a3175c156e44e6758320.gz/SHA256E-s980418834--f7b49ec748f921257b906d06b0572ca4de65ef32e5c9a3175c156e44e6758320.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pW/1f/SHA256E-s986078246--39dadf831158eadd5a46bd36e10745db925587aebfc7e1e9af892d6a509e61ac.gz/SHA256E-s986078246--39dadf831158eadd5a46bd36e10745db925587aebfc7e1e9af892d6a509e61ac.gz";
      r2 = "G0/qP/SHA256E-s983186654--82430b56f81d67480aa6fdf06a8837029e123591025a1fda2fe71b2d80886408.gz/SHA256E-s983186654--82430b56f81d67480aa6fdf06a8837029e123591025a1fda2fe71b2d80886408.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2p/KV/SHA256E-s984485697--46f225f0aa5317b789b8d029ac87c45f526771e3a78d6d243263de1afc066472.gz/SHA256E-s984485697--46f225f0aa5317b789b8d029ac87c45f526771e3a78d6d243263de1afc066472.gz";
      r2 = "gq/5p/SHA256E-s977449937--2c3bb009c39d5e4a30c1e6c8a1df964a3c473f9cc7037a44a84d1226385083d4.gz/SHA256E-s977449937--2c3bb009c39d5e4a30c1e6c8a1df964a3c473f9cc7037a44a84d1226385083d4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0048";
    typeHla = true;
    capture = TwistV2HR;
  }
