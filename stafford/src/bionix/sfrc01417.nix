with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j3/Jx/SHA256E-s46054413031--2eb930279fb27c94ea862cf7b5e6bdf0e8765f1511a2e2abb60a69949e8c7cb3.gz/SHA256E-s46054413031--2eb930279fb27c94ea862cf7b5e6bdf0e8765f1511a2e2abb60a69949e8c7cb3.gz";
      r2 = "fQ/vX/SHA256E-s47837897456--35d9978e3d2e351dc1ccf834fbc8e447a16f35e3ce050890023c427747c43e7f.gz/SHA256E-s47837897456--35d9978e3d2e351dc1ccf834fbc8e447a16f35e3ce050890023c427747c43e7f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2Q/0G/SHA256E-s96211174944--3391a87823ea8c2f81548c3c828966dec021148329e789e11c9da7d3712f0d77.gz/SHA256E-s96211174944--3391a87823ea8c2f81548c3c828966dec021148329e789e11c9da7d3712f0d77.gz";
      r2 = "WJ/Z6/SHA256E-s100151296003--fb97d5c51007a0325c4249312a5504680f8b3adacb15f1719aebf570ea765f57.gz/SHA256E-s100151296003--fb97d5c51007a0325c4249312a5504680f8b3adacb15f1719aebf570ea765f57.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "P9/2g/SHA256E-s5596036380--fbfa7d572b1a1d5562be68e192de012444fcf17b755f2359a5f94d01fae90cbb.gz/SHA256E-s5596036380--fbfa7d572b1a1d5562be68e192de012444fcf17b755f2359a5f94d01fae90cbb.gz";
      r2 = "Mf/x1/SHA256E-s5493275614--95aff45a2c0804da39333d8153386ddd12f75f4551bf843935ad7f0cde073e0a.gz/SHA256E-s5493275614--95aff45a2c0804da39333d8153386ddd12f75f4551bf843935ad7f0cde073e0a.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "q8/F8/SHA256E-s9642456963--4dcbbef593d848b5d053f4b08d6be60558670f4fe1bd60ccee6254524389a4d5.gz/SHA256E-s9642456963--4dcbbef593d848b5d053f4b08d6be60558670f4fe1bd60ccee6254524389a4d5.gz";
      r2 = "F6/2W/SHA256E-s9372253188--43bead20568f692fc908fa9ea5e5aefb56659114e6f9ed7bb5f5eb8d4974b087.gz/SHA256E-s9372253188--43bead20568f692fc908fa9ea5e5aefb56659114e6f9ed7bb5f5eb8d4974b087.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "RC meeting 17.02.2022\nDiscussed WGS report.\nNotes from Variant meeting: \nWTS data is pending \nBRAF mutation - eligible for 3 trials.  \n*MoST 12 (favourable) \n*BGB-283 dual Ras-Raf/MEKi (favourable, specific looking for LGSOC) \n*ERASER (ERKi) - still in dose escalation, favour the other 2 trials over this one. \nAlso, BGB-2345 trial available. \nUSP9X - Ubiquitin isopeptidase - targets MCL1, SMAD4. Known recurrent event \nOur discussion: \nKylie Gorringe has a student studying USP9X. Can offer a vial of mince for them to grow organoids- Gen has done this.  \n\nSample meeting catch up 06.12.2021\nS1: WGS, both micro dissect DNA and RNA\nDecide later if WES to be done on FFPE (after WGS report back)";
      d_case_summary = "- initial diagnosis 2014 with low grade serous ovarian carcinoma\n- First line treatment: carboplatin/paclitaxel with complete response\n- Recurrence 2019: second line treatment with anastrozole\n- Now progressing with rising CA125 and progressive disease on PET/CT\n- Referred for advice on next treatment option ? fulvestrant ? targeted therapies and access to molecular testing";
      date_consented = "2021-05-11";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01417";
  }
