with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "v0/mJ/SHA256E-s2133413443--121ad0a3480adc066ed312c8844da7bd74ae903d8708e380d13d30cb6f674d89.gz/SHA256E-s2133413443--121ad0a3480adc066ed312c8844da7bd74ae903d8708e380d13d30cb6f674d89.gz";
      r2 = "Xf/52/SHA256E-s2165440056--2dd80b5e79d73982deb2f38110038101ba0f944b429cf7cfee907dcc2c434366.gz/SHA256E-s2165440056--2dd80b5e79d73982deb2f38110038101ba0f944b429cf7cfee907dcc2c434366.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xg/fz/SHA256E-s2159697781--fed78a3102c79c90392c9583a25ff4f8212fdc8bc6ff11f20ecd00489975281e.gz/SHA256E-s2159697781--fed78a3102c79c90392c9583a25ff4f8212fdc8bc6ff11f20ecd00489975281e.gz";
      r2 = "w4/zK/SHA256E-s2192101742--ce241544fad25441b51937216e491947be6718a35ab651123f0d31c7e9dd6edb.gz/SHA256E-s2192101742--ce241544fad25441b51937216e491947be6718a35ab651123f0d31c7e9dd6edb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV30561";
  }
