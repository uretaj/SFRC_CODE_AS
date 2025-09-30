with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4F";
      class = "tumours";
      pdx = false;
      r1 = "q8/Px/SHA256E-s15768071331--ad4920dc033fb25368879cec13071f456e50ebb2be21e11d8a8de9889533e697.gz/SHA256E-s15768071331--ad4920dc033fb25368879cec13071f456e50ebb2be21e11d8a8de9889533e697.gz";
      r2 = "Fm/XG/SHA256E-s16140389921--1a799272280b2fb07baf20d550b1a66ccfd213b6da39b71b876a438d3e9f1ba6.gz/SHA256E-s16140389921--1a799272280b2fb07baf20d550b1a66ccfd213b6da39b71b876a438d3e9f1ba6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gx/4j/SHA256E-s5196127071--bfc73f05a5ab39c8f75e5773490390f30f2660537634c1833af34c5f5d679dbb.gz/SHA256E-s5196127071--bfc73f05a5ab39c8f75e5773490390f30f2660537634c1833af34c5f5d679dbb.gz";
      r2 = "57/v7/SHA256E-s5260874527--6c98ec4a60e423352e0385e812912bd04887871f7ebc0f12151e52af4b28d6f8.gz/SHA256E-s5260874527--6c98ec4a60e423352e0385e812912bd04887871f7ebc0f12151e52af4b28d6f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 07.09.2023\nDiscussed WES report for Block 4F\n*Germline RAD51C (same VUS as in FCC panel report) and somatic TP53.\n*Clear LoH of RAD51C. However not in the list of affected genes for LoH region because it's not a Census gene.\n*Classic HGSOC case\n*Check with Matt if HRD.\n\nClare's meeting 2023-05-18\nPlan for FFPE 4F: Extract for WES and BROCA? Yes  ";
      blood_recall_history = "10May23 - DNA";
      urgency_details = "RAD51C Germline VUS Suspicious for being pathogenic/HRD. ";
      d_case_summary = "41yF diagnosed with Stage III High Grade Serous Ovarian Carcinoma in 2022. USS and CT scan showed extensive pelvic disease with bilateral solid cystic ovarian masses and peritoneal and omental disease including large volume perihepatic/subcapsular tumours. MRI of the Liver/Abdomen confirmed these sub diaphragmatic subcapsular hepatic peritoneal deposits and other peritoneal/omental deposits in the paracolic gutter and pelvis. Surgical debulking- hysterectomy, bilateral salpingo-oophorectomy with omentectomy and debulking of the large tumour nodules down to small volume disease in the abdomen and pelvis apart from the liver lesions, the largest of which is 18mm (14/07/22). Strong family history where her mother had breast cancer in her 30's, her maternal grandfather had prostate cancer, her maternal grand aunties and grand uncles all had different cancers and her paternal aunt had breast cancer in her 60's. RAD51C germline VUS suspicious for being HRD/pathogenic. Treatment: Carboplatin, Paclitaxel and Bevacizumab (Bev at C2). Post 3 cycles of chemotherapy PET/CT complete metabolic and structural response, has completed 6 cycles of chemotherapy. To seek compassionate access for Olaparib.";
      date_consented = "2023-12-22";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, gRAD51C";
      case_details = "40 years old female with strong family cancer history   \n\n2022-07:\t Dx HGSOC\nsurgery (TLH-BSO), FFPE block 4F received  \nCarbo/Taxol with Bev from C2 \nIHC positive: CK7, PAX8, BerEP4, WT1, ER +1/+2 in 30% of tumour cells \nIHC negative: Ck20, PR,  \nP53 negative \n\n2022-07: Somatic BRCA test: No pathogenic variants detected.\nFCC Panel: RAD51C VUS detected (c.80T>C)\n\n2023-01: On ongoing avastin maintenance, Commenced olaparib\n\n2023-04: Sections from FFPE Block 4F received\n\n2023-05: Blood B1 received\n\n2023-06: 4F and B1 DNA sent for WES";
      brca_report = "SFRC01735_BRCAGeneTest_14Jul2022_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      fcc_report = "SFRC01735_OvarianPanel_15Jul2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "17Mar23: Jul22 Sample requested from Anatomical Pathology by Monica\n14Apr23: Jul22 Sample received from Anatomical Pathology by Monica";
      patient_germline_mutations = "RAD51C VUS";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01735";
  }
