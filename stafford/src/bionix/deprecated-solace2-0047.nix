with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "wW/ZW/SHA256E-s3861201090--a17f5c88fd022d3bf502afebe532a8f82a36cd2a4c099bc7ce6973245a655d64.gz/SHA256E-s3861201090--a17f5c88fd022d3bf502afebe532a8f82a36cd2a4c099bc7ce6973245a655d64.gz";
      r2 = "3Q/Wq/SHA256E-s3672184259--202e55beaf22b0362dd7d5a2ca12ccb74a74eb6c97b6054c351b74a6e1b8bba0.gz/SHA256E-s3672184259--202e55beaf22b0362dd7d5a2ca12ccb74a74eb6c97b6054c351b74a6e1b8bba0.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "28/GP/SHA256E-s1458084114--90909926c9bd14fcf45a394bd44fdf0b74a57e49fe90ffa791d3298862626a35.gz/SHA256E-s1458084114--90909926c9bd14fcf45a394bd44fdf0b74a57e49fe90ffa791d3298862626a35.gz";
      r2 = "ZV/v0/SHA256E-s1524063489--bedadbe36bfc31eac3886d2b79607bfe0d28a0e17db3ce5c50e1112b06888537.gz/SHA256E-s1524063489--bedadbe36bfc31eac3886d2b79607bfe0d28a0e17db3ce5c50e1112b06888537.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "Gq/66/SHA256E-s2245632966--e890ef059817ffb92924ef5862e8ea2c580f5040c10354fec23957cc6d13bbea.gz/SHA256E-s2245632966--e890ef059817ffb92924ef5862e8ea2c580f5040c10354fec23957cc6d13bbea.gz";
      r2 = "Xz/z5/SHA256E-s1978883489--208a30b87a0cd7d0dccdba706a341b0f2901965c15ceb503fd4b5468172dbbab.gz/SHA256E-s1978883489--208a30b87a0cd7d0dccdba706a341b0f2901965c15ceb503fd4b5468172dbbab.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "1Z/jQ/SHA256E-s1082971320--0a75380cea7ebbebb16543ee5c490844246986de2db356261e38d56a8a374bdb.gz/SHA256E-s1082971320--0a75380cea7ebbebb16543ee5c490844246986de2db356261e38d56a8a374bdb.gz";
      r2 = "W4/fz/SHA256E-s1094042535--396e76d52b3ec1919d26db4ff11b59fc22623b7a4a5cdbe25324dcb6db67dc0b.gz/SHA256E-s1094042535--396e76d52b3ec1919d26db4ff11b59fc22623b7a4a5cdbe25324dcb6db67dc0b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0047";
  }
