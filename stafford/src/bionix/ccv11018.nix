with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "pP/9K/SHA256E-s2891167200--4e04d570d4b969abfe4706c933a73f9b3efc7aa83f214b257bd41032b9cef4fd.gz/SHA256E-s2891167200--4e04d570d4b969abfe4706c933a73f9b3efc7aa83f214b257bd41032b9cef4fd.gz";
      r2 = "pg/4j/SHA256E-s2925079173--642b0c8581fccc6581c78db54e679a50c12b0f2c38f6675e40fef5264612f6d1.gz/SHA256E-s2925079173--642b0c8581fccc6581c78db54e679a50c12b0f2c38f6675e40fef5264612f6d1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV11018";
  }
