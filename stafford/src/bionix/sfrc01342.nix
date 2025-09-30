with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4W/VK/SHA256E-s12311950805--e9b74b37ff65d09dce751405382c2067dbc45ece031ab785a16567387f1aa566.gz/SHA256E-s12311950805--e9b74b37ff65d09dce751405382c2067dbc45ece031ab785a16567387f1aa566.gz";
      r2 = "9Z/gk/SHA256E-s13399226182--c52816286eccb3cdfe8babfa15e0792327d0b5ed14e7e89269adfd509017a212.gz/SHA256E-s13399226182--c52816286eccb3cdfe8babfa15e0792327d0b5ed14e7e89269adfd509017a212.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WM/w5/SHA256E-s12183488627--d9933d149aaf1f0a33f4332bd69dbc42eca62e6803a8b1e9de4d94d5ac6cc9c0.gz/SHA256E-s12183488627--d9933d149aaf1f0a33f4332bd69dbc42eca62e6803a8b1e9de4d94d5ac6cc9c0.gz";
      r2 = "34/Zv/SHA256E-s13173279009--86e13443af18515755dbc3143913bc204c5687daf487b041a228c86e0fcb56b0.gz/SHA256E-s13173279009--86e13443af18515755dbc3143913bc204c5687daf487b041a228c86e0fcb56b0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "91/QG/SHA256E-s12281048616--cf6d33805d93e0cb48b375b04967f0f2c8f74199ea7cad7b1376f8c20605c2e9.gz/SHA256E-s12281048616--cf6d33805d93e0cb48b375b04967f0f2c8f74199ea7cad7b1376f8c20605c2e9.gz";
      r2 = "PQ/0w/SHA256E-s13451723251--62fbfaec5d404f4234e5c9fcbeabc4d40106f553db1b3b55ee684d9888ef9832.gz/SHA256E-s13451723251--62fbfaec5d404f4234e5c9fcbeabc4d40106f553db1b3b55ee684d9888ef9832.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4V/fW/SHA256E-s11921604089--1a76796963ae8a2c24f197dde114883df3b9904d8453eb53f059bc14a4ff47ce.gz/SHA256E-s11921604089--1a76796963ae8a2c24f197dde114883df3b9904d8453eb53f059bc14a4ff47ce.gz";
      r2 = "W4/Wx/SHA256E-s12964109171--75deacedeb50d4ad8692d89df95593fdd94926968fb8773aa2accd983e03589a.gz/SHA256E-s12964109171--75deacedeb50d4ad8692d89df95593fdd94926968fb8773aa2accd983e03589a.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "jf/0J/SHA256E-s21882111905--fc1ee0b0e72a153071c5947f1c810e685499f0c63bd30adb7c15a1c0d14cf45c.gz/SHA256E-s21882111905--fc1ee0b0e72a153071c5947f1c810e685499f0c63bd30adb7c15a1c0d14cf45c.gz";
      r2 = "WG/2p/SHA256E-s23974046093--76815f17548a64ad18b2318a6ffa8ceda73dfde91529831e329e6b21e8f94ad6.gz/SHA256E-s23974046093--76815f17548a64ad18b2318a6ffa8ceda73dfde91529831e329e6b21e8f94ad6.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Jv/Zp/SHA256E-s21985324997--6a6e52ae0d86abffcdd5ff35e6a650d6fc2089222505c8fb7ef9d42312da025e.gz/SHA256E-s21985324997--6a6e52ae0d86abffcdd5ff35e6a650d6fc2089222505c8fb7ef9d42312da025e.gz";
      r2 = "jV/F0/SHA256E-s23950508940--e1218c9542b9c5c556dc5bb076535f2c3b925c3b728133862627ce98a92340d8.gz/SHA256E-s23950508940--e1218c9542b9c5c556dc5bb076535f2c3b925c3b728133862627ce98a92340d8.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "7m/Zp/SHA256E-s21979654049--28293a990e1852665a678d6dac9b22e15312a7fd7a27952662aa3533ecb3999d.gz/SHA256E-s21979654049--28293a990e1852665a678d6dac9b22e15312a7fd7a27952662aa3533ecb3999d.gz";
      r2 = "ww/2P/SHA256E-s24245976138--6d06bc9c84f8bd9b6dc45b9cf0df6786eb4e1f795ecfdee073ccc76a131049c7.gz/SHA256E-s24245976138--6d06bc9c84f8bd9b6dc45b9cf0df6786eb4e1f795ecfdee073ccc76a131049c7.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "20/26/SHA256E-s21437304034--fc856857046b5e22ce2b803b774a555fd94aaed3c0d7cf2fb2ed41f348d75836.gz/SHA256E-s21437304034--fc856857046b5e22ce2b803b774a555fd94aaed3c0d7cf2fb2ed41f348d75836.gz";
      r2 = "Gw/2G/SHA256E-s23457552489--d14cc5005fb9f3b2a5bcb8a51025ec352aa62b953f4e4674f353de868cd1bb51.gz/SHA256E-s23457552489--d14cc5005fb9f3b2a5bcb8a51025ec352aa62b953f4e4674f353de868cd1bb51.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "QV/Jw/SHA256E-s8524643289--00d7a4fdb6c73236ec893340a1464119f4b05de59a373a111e19376093e45e9d.gz/SHA256E-s8524643289--00d7a4fdb6c73236ec893340a1464119f4b05de59a373a111e19376093e45e9d.gz";
      r2 = "7v/Q5/SHA256E-s8533730712--53350869cf9d5795fd81cad7ff7e3907c6268aad4d4e5b2a2a2ee15e81b1bd93.gz/SHA256E-s8533730712--53350869cf9d5795fd81cad7ff7e3907c6268aad4d4e5b2a2a2ee15e81b1bd93.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "ECS";
      meeting_discussions_follow_up = "RC Meeting 06.10.2022\nDiscussed new BROCA results (compare to other results).\nRB1 germline inferred, just need to investigate in patient (WGS confirmed is somatic).\n\nRC Meeting 24.06.2021\nDiscussed WGS report.\nNo HRD mutations \n2 x PIK3CA mutations are required for TAPISTRY trial (only 1 here) - Holly/Damien to look up who's involved in TAPISTRY trial \nNF1 deletion - involving catalytic domain leading to activating RAS - appropriate for Beigene BGB283/MEKi trial? \n\nRC Meeting 29.04.2021\nDecided that S2 would be best SF piece to submit for WGS. Angela to ask Gwo about patient status first.\n\n08.01.2021\nReview of S1-S3. Genomics should be the same for all.... could do WGS (expensive) and RNASeq (not as expensive). Would like Tony's opinion \nDiscuss at first RC Meeting (4/2/2021). There is time for WGS to plan on which pieces to use (sarcoma and/or carcinoma).\nIn meantime, ask Gayanie to determine specific areas of sarcoma/carcinoma  (done).";
      d_case_summary = "62 F with possible uterine carcinosarcoma";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "uterine carcinosarcoma";
      case_details = "Uterine carcinosarcome, fit for surgery with planned TAHBSO with palliative intent";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01342";
  }
