with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "Qj/qx/SHA256E-s15603840557--3bd86cc2dd7a33ad83df20cc8c1480b0ed4e72548a58fb3646242d7b43c02704.gz/SHA256E-s15603840557--3bd86cc2dd7a33ad83df20cc8c1480b0ed4e72548a58fb3646242d7b43c02704.gz";
      r2 = "GZ/5W/SHA256E-s16335632412--83611d3908ff9d148f96aa7b7ac465ddfa30f38da04fc1e41ba9b113f8ed4eba.gz/SHA256E-s16335632412--83611d3908ff9d148f96aa7b7ac465ddfa30f38da04fc1e41ba9b113f8ed4eba.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4x/J2/SHA256E-s3748889249--f6ccade907b8022b894f3051556153452a4b90f0638866da24614aa4841948d1.gz/SHA256E-s3748889249--f6ccade907b8022b894f3051556153452a4b90f0638866da24614aa4841948d1.gz";
      r2 = "13/Vv/SHA256E-s3846536211--56be5bce5202aae8cb5c09a526f7fa3878bae38fcaf1f904a2e2040d2290438a.gz/SHA256E-s3846536211--56be5bce5202aae8cb5c09a526f7fa3878bae38fcaf1f904a2e2040d2290438a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 20.12.2021\nA5: Do WES\n\nRC meeting 11.11.2021\nFFPE block 2. Warren to recall a block from March 2021 surgery as not enough tissue from the biopsy block for WES\n\nClare's meeting 22.10.2021\nBlock 2: Briony to organise blood then WES. ";
      d_case_summary = "Metastatic primary adrenocorticol carcinoma with pulmonary metastases.\nPatient has progressed on two lines of chemotherapy and Mitotane. 27 year old female. Surgery to adrenal gland. Progressive pulmonary metastases. elevated ACTH and SHBG.";
      tumour_type = "Renal cancer";
      tumour_details = "metastatic adrenocortical carcinoma    Rare adrenal endocrine cancer, adrenal glands are on top of kidneys";
      case_details = "27 years old female \n\nMid 2020:\t presented with hypertension and amenorrhea, found to have adrenal mass, lung \t\tmetastases and pituitary adenoma with hypercortisolism and increased serum \tt\t\testosterone  \n\n2020 Sept:\tinitial histologic diagnosis from lung core biopsy: neuroendocrine carcinoma, Ki 67 40%, \t\tplanned treatment as per extensive stage small cell lung cancer with cisplatin, \t\t\tetoposide, atezolizumab (block 2 received, 40-45% tumour purity) \nIHC Posititve: synaptophysin, SDHB, SF1, IGF2 \nIHC Negative: chromogranin, TTF1, SOX10, CK7, S100 \nPatchy weak Melan A and calretinin \nInhibin patchy weak \n\n Specialist pathology opinion, features consistent with metastatic adrenal cortical carcinoma, high grade. \n\n2020 Sept- Dec:\tCommenced Cisplatin, Etoposide, Mitotane x 4 cycles Sep  \n\n2021 Jan:\tCisplatin, Etoposide, Mitotane + Atezolizumab Partial response to therapy \n\n2021 Mar:\tSurgery (Adrenalectomy), removal of right adrenal tumour. Regression in 25% of \t\t\ttumour.  (FFPE block A5 received, 70-80% tumour purity)\nIHC positive: beta catenin, SF1, alpha inhibin, IGF2, synaptophysin and p53.  \nIHC negative: Arginase, CK7, CK20, calretinin, PAX8, Hepar1, Cam5.2, CDX2, HMB45, \tTTF1, chromagrin, S100   \n\n2021 May:\tProgressive disease, commenced Doxorubicin Cyclophosphamide with further PD  \n\n2021 Jun:\tDOTATATE avidity in some sites of metastatic disease: planned somatostatin analogue\n\n2021-11: Blood B1 received for SFRC ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01437_ARCPortalReport.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Block requested from Wollongong Path by Warren 18/08/21, received 4/10/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01437";
  }
