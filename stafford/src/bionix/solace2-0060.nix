with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "mM/QW/SHA256E-s2682973850--fe59e3a7aefb0173b6adec51c785e4aa4d1dcb02079db5e2ccc9a978c32bf643.gz/SHA256E-s2682973850--fe59e3a7aefb0173b6adec51c785e4aa4d1dcb02079db5e2ccc9a978c32bf643.gz";
      r2 = "X9/2M/SHA256E-s2686387419--2373af430b6b6839d7f65f156dc84ddfbd8db2dc1bde3cd910ae068d7af6c401.gz/SHA256E-s2686387419--2373af430b6b6839d7f65f156dc84ddfbd8db2dc1bde3cd910ae068d7af6c401.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "08/ff/SHA256E-s808358946--48e6774dd23aa4ca07b2cdc6d404848b89c21409ffb4d9c9d19d9a16061a71ab.gz/SHA256E-s808358946--48e6774dd23aa4ca07b2cdc6d404848b89c21409ffb4d9c9d19d9a16061a71ab.gz";
      r2 = "wP/qp/SHA256E-s810527880--08b7a5c28e16a5df3e60a395a3ba23d1d79ef305c1a00fdc97760a592145b969.gz/SHA256E-s810527880--08b7a5c28e16a5df3e60a395a3ba23d1d79ef305c1a00fdc97760a592145b969.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8k/M4/SHA256E-s812812871--c8b9b0721acceb439fd133358fb13f201d63d06fb4537c186deb1666b0ed1178.gz/SHA256E-s812812871--c8b9b0721acceb439fd133358fb13f201d63d06fb4537c186deb1666b0ed1178.gz";
      r2 = "zf/FZ/SHA256E-s820389194--b367ca81fee8050d85030a2f6f127ed4a52f82fa3758f43ee2a93ec912520261.gz/SHA256E-s820389194--b367ca81fee8050d85030a2f6f127ed4a52f82fa3758f43ee2a93ec912520261.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pk/1M/SHA256E-s805216756--f1a522543de2c93832466b487f23d6e9a7d20ee7a8b030d90462cdb90944f743.gz/SHA256E-s805216756--f1a522543de2c93832466b487f23d6e9a7d20ee7a8b030d90462cdb90944f743.gz";
      r2 = "F0/vK/SHA256E-s810787314--e2fa9c6e8062f6bc4de056be44912f5f36b1de69a1c049bfbfa2a23fdd573bf3.gz/SHA256E-s810787314--e2fa9c6e8062f6bc4de056be44912f5f36b1de69a1c049bfbfa2a23fdd573bf3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Vz/qm/SHA256E-s859659258--51c5933f0c1bd8860cb2d9bea8fba49bb9a7dbb31310a06de3579f975a3bb698.gz/SHA256E-s859659258--51c5933f0c1bd8860cb2d9bea8fba49bb9a7dbb31310a06de3579f975a3bb698.gz";
      r2 = "Km/mq/SHA256E-s871778034--128d154b683720f18037e8dd896ec951ac2762f0b8710f911637a6e319a6d54a.gz/SHA256E-s871778034--128d154b683720f18037e8dd896ec951ac2762f0b8710f911637a6e319a6d54a.gz";
    }
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "2g/X8/SHA256E-s5569300858--99193605961d17596af2d971a8791ce519f860fa5e95eec87a2997a339813597.gz/SHA256E-s5569300858--99193605961d17596af2d971a8791ce519f860fa5e95eec87a2997a339813597.gz";
      r2 = "w0/6W/SHA256E-s5576342751--eee317da60ffd599130df0ef42d747df7a3c678f9618c1c7b541615726efc2f4.gz/SHA256E-s5576342751--eee317da60ffd599130df0ef42d747df7a3c678f9618c1c7b541615726efc2f4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0060";
    typeHla = true;
    capture = TwistV2HR;
  }
