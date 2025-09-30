with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "Gg/fq/SHA256E-s3231531298--c244faab2d9db39de54365f6b120f304fdeb37d4e12f5a5f81ef89ff0f1ad7c7.gz/SHA256E-s3231531298--c244faab2d9db39de54365f6b120f304fdeb37d4e12f5a5f81ef89ff0f1ad7c7.gz";
      r2 = "mj/6x/SHA256E-s3198696584--d93d9f005b0b66d8537b14e68384c57bd68d51b78a67c5c2d960db1416d1828c.gz/SHA256E-s3198696584--d93d9f005b0b66d8537b14e68384c57bd68d51b78a67c5c2d960db1416d1828c.gz";
    }
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "fv/9z/SHA256E-s3229649251--22840f26e70e7528c959a204933e73ccf7cca7d004b2bcb58bf5c232f845bf48.gz/SHA256E-s3229649251--22840f26e70e7528c959a204933e73ccf7cca7d004b2bcb58bf5c232f845bf48.gz";
      r2 = "1P/ZM/SHA256E-s3200448914--72477c05b976e65182e6f062ea4c5c935549bb79ffc27f165267fa35f636a79f.gz/SHA256E-s3200448914--72477c05b976e65182e6f062ea4c5c935549bb79ffc27f165267fa35f636a79f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "K3/q6/SHA256E-s891115552--216cea4ffff47b31a078dd592b027a3da60e995fe7aacc826b88d6f3eaca6d94.gz/SHA256E-s891115552--216cea4ffff47b31a078dd592b027a3da60e995fe7aacc826b88d6f3eaca6d94.gz";
      r2 = "2K/p8/SHA256E-s895182283--0b49eb54960b3eac5b3c49a76a40a28c5f83003609d37922dabc2800f7b00b12.gz/SHA256E-s895182283--0b49eb54960b3eac5b3c49a76a40a28c5f83003609d37922dabc2800f7b00b12.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vV/v7/SHA256E-s868316579--ae5eee092fa77b8c6ecfafb53eb32de456530b3463eadf594a175b33abdeee86.gz/SHA256E-s868316579--ae5eee092fa77b8c6ecfafb53eb32de456530b3463eadf594a175b33abdeee86.gz";
      r2 = "V3/qZ/SHA256E-s873737971--abf0a655deacd614d962777afcb7f97e22adc32a708e8f04141c6d0feae193fa.gz/SHA256E-s873737971--abf0a655deacd614d962777afcb7f97e22adc32a708e8f04141c6d0feae193fa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Email from Briony - 06.09.2023\nClare has asked please if we can now do WES on the FFPE tissue we hold for block 1L.\n\nClare's sample meeting 14.07.2023\nPlan for FFPE block 1L: nothing for now, send S1 for TSO500, only DNA as not enough for RNA (not enough left in the block to cut more sections).\n\nClare's sample meeting 29.06.2023\nFresh tissue S1 review: Sample post treatment,  \nDo TSO 500 on FFPE S1 (extract in lab) ";
      blood_recall_history = "If WBCs are necessary, need to organise a B2 sample (look at B1 entry)";
      d_case_summary = "49F with metastatic Fallopian tube carcinosarcoma\n5/2017 - TAH   BSO, folllowed carboplatin   paclitaxel x6\n11/2018 - Recurrence, 1: carboplatin   liposomal doxorubicin x3 (PD)\n5/2019 - ThincRare trial: Ipi nivo -> PR (ongoing maintenance nivolumab)\n2/2022 - Fluctuating nodal   peritoneal disease\n4/2022 - MDM -> Radiotherapy to progressing sites\n5/2023 - persistent low volume disease, MDM -> R inguinal lymph node biopsy and WGS\nEMBRACE showed no p53 mutation  (p53 null on IHC -> ? homozygous deletion)";
      date_consented = "2023-06-05";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "Carcinosarcoma of Fallopian Tube ";
      case_details = "50 years old female, Platinum resistant \n\n2017-05: \tInitial diagnosis, TAHBSO, FFPE block 1L received \nIHC positive: AE1/AE3, vimentin \nIHC negative: P53 \nER 80%, PR 60%, KI67 90% \n\n2017-09:\t familial cancer panel: No mutation detected   \n2017-06/ 2017-10\tCarboplatin / Paclitaxel x 6 \n\n2018-11/ 2019-01\tCarbo / Liposomal Doxorubicin x 3 \n\n2019-05/ 2021-06\tClinical trial (Ipilimumab / Nivolumab) MoSTOircuit  \n\n2021-07\tFlat dose Nivolumab \n\n2022-02\tRelapse, RT but not beneficial \n\n2023-06: \tBlood B1 and fresh biopsy received \n\nQuick summary:\n24/5/2017\tDx carcinosarcoma of Fallopian tube, Stage 1C\n24/5/2017\tTAH BSO\n22/6/2017\tCarboplatin and Paclitaxel x6\n27/11/2018\tCarboplatin and Caelyx x3 (PD)\n7/5/2019\tIpi/Nivo THINKRare trial (PR)\n13/7/2021\tNivolumab alone\n21/4/2022\tRTx to R iliac lymph node\n28/6/2023\tBevacizumab maintenance (still with Nivo)\n1/4/2024\tstill low volume of disease";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01768_FCPanel_29Nov2017_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "06Jun23: May17 sample requested from RWH by Monica\n22jun23: May17 sample received from RWH by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01768";
  }
