with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g8/Fj/SHA256E-s5948163308--12cc2e2525a0c3810e8952e98a47b2b64f4db3c40b5d93f0e82f059d3e11a0b6.gz/SHA256E-s5948163308--12cc2e2525a0c3810e8952e98a47b2b64f4db3c40b5d93f0e82f059d3e11a0b6.gz";
      r2 = "08/fZ/SHA256E-s6054598385--fdc42571903bf447439af288cf338aa396ce854b39c44ddae9c942deef7f0e19.gz/SHA256E-s6054598385--fdc42571903bf447439af288cf338aa396ce854b39c44ddae9c942deef7f0e19.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g2/qg/SHA256E-s6144107929--2b1ea507edddc4b55511ab1596492d97a578b59065c94ffc05b9fbfae473bf0f.gz/SHA256E-s6144107929--2b1ea507edddc4b55511ab1596492d97a578b59065c94ffc05b9fbfae473bf0f.gz";
      r2 = "g9/Gx/SHA256E-s6268297681--31bbeb5288bbfb4c71f64d998685fccfd1b4291ca10a68e45192b8c2b74d4e69.gz/SHA256E-s6268297681--31bbeb5288bbfb4c71f64d998685fccfd1b4291ca10a68e45192b8c2b74d4e69.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "jW/F0/SHA256E-s5744567383--0335834ffd68d95c2fe45fd4db433657c8bcc9a50bcc7c8752bf39f34b38c893.gz/SHA256E-s5744567383--0335834ffd68d95c2fe45fd4db433657c8bcc9a50bcc7c8752bf39f34b38c893.gz";
      r2 = "J3/zG/SHA256E-s5921418736--a283c21eb437ceb3d3a62b90aa3166bb529690192e0ae87052e8ab31496f12ba.gz/SHA256E-s5921418736--a283c21eb437ceb3d3a62b90aa3166bb529690192e0ae87052e8ab31496f12ba.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "43/2J/SHA256E-s5971534639--41d546265bdb0f2c1046ecfcd94bb215c0147a1047fdd3bb0a2b3ac4b269906e.gz/SHA256E-s5971534639--41d546265bdb0f2c1046ecfcd94bb215c0147a1047fdd3bb0a2b3ac4b269906e.gz";
      r2 = "jG/GJ/SHA256E-s6169569391--b0667317726959349d6ba9fce60b57634b24cc68c37b9442d61cf6a34aa223e0.gz/SHA256E-s6169569391--b0667317726959349d6ba9fce60b57634b24cc68c37b9442d61cf6a34aa223e0.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "mM/ZV/SHA256E-s4239261676--cf41a063d9033c8b84b8df511e552d7be55691c05d3d02f027ea0975048ff2e5.gz/SHA256E-s4239261676--cf41a063d9033c8b84b8df511e552d7be55691c05d3d02f027ea0975048ff2e5.gz";
      r2 = "Mf/W0/SHA256E-s4330573690--f382fca0b22cec9cac76b95d9e89f7ca69f50118fcac0cfa4c262e17a57a06a8.gz/SHA256E-s4330573690--f382fca0b22cec9cac76b95d9e89f7ca69f50118fcac0cfa4c262e17a57a06a8.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "QQ/JM/SHA256E-s4431718229--cae0c664a212ccc58a0e98e4c884e56b46b87520304f3fe6a6e40fde532a835d.gz/SHA256E-s4431718229--cae0c664a212ccc58a0e98e4c884e56b46b87520304f3fe6a6e40fde532a835d.gz";
      r2 = "j3/08/SHA256E-s4538063330--0494cfcd7cf84a2c40e5211b9f26aa260fa561fac26dffb23f9629567bfc4b7f.gz/SHA256E-s4538063330--0494cfcd7cf84a2c40e5211b9f26aa260fa561fac26dffb23f9629567bfc4b7f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2023.10.29\nTWIST WES on fresh tissue S1\n- No reportable germline variants \n- Reportable somatic TP53 variant \n- Reportable somatic NF2 variant \n\nClare's sample meeting 2023.10.05\nPlan on FFPE block 1.6: Wait for WES results on fresh tissue and reassess \n\nClare's sample meeting 29.06.2023\nReview second attempt of OCT block, tumour purity is better than first OCT but still not sufficient for WGS. Do WES instead on OCT2.\n\n01.06.2023\nTSO office say sample is borderline (10-20% tumour). Will withdraw this sample and find something else.\nMade new OCT block from SF tissue and want Monica to recall an FFPE block.\n\n29.05.2023\nRatana thought S1 FFPE block looks good for TSO500, submitted sections from our S1 block.\n\nClare's meeting 2023.05.18\nPlan for fresh tissue S1:Make a new OCT block if enough DNA and purity ok, Submit for TSO500, if that fails, can add to list for liquid TSO ";
      d_case_summary = "HGSOC? Previous grd 2 endometrioid endometrial adenocarcinoma, MMR deficient";
      date_consented = "2023-04-04";
      tumour_type = "HGSOC";
      tumour_details = "To be confirmed if HGSOC.  Also history of endometrial cancer.";
      case_details = "74 years old female  \n\n2020-09:\tTLH/BSO and sentinel lymph node biopsy followed by vaginal brachytherapy \nRecurrent Grade 2 Endometrioid Endometrial Carcinoma   \n\n2021-05: \tLoss of MLH1 and PMS2 and no mutations related to the Lynch Syndrome were identified \t\t(methylation assay for EPCAM, MLH1, MSH2, MSH6, PMS2). It was likely that methylation \t\taccounted for the IHC result  \n\n2023-03: \tBiopsy right pelvis  \nDiagnosis : high grade serous carcinoma   \nIHC positive: diffuse PAX 8, patchy WT1, p53 staining,  \npatchy ER and focal PR staining   \nNO loss of MLH1 and MSH6 but variable staining for PMS2 and MSH2.   \n\nI have added HER 2 staining and somatic BRCA onto the histopathology. The histology report is somewhat different from the original histology report of a G2 endometrioid cancer. I have asked Vanessa Overs to look at the slides and to compare both the tissue's  \n\n2023-04\t\tsurgery fresh tissue S1 received  \nIHC positive: p53 diffuse + (mutant phenotype), WT1+, PAX8+, p16 diffuse +, ER \n80% 2+, PR 5% 1+ \nMMR (4 panel) normal expression. \n\n2023-05: \tBlood B1 received  \n\n ";
      brca_report = "SFRC01745_BRCAPanel_FAILED_19May2023_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "06 June 23: Mar23 sample requested from epworth pathology by Monica\n21Jul23: FU with the lab - not enough tissue - have asked if they could send us any tissue at all - update: The lab is unable to send tissue\n01Aug23: Apr23 sample requested from Austin Path by Monica\n07Aug23: Apr23 sample received from Austin Path by Monica";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01745";
  }
