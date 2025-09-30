with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wV/67/SHA256E-s3013381665--c1d844d259f9633f1eecaf39ac5ad0b7e69cb117a5f1947444fcc03af8f58f26.gz/SHA256E-s3013381665--c1d844d259f9633f1eecaf39ac5ad0b7e69cb117a5f1947444fcc03af8f58f26.gz";
      r2 = "K9/P5/SHA256E-s3197216261--303a2a14bf769fc2c07718a6c6f45e44bd6dbcbb90450de400039aae8cc54529.gz/SHA256E-s3197216261--303a2a14bf769fc2c07718a6c6f45e44bd6dbcbb90450de400039aae8cc54529.gz";
    }
    {
      site = "T2";
      class = "tumours";
      pdx = true;
      r1 = "ZF/05/SHA256E-s5202474600--d3f7b675271f0fee62f142063835b9449785057a558b7522e540b7a41d111816.gz/SHA256E-s5202474600--d3f7b675271f0fee62f142063835b9449785057a558b7522e540b7a41d111816.gz";
      r2 = "77/25/SHA256E-s5512294810--0d0c78ea506ecee632cce793e6ff78881c489dcfcd2365664da0659f4709f58d.gz/SHA256E-s5512294810--0d0c78ea506ecee632cce793e6ff78881c489dcfcd2365664da0659f4709f58d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "aocs234087";
  }
