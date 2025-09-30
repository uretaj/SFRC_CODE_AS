with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wj/xx/SHA256E-s6990482446--492674f876de2bc8b69ae1f742e1ea91a0f9c552a8cbf89df37734378f780083.gz/SHA256E-s6990482446--492674f876de2bc8b69ae1f742e1ea91a0f9c552a8cbf89df37734378f780083.gz";
      r2 = "q2/7V/SHA256E-s7121711625--ea742c747214d5dba364087fb0830065262aa15972bbd942348157a9613337fb.gz/SHA256E-s7121711625--ea742c747214d5dba364087fb0830065262aa15972bbd942348157a9613337fb.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3X/pg/SHA256E-s7322586624--4b38ac0fa2779811393e8a49eb81428e4f5574402684f348e073533312da2ef8.gz/SHA256E-s7322586624--4b38ac0fa2779811393e8a49eb81428e4f5574402684f348e073533312da2ef8.gz";
      r2 = "g7/W9/SHA256E-s7474502541--a27823391589b837e1a0a9b11c5527e17585d48c39a272d9d8956381a2dcef4c.gz/SHA256E-s7474502541--a27823391589b837e1a0a9b11c5527e17585d48c39a272d9d8956381a2dcef4c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2m/8Z/SHA256E-s5298952346--4c60ce2835d1116ae9e921689641daff9a845969bb9ddb42126c7e1f42c8dce7.gz/SHA256E-s5298952346--4c60ce2835d1116ae9e921689641daff9a845969bb9ddb42126c7e1f42c8dce7.gz";
      r2 = "1M/Wv/SHA256E-s5403796174--d26ada2c094c3e9384cf0d786bac52208ed036a8d5136d9176fdbf2c362edb39.gz/SHA256E-s5403796174--d26ada2c094c3e9384cf0d786bac52208ed036a8d5136d9176fdbf2c362edb39.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "vj/xg/SHA256E-s5559715434--2188a19b15edcb6d9dde2028353712e67c415c4c2d4592d84fbad5151d1dbac7.gz/SHA256E-s5559715434--2188a19b15edcb6d9dde2028353712e67c415c4c2d4592d84fbad5151d1dbac7.gz";
      r2 = "Jj/61/SHA256E-s5680858227--a9cd1af0a07984c28ec063a013af7b4e413c4b16aa942fdfa532a73ff785108d.gz/SHA256E-s5680858227--a9cd1af0a07984c28ec063a013af7b4e413c4b16aa942fdfa532a73ff785108d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "KZ/J6/SHA256E-s3191695580--1478d88117adf29f2996e462cbccdd70216a86534053b0232761d686c6a0b93d.gz/SHA256E-s3191695580--1478d88117adf29f2996e462cbccdd70216a86534053b0232761d686c6a0b93d.gz";
      r2 = "6f/F1/SHA256E-s3149246044--494827c54bfaf39b7a8e60ca89956094fed34085a94ccc8ccd017c95233683d0.gz/SHA256E-s3149246044--494827c54bfaf39b7a8e60ca89956094fed34085a94ccc8ccd017c95233683d0.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "13/wZ/SHA256E-s3261864267--d76ae3d3cea2b6111b09b70deadce7c1a98f9e129222bf5a8a68a70074717845.gz/SHA256E-s3261864267--d76ae3d3cea2b6111b09b70deadce7c1a98f9e129222bf5a8a68a70074717845.gz";
      r2 = "71/1K/SHA256E-s3222991442--0f95a065de07de75ff6084e73b61db08a006170b3eb1085fb64c25591354c501.gz/SHA256E-s3222991442--0f95a065de07de75ff6084e73b61db08a006170b3eb1085fb64c25591354c501.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "email 12.03.2023 from Matt\nWES can detect reversions.\nSend S1 OCT DNA for WES.\n\nClare's meeting - 09.03.2023\n-Need blood\n-Patient is somatic BRCA1 carrier.\n-Ask Matt if WES would be ok to find any possible reversions, or do WGS? \n-She progressed on PARPi, is Anne Hamilton's case. ";
      blood_recall_history = "17Feb23 - VM left";
      urgency_details = "Progressive disease";
      d_case_summary = "sBRCA1  HGSOC, w low vol PD on Olaparib (1st line post Carbo / Taxol).";
      date_consented = "2023-02-06";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "55F\n\n2021-03: Dx Ovarian cancer: metastatic abdopelvic malignancy \nSurgery: Omental cake ++ CT biopsy\nIHC positive: ER (3+, 90%), PR (3+, 20%), CK7, PAX8, WT1\nIHC negative: CK20\np53: mutation type staining\n\n2021-03: FCC Panel: No pathogenic variants detected\n\n2021-04 - 2021-08: Chemotherapy: Carboplatin/Paclitaxel. Poorly tolerated.\n\n2021-06: Surgery: IDB (Post Cycle 3 of surgery). Multiple small deposits of HGS carcinoma involving both ovaries (R) FT. Omental deposits of metastatic HGSC.\n\n2021-08 - 2022-02: Chemotherapy: Bevacizumab\nCommenced with C5 carboplatin\n\n2021-11 - 2023-02: Chemotherapy: Olaparib maintenance.\n\n2023-02: Fresh tissue S1 received - LN biopsy. HG serous ca FGT.\nIHC positive: ER (moderate, 50%), PR (weak, 10%), CK7, PAX8\nIHC negative: HER2\np53: Diffuse strong positive staining";
      brca_report = "SFRC01712_BRCA Reports_MarApr21.pdf";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA1";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01712";
  }
