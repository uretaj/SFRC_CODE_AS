with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J1/GK/SHA256E-s677627129--9041413e6ed91211d993148b9f2d19c1cf8e6bcf2478b412e012dfba2e8364a5.gz/SHA256E-s677627129--9041413e6ed91211d993148b9f2d19c1cf8e6bcf2478b412e012dfba2e8364a5.gz";
      r2 = "w8/zj/SHA256E-s674345042--abc51699ed89156bc900ae9872e88111d38e4e0f859047ddc29e3e9f1867d4bf.gz/SHA256E-s674345042--abc51699ed89156bc900ae9872e88111d38e4e0f859047ddc29e3e9f1867d4bf.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0z/V2/SHA256E-s678220460--79942843c797f23bb82c3cc8baebdf69ec8696bf6b373722995f80b1f0c8d550.gz/SHA256E-s678220460--79942843c797f23bb82c3cc8baebdf69ec8696bf6b373722995f80b1f0c8d550.gz";
      r2 = "x0/WG/SHA256E-s678997628--6d8959c3d6e551c9f6349aa2497249441eb3336389da087234f021e6467d8f7b.gz/SHA256E-s678997628--6d8959c3d6e551c9f6349aa2497249441eb3336389da087234f021e6467d8f7b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "K5/Zk/SHA256E-s670627567--bb249e0dd6e62edf6388b08a26bbdfcd0965b87a1b550c03b1d128cb11b18ab7.gz/SHA256E-s670627567--bb249e0dd6e62edf6388b08a26bbdfcd0965b87a1b550c03b1d128cb11b18ab7.gz";
      r2 = "F0/v1/SHA256E-s669384333--b9d58d6e6bf2afa53a46aeed4b7efd2d691ac3d67c90f68b3165061e412cf521.gz/SHA256E-s669384333--b9d58d6e6bf2afa53a46aeed4b7efd2d691ac3d67c90f68b3165061e412cf521.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M3/Xq/SHA256E-s696497702--967a1dd019e1995303eb2878616fb1631850a62e51400c6199013cf849ba5a6c.gz/SHA256E-s696497702--967a1dd019e1995303eb2878616fb1631850a62e51400c6199013cf849ba5a6c.gz";
      r2 = "w5/fk/SHA256E-s699560768--b344ce3b308ec9d927f15245eafd0117a4a4e7bc1f2608e06b704dfad94ad0e4.gz/SHA256E-s699560768--b344ce3b308ec9d927f15245eafd0117a4a4e7bc1f2608e06b704dfad94ad0e4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's sample meeting 08.02.2024, (done through email)\nFFPE DNA extraction on block 2F failed, area of tumour are too little.1.4ng/ul in 30ul (10x10um slides) \nCS: As the omental disease is very poor tumour purity will not be able to answer the question about the origin of the mucinous component of the low grade concurrent lesion. I dont think that sequencing the primary CRC is necessary as they have a KRAS mutation already. I think we cant answer the question we asked and we should stop.\n\nClare's Meeting 02.11.2022\nWES (Cat 3) on Block 2F. Leave Block 1F. Clare suggested sequencing on archival tissue for mucinous project as a control.";
      blood_recall_history = "18Apr23 - DNA No message left\nMay23 - Spoke to 1610 via phone, connection was really bad have been talking via text ";
      d_case_summary = "79M comorbid male ie AF, CHF, CKD egfr 55, ECOG 1-2, ADL independent with peritoneal mucinous and colorectal cancer,\n\nClare suggested sequencing on archival tissue for mucinous project as a control\n- 28 April 2022 - HAR for early stage sigmoid adenoca pT4N0, widespread intraperitoneal deposits were identified intraoperatively.\n- Histology c/w low grade glandular neoplasm with abundant extracellular mucin while no mucinous differentiation in the high grade sigmoid primary.\n- Probably two separate histologies but origin of LG mucinous peritoneal neoplasm is unknown.\n- appendix normal on scopes and CT imaging\n- Patient recovering well, 1 month post surgery \n\n79yo comorbid male ie AF, CHF, CKD egfr 55, ECOG 1-2, ADL independent, lives alone/self-caring\nDuring standard lap HAR for early stage sigmoid adenoca pT4N0, widespread intraperitoneal deposits were identified intraoperatively.\nInitially felt it would be M1c sigmoid adenoca but excised omental deposits were morphologically different to primary sigmoid adenoca.\nHistology c/w low grade glandular neoplasm with abundant extracellular mucin while no mucinous differentiation in the high grade sigmoid primary.\nProbably two separate histologies but origin of LG mucinous peritoneal neoplasm is unknown.\n?appendix but normal on scopes and CT imaging\nPatient is now 1 month post surgery having a good recovery";
      date_consented = "2022-07-01";
      tumour_type = "Bowel cancer";
      tumour_details = "early stage sigmoid adenocarcinoma and low grade glandular neoplasm with abundant extracellular mucin while no mucinous differentiation in the high grade sigmoid primary";
      case_details = "79M\n\n2022-04: Dx Sigmoid conventional adenocarcinoma and synchronous intraperitoneal low grade mucinous neoplasm\nSurgery: excision of omental deposits. Tissue fixed and blocked (Blocks 1F and 2F)\npMMR\nIHC positive: SATB2, CK20\n\n2022-05: Colorectal Cancer gene panel: \nKRAS variant detected (c.34G>A, p.Gly12Ser)\nNo variants detected in NRAS, BRAF, PIK3CA\n\n2022-06: Enrolled into SFRCP\n\n2022-06: PET: enlarged iliac node and several borderline mesenteric nodular metastatic deposits; no extraperitoneal metastatic disease.\n\n2022-09: FFPE Blocks 1F and 2F received.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01610_PortalLetter_15Jun22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "02/09/2022: 2022 sample (from block 2) requested from Southwest healthcare pathology by Devindee.\n28/09/2022: 2x blocks from the 2022 sample received.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    name = "SFRC01610";
    capture = TwistV2HR;
  }
