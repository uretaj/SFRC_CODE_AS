with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Ww/zx/SHA256E-s1575204035--b7d24e9d9050caf53219b3a91875596323d7c61c5b74c5c400058d3b67b1e0a7.gz/SHA256E-s1575204035--b7d24e9d9050caf53219b3a91875596323d7c61c5b74c5c400058d3b67b1e0a7.gz";
      r2 = "k9/Zf/SHA256E-s1583706801--5d7b2013f1a3a74b778e991031ebd9b3865ce2c083926ffd1111482a7b498dac.gz/SHA256E-s1583706801--5d7b2013f1a3a74b778e991031ebd9b3865ce2c083926ffd1111482a7b498dac.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6V/3J/SHA256E-s1543381877--19cb7e8ef5ad14e0c533f38d561e50d5b2957aecab7901be01eb0283a5f03e52.gz/SHA256E-s1543381877--19cb7e8ef5ad14e0c533f38d561e50d5b2957aecab7901be01eb0283a5f03e52.gz";
      r2 = "4v/Vj/SHA256E-s1541882358--3834bbb0cc1241bcece5dbb0c6e01cb8725a9e058d01609287fa1375dea4d7f8.gz/SHA256E-s1541882358--3834bbb0cc1241bcece5dbb0c6e01cb8725a9e058d01609287fa1375dea4d7f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV22485";
  }
