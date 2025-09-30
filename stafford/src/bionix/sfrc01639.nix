with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.16";
      class = "tumours";
      pdx = false;
      r1 = "pG/qm/SHA256E-s14107641277--39d857ed4e7f4ec89ebd4dea00b6ccd330bbba5cb1c5852d3441daef9e3605a0.gz/SHA256E-s14107641277--39d857ed4e7f4ec89ebd4dea00b6ccd330bbba5cb1c5852d3441daef9e3605a0.gz";
      r2 = "KZ/vf/SHA256E-s14271281275--87c40502b9f253df997df53167201089001169a7c25a276104e9cde588b69c51.gz/SHA256E-s14271281275--87c40502b9f253df997df53167201089001169a7c25a276104e9cde588b69c51.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Wp/V4/SHA256E-s4199026759--1ca0e343e8a2c9603abf863def942f120f544b0e2832b69c74afd6f752917d43.gz/SHA256E-s4199026759--1ca0e343e8a2c9603abf863def942f120f544b0e2832b69c74afd6f752917d43.gz";
      r2 = "7F/V2/SHA256E-s4191409025--90501c4b882ef36f715cfb7537fbf2e90383188246bf54a721afab79891680f0.gz/SHA256E-s4191409025--90501c4b882ef36f715cfb7537fbf2e90383188246bf54a721afab79891680f0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 22.06.2023\nDiscussed WES report for Block 1.16:\n-Chromosome arm dominated events \n-Sig3 not convincing, but Sig6 crosstalks with Sig3. \n-Borderline HRD \n-High MYC and high CCNE1 amplification \n-PTEN deletion seen in MoST FoundationOne presents in WES report as copy neutral loss of heterozygosity. \n-Clare/Briony to check if pt is on MoST Circuit \n-Mandy to discuss with Clare ASAP; Clare to talk to Chloe Georgiou.\n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1.16\n\nClare's Meeting 22.12.2022\nFFPE Block 1.16 has large area of tumour, 75-80% purity. Need bloods. Would like WES to include in ECS project (Cyclin E amplified, MYC amplified) ";
      blood_recall_history = "20Sep22 - DNA\n";
      d_case_summary = "77 year old woman with metastatic uterine carcinosarcoma. Diagnoses June 2021 following PV bleeding, curettage and biopsy malignant, proceeded to gynaecologic surgery (tissue available) \n    - Adjuvant PORTEC style treatment for Stage IIIC carcinosarcoma, chemoradoitherapy with cisplatin, carbo taxol stopped after 2 cycles due to fatigue and myelosuppression (predominantly anemia). \n    - Bone marrow biopsy NAD. \n    - Now multiple lung metastases on routine surveillance. \n    - Referring for systemic treatment options ? CIRCUIT trial\n\nFiles to come, Not yet uploaded to the portal";
      date_consented = "2022-07-06";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma";
      case_details = "77F\n\n2021-04: TAH/BSO. Uterine tumour fixed and blocked (Block 1.16)\nIHC positive: CAM5.2 (in glandular and diffuse areas)\nIHC negative: ER, PR, p53 (mutant pattern)\npMMR\n\n2021-06: Dx metastatic uterine carcinosarcoma, Stage IIIC.\nChemoradiotherapy 2x: cisplatin, carboplatin, paclitaxel\n\n2022-09: MoST TSO500: \nTP53 L201fs*46 64%\nCCNE1 amplification 21 copies\nMYC amplification 8 copies\nPTEN loss 0 copies\n\n2022-11: Sections from FFPE Block 1.16 received\n\n2023-03: DNA from FFPE Block 1.16 sent for WES (Research only for ECS paper)";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "TP53 (MoST)";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/11/2022: 2021 sample requested from Austin Pathology by Devindee\n21/11/2022: 2021 slides received. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01639";
  }
