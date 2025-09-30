with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "W6/5k/SHA256E-s971165769--3944290134634f56e7b9df61b226e61b95d2f25b1e05e3372ae5e47b45335ca9.gz/SHA256E-s971165769--3944290134634f56e7b9df61b226e61b95d2f25b1e05e3372ae5e47b45335ca9.gz";
      r2 = "vK/P2/SHA256E-s976047585--23015c9c6bdc47d8bc6e603f456cdb5e2d7ec9ffa586ea284c29efe11c2ef186.gz/SHA256E-s976047585--23015c9c6bdc47d8bc6e603f456cdb5e2d7ec9ffa586ea284c29efe11c2ef186.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "q5/wM/SHA256E-s977954540--31bfc6a728007e9292004e2ababba4cd1e035edc2af08dc3b1d7100f364bc277.gz/SHA256E-s977954540--31bfc6a728007e9292004e2ababba4cd1e035edc2af08dc3b1d7100f364bc277.gz";
      r2 = "3p/9V/SHA256E-s981243708--abbe6bf311695e9bb0ab43fb48d526843f887ef670fcf62d685dd94842355e37.gz/SHA256E-s981243708--abbe6bf311695e9bb0ab43fb48d526843f887ef670fcf62d685dd94842355e37.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "zM/jg/SHA256E-s974809234--bef73f9f77cba49f81e90e8531c1db782a474fd2f02eadfccdd11d6c1e4dae1b.gz/SHA256E-s974809234--bef73f9f77cba49f81e90e8531c1db782a474fd2f02eadfccdd11d6c1e4dae1b.gz";
      r2 = "Fv/Jz/SHA256E-s973744152--c9c46d0237e821472e1589c82d6629d3901bbb943fb19ed02df8cc3751f1020c.gz/SHA256E-s973744152--c9c46d0237e821472e1589c82d6629d3901bbb943fb19ed02df8cc3751f1020c.gz";
    }

    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Z8/zZ/SHA256E-s3239967691--45a82f2803a16b0216a31ef6f4e13234855aae8911156ca8a8cb9bf80172c84c.gz/SHA256E-s3239967691--45a82f2803a16b0216a31ef6f4e13234855aae8911156ca8a8cb9bf80172c84c.gz";
      r2 = "7Q/j4/SHA256E-s3351602566--4b31d4b9fd05515296954317ba7dc402a1f3a070796f9ddd5d2ed563f9bdc1d8.gz/SHA256E-s3351602566--4b31d4b9fd05515296954317ba7dc402a1f3a070796f9ddd5d2ed563f9bdc1d8.gz";
    }

    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "w5/jZ/SHA256E-s3112784554--4ada8db3619bd9776e2dbf91f87af0ae327c02b78d0b92ee67341004b08b9c20.gz/SHA256E-s3112784554--4ada8db3619bd9776e2dbf91f87af0ae327c02b78d0b92ee67341004b08b9c20.gz";
      r2 = "JG/7p/SHA256E-s3206093290--0c2e560ed3c8b0515d913aebc92d1d75ea72b2995333cd0a67bc58f7fbeefec2.gz/SHA256E-s3206093290--0c2e560ed3c8b0515d913aebc92d1d75ea72b2995333cd0a67bc58f7fbeefec2.gz";
    }

    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Wf/7x/SHA256E-s3129376119--d6ca32abb8ca8d12526ec28b008c1b30e62c2aea93b97c733fed129387e69030.gz/SHA256E-s3129376119--d6ca32abb8ca8d12526ec28b008c1b30e62c2aea93b97c733fed129387e69030.gz";
      r2 = "4f/JQ/SHA256E-s3214094644--c08b1a324310ea45ce9b4f8b89ed84ab8294a6543d3013e1389849e5bcf5d314.gz/SHA256E-s3214094644--c08b1a324310ea45ce9b4f8b89ed84ab8294a6543d3013e1389849e5bcf5d314.gz";
    }

    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Qk/86/SHA256E-s3224367438--bbd338c74b7ea9b2898526bbac220e918b97be55d77504548155db73b0f11547.gz/SHA256E-s3224367438--bbd338c74b7ea9b2898526bbac220e918b97be55d77504548155db73b0f11547.gz";
      r2 = "fq/f8/SHA256E-s3309036787--ae5906e61e873bea5a6c9e70364e0cb08f9b5ec6a0dc00a3fba77fdba6279e2c.gz/SHA256E-s3309036787--ae5906e61e873bea5a6c9e70364e0cb08f9b5ec6a0dc00a3fba77fdba6279e2c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0044";
    typeHla = true;
    capture = TwistV2HR;
  }
