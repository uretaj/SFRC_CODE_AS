with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "k2/mQ/SHA256E-s5314340877--ee5d274b73c3b1a72a494a5d835c14a5311ca131d2c7105645060debcf113d06.gz/SHA256E-s5314340877--ee5d274b73c3b1a72a494a5d835c14a5311ca131d2c7105645060debcf113d06.gz";
      r2 = "2p/7Q/SHA256E-s5431238136--563c588329d01704c2d2d4a6462ae58a47736e1edc1e2f6797bd498cd4fb3cde.gz/SHA256E-s5431238136--563c588329d01704c2d2d4a6462ae58a47736e1edc1e2f6797bd498cd4fb3cde.gz";
    }

    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "2p/fX/SHA256E-s5428474937--b7e3873b10fde609bca0016d70a430d8bc35fcce2791595a313d3e7169087277.gz/SHA256E-s5428474937--b7e3873b10fde609bca0016d70a430d8bc35fcce2791595a313d3e7169087277.gz";
      r2 = "qG/39/SHA256E-s5568048686--bea9767258652241eb34c9575965afc82f569a9474be9c2b15a5ba4e8dce380b.gz/SHA256E-s5568048686--bea9767258652241eb34c9575965afc82f569a9474be9c2b15a5ba4e8dce380b.gz";
    }

    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "kZ/zQ/SHA256E-s5384900750--f86f8bedb29f64edc3be41e91b5a66759c8c7b5d164ad63493b6180db1875151.gz/SHA256E-s5384900750--f86f8bedb29f64edc3be41e91b5a66759c8c7b5d164ad63493b6180db1875151.gz";
      r2 = "jm/Qv/SHA256E-s5530687264--b8bb726f8b29abd23d40de4b58868a7e6c18af9ffa5e345fb96d17761d901831.gz/SHA256E-s5530687264--b8bb726f8b29abd23d40de4b58868a7e6c18af9ffa5e345fb96d17761d901831.gz";
    }
    {
      site = "B2";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "kW/1w/SHA256E-s19598828010--d2db030c37687fe1c38e4c89c23176dd90499a14f8d7f53cbad61c1235f21ce7.gz/SHA256E-s19598828010--d2db030c37687fe1c38e4c89c23176dd90499a14f8d7f53cbad61c1235f21ce7.gz";
      r2 = "Q5/zF/SHA256E-s21166677414--7609ba65167fd44054bcebdd922238657194fc85353e7a85a37db2c6fbd1f759.gz/SHA256E-s21166677414--7609ba65167fd44054bcebdd922238657194fc85353e7a85a37db2c6fbd1f759.gz";
    }
    {
      site = "B2";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "1M/pQ/SHA256E-s26307186635--9a72b90eb780c65480684e48acf2f85bb2096e72b02b8fe6e7dcf8563ca0e357.gz/SHA256E-s26307186635--9a72b90eb780c65480684e48acf2f85bb2096e72b02b8fe6e7dcf8563ca0e357.gz";
      r2 = "WM/XX/SHA256E-s28127961612--be4a95414304ba9f28e219f77e657f9b4bdd8b1ac84cca0a615545ff9a9e5377.gz/SHA256E-s28127961612--be4a95414304ba9f28e219f77e657f9b4bdd8b1ac84cca0a615545ff9a9e5377.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SFRC01436-twist-test";
    capture = TwistV2HR;
  }
