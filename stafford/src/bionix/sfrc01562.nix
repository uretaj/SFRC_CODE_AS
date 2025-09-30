with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1M";
      class = "tumours";
      pdx = false;
      r1 = "X0/GG/SHA256E-s17257993771--0e37b26f7ea1e2bc4d4375e7b52be75e378dfa5a442130237862607159359ce0.gz/SHA256E-s17257993771--0e37b26f7ea1e2bc4d4375e7b52be75e378dfa5a442130237862607159359ce0.gz";
      r2 = "0F/gF/SHA256E-s18331285104--c4b2953a277ae275a815723d4c6a8d577c2ba907b052ea0748b33867d2a7163b.gz/SHA256E-s18331285104--c4b2953a277ae275a815723d4c6a8d577c2ba907b052ea0748b33867d2a7163b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "69/1f/SHA256E-s4986118331--95a896a80ec40d6004d1ed65a0fd94aab2b7db9d0047da75ba38aec4fa3d3ef7.gz/SHA256E-s4986118331--95a896a80ec40d6004d1ed65a0fd94aab2b7db9d0047da75ba38aec4fa3d3ef7.gz";
      r2 = "mZ/MP/SHA256E-s5049092515--f171e9965336598bd6dd741aae30111e84c77604f86c27c9ed53aac50ac84ada.gz/SHA256E-s5049092515--f171e9965336598bd6dd741aae30111e84c77604f86c27c9ed53aac50ac84ada.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.02.2023\nDiscussed WES report: \nTumour has classic uLMS features (TP53, MED12, ATRX). Somatic LRP1B might be reportable; Damien to look into further: LRP1B-mutated cancers may have improved outcomes with immune checkpoint inhibitors (ICI) https://jitc.bmj.com/content/9/3/e001792\n\nClare and Rachael meeting 06.05.2022\nBRCA test and WES when up and running again.";
      blood_recall_history = "09Sep22 - no dial tone on mobile landline disconnected";
      d_case_summary = "uLMS\n\n- Chemo in march for lung nodules 0.8mm and 10mm did not help smaller one got bigger bigger stabilised. Removed lung lobe.";
      date_consented = "2022-03-10";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "54yo woman\n\n2020-12: Underwent endometrial curette. \nIHC strong positive: smooth muscle actin, desmin, h-Caldesmon, ER. \nIHC weak positive: EMA, CD10, PR\nIHC negative: Cytokeratin negative in spindled cells, ALK-1\n\n2021-02: Diagnosed uLMS. Underwent surgery: TAHBSO\nIHC positive: ER strong positive, ~80%, p53,\nPR weak staining, <5%.\nIHC negative: AE1/AE3\nuterine tumour tissue fixed and blocked (block 1M)\n\n2021-05: radiotherapy completed\n\n2022-02: new metastatic disease in lung\n\n2022-04: Block 1M received\n\n2022-05: BRCA test (Fox Lab): No pathogenic variants detected\n\n2022-09: Blood B1 received\n\n2022-11: 1M and B1 sent for WES\n---------------------------------------------------------------------------\n26/02/2021: TAHBSO = 115x95x110mm uterine leiomyosarcoma with venous invasion and outer half myometrial invasion ER strongly positive ~80% PR <5%; cervix/ fallopian tubes/ovaries not involved \n 15/03/2021: PET CT = linear regions of increased metabolism in the anterior abdominal wall and pelvis consistent with postsurgical inflammation. 2 small 6 mm lymph nodes in the right pelvic mesentery -moderate metabolism ?reactive changes ?sites of disease. No mets\n 8/4/2021 - 12/05/2021 25 # RT completed \n 11/2/2022: CT Chest New 10 mm right middle lobe lung nodule. Left apical lung nodule now measures 6 mm. The other previously seen pulmonary nodules are unchanged since 02/09/2021.\n 17/02/2022: PET CT = 2 new nodules in the lung parenchyma-right middle lobe 8mm (SUV 15) and left upper lobe 3mm (SUV 4.3) which would be consistent with small pulmonary metastases. There is no evidence for more widespread disease in the rest of the study.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01562_ARCPortal_23Mar2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "06/04/2022: Feb 2021 sample requested from SSWP pathology by Devindee.\n13/04/2022: block received from SSWP pathology by Devindee. \n28/09/2022: received and de-identified return from Fox Lab BRCA testing";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01562";
    capture = CREv2;
  }
