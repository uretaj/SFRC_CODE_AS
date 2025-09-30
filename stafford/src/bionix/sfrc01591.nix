with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.14-Omega";
      class = "tumours";
      pdx = false;
      r1 = "81/1k/SHA256E-s23714653635--f78c9d53cf7fd4dfa1bdbe3ac0144f591ac75b0522c9e143bd64175827161ece.gz/SHA256E-s23714653635--f78c9d53cf7fd4dfa1bdbe3ac0144f591ac75b0522c9e143bd64175827161ece.gz";
      r2 = "k4/k6/SHA256E-s24059921371--31e9ffb75423e8ec0d28b32c5dde0fc88f5df1aa16c8a46bbba519e4970f0719.gz/SHA256E-s24059921371--31e9ffb75423e8ec0d28b32c5dde0fc88f5df1aa16c8a46bbba519e4970f0719.gz";
    }
    {
      site = "2.14-Qiagen";
      class = "tumours";
      pdx = false;
      r1 = "5f/Xm/SHA256E-s34874920668--8097553047b6e36b0ce43bff46775c9ea0ba44d7e0f708f9c005edd349855c6e.gz/SHA256E-s34874920668--8097553047b6e36b0ce43bff46775c9ea0ba44d7e0f708f9c005edd349855c6e.gz";
      r2 = "KF/mf/SHA256E-s36242121072--384726401cc72e6df7a25c96d3d01a64e9d5ab30adef49dd7c7da813f3c89533.gz/SHA256E-s36242121072--384726401cc72e6df7a25c96d3d01a64e9d5ab30adef49dd7c7da813f3c89533.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q9/5W/SHA256E-s6308706666--8d2eb58dbbb065d6c22e58793dc2102dcb45779e8d5b713df01aa2ad0fc6dbd5.gz/SHA256E-s6308706666--8d2eb58dbbb065d6c22e58793dc2102dcb45779e8d5b713df01aa2ad0fc6dbd5.gz";
      r2 = "V4/5g/SHA256E-s6456992636--b6e9662f809f5e3a9219db4cc56ebe3f20824abbe163e9941bc0147d0d88b496.gz/SHA256E-s6456992636--b6e9662f809f5e3a9219db4cc56ebe3f20824abbe163e9941bc0147d0d88b496.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 20.04.2023\nDiscussed WES report:\nPOLE driving, MSH2/TP53 passengers (no Sig6 present).\nPOLE endometrial cancer \nResults consistent with EndoGene panel report. For research only. No report needed.\n\nClare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block 2.14\n\nClare's Meeting 05.08.2022\nWES on FFPE block 2.14";
      d_case_summary = "Stage 1a mixed high grade endometriod/carcinosarcoma of the uterus- POLE E and P53 mutation\n- 09 Mar 22 Laparotomy adhesiolysis, abdominal hysterectomy BSO, cystoscopy\n- 15 April 22 Chemo radiation (ongoing according to ARC)";
      date_consented = "2022-05-22";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma. Unusual abnormal pattern of expression of IHC markers (clonal loss).";
      case_details = "72yo woman\n\n2022-03: Diagnosed HG endometrioid cancer of the uterus.\nFIGO Stage 3 endometrioid and approximately 4% sarcomatoid component. Myometrial invasion present. \n-EndoGene Panel: Somatic mutations in CTNNB1, PIK3CA, TP53 (exons 3 & 9), POLE.\n-Subtotal hysterectomy and BSO\n -Histopath on right and left tubes and ovaries:\n  -Loss of staining with MLH1 and PMS2\n -Histopath on midline posterior corpus from \n  inferior to superior and RS fragments of papillary \n  excrescences (Blocks 2.7 and 2.14)\n  -PAX8 - positive\n  -ER - 2+ nuclear staining in 50% tumour cells (no \n   staining in sarcomatoid component) \n  -PR - 2+ nuclear staining in 60% tumour cells (no s. \n   staining in sarcomatoid component) \n  -AE1/AE3 - patchy loss of staining in solid growth \n   component and micro-acinar morphology \n  -P53 - small areas of diffuse strong nuclear \n   staining in some of the sarcomatoid component, \n   raising the possibility of clonal mutated pattern \n   staining) \n  -MLH1 & PMS2 - equivocal; variable intensity \n   staining with small foci of staining loss \n  -MSH2 & MSH6 - staining present in tumour cells.\n \n2022-04: Commenced chemoradiotherapy: PORTEC3\n\n2022-05: Enrolled to ARC portal: Recommended to SFRCP for research purposes\n\n2022-06: Blood B1 received\n\n2022-07: Sections from Block 2.14 received";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01591_EndoGenePannel_09Mar22_Redacted.pdf";
      portal_letter = "SFRC01591_ARCPortal_Report_28Jun2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "21/06/2022: March 2022 tissue requested from Austin Pathology by Devindee. \n07/07/2022: March 2022 slides received from Austin Pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01591";
    capture = CREv2;
  }
