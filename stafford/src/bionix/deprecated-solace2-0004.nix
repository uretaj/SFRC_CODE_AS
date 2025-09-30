with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "pP/30/SHA256E-s4684428986--26bc44cf4260c8102971f9eee373d8841eb3d60f5d4c53c0620745322fc49265.gz/SHA256E-s4684428986--26bc44cf4260c8102971f9eee373d8841eb3d60f5d4c53c0620745322fc49265.gz";
      r2 = "ZW/KK/SHA256E-s4596797136--85fddada4559a4116dac85c1f4e7caa6dea6f06993ef655744d32de89533ed54.gz/SHA256E-s4596797136--85fddada4559a4116dac85c1f4e7caa6dea6f06993ef655744d32de89533ed54.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "m6/vP/SHA256E-s1718604239--5ee9d43cf622a3ae7219e9fc6fcb46caca77420716972aaab74115951410c7d4.gz/SHA256E-s1718604239--5ee9d43cf622a3ae7219e9fc6fcb46caca77420716972aaab74115951410c7d4.gz";
      r2 = "f5/M5/SHA256E-s1849880661--d49f3da3dc1545b167faca29dd8c069363843b15403c1f48a92d3e75d5b4e218.gz/SHA256E-s1849880661--d49f3da3dc1545b167faca29dd8c069363843b15403c1f48a92d3e75d5b4e218.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "XZ/9v/SHA256E-s13877467162--910f3b3cf85f283c5b037aaec37ced67f7a3323e1e5fb969b9e3c44703d00d91.gz/SHA256E-s13877467162--910f3b3cf85f283c5b037aaec37ced67f7a3323e1e5fb969b9e3c44703d00d91.gz";
      r2 = "62/Kz/SHA256E-s12671048081--64cb66044000a334cc424bab00e01b5db5eddd2f906add15b333e36bbca4b406.gz/SHA256E-s12671048081--64cb66044000a334cc424bab00e01b5db5eddd2f906add15b333e36bbca4b406.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "gJ/XF/SHA256E-s5986048696--f320e4703e7905b387ef2e32e4236bba21ff1c8cc50a34660cdd7035513e1d09.gz/SHA256E-s5986048696--f320e4703e7905b387ef2e32e4236bba21ff1c8cc50a34660cdd7035513e1d09.gz";
      r2 = "6P/jp/SHA256E-s6119579114--9623f206462d52473d2a07cae1b55907867fc8190d3c5d1415a20269db0ff157.gz/SHA256E-s6119579114--9623f206462d52473d2a07cae1b55907867fc8190d3c5d1415a20269db0ff157.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0004";
  }
