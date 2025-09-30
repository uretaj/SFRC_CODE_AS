with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3.21 A";
      class = "tumours";
      pdx = false;
      r1 = "0p/3m/SHA256E-s6819319389--879567225d4f407e0a8c7f40855c9b0f14ed0b105105256701dea075755805b2.gz/SHA256E-s6819319389--879567225d4f407e0a8c7f40855c9b0f14ed0b105105256701dea075755805b2.gz";
      r2 = "mJ/M8/SHA256E-s6848091016--2d61739fc4a79557483738e1149bc058010e0e437e2ce363e0fd4e640f37177b.gz/SHA256E-s6848091016--2d61739fc4a79557483738e1149bc058010e0e437e2ce363e0fd4e640f37177b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0V/Ww/SHA256E-s3531544132--eb71c8058465aa5a7d65d8def8f9e0e29bc0fdd66f5580535b15853bc0b5aa30.gz/SHA256E-s3531544132--eb71c8058465aa5a7d65d8def8f9e0e29bc0fdd66f5580535b15853bc0b5aa30.gz";
      r2 = "kK/ZJ/SHA256E-s3563898280--c690b2d8eb092cfd8387da715dda8123fd40ec4c29adbb65fb3f7eb9a9b9e90d.gz/SHA256E-s3563898280--c690b2d8eb092cfd8387da715dda8123fd40ec4c29adbb65fb3f7eb9a9b9e90d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 22.07.2021\nDiscussed WES results.\nHigh purity (0.72) moderate TMB (13) (TMB is not high) - purity must be higher than this as TP53 mutation has raw frequency of 86% equivalent to adjusted 100% with purity of 0.82. \nFBXW7 mutation  ClinVar 'Likely Patho': 0 stars, 12 submitters; various cancers including uterine, ovarian, bowel. \nMECOM - 18 copies. ecDNA? MECOM rearrangements lead to poor prognosis. High copy number, not 18, but high. \nFANCA somatic mutation, ClinVar #974257 Germline, 1 submission, 0 stars. Not of interest. \nAKT2 - 8 copies - AKTi not available in Australia. \nNo signatures of significance \n\n2021.03.15\nBlock 3.21 reviewed. Make DNA but separate the cartilage from non-cartilage. Non-cartilage will be submitted for WES, after Clare checks how patient is doing.\n\n2021.01.28\nWhen block comes in, will be for WES (priority)\n\n2021.04.22\nSFRC01370_3.21\nBlock from 25-08-2020. No analysis done for SFRCP. Needed to check patient status before submitting for WES. Separated out non-cartilage areas from cartilage (DNA from both parts). \nTo do WES? Yes, the non-cartilage sample (epithelial component) ";
      d_case_summary = "71F with Stage IIIA ovarian carcinosarcoma. Initial diagnosis 25/08/2020. Baseline CT: 25cm right adenexal mass with solid and cystic components. TAH   BSO, resection of ileal segment 25th August 2020 (Pendelbury, Mercy). Histology: carcinosarcoma (75% rhabdomyosarcoma, 10% chondrosarcoma, 10% serous HG carcinoma, 5% undifferentiated carcinoma/sarcoma). Six cycles Carboplatin/Taxol recommended, commenced September 2020. Severe Taxol reaction, switched to Carboplain/Gemcitabine. ECOG 1. No family history of malignancy. Block to be recalled from Mercy Hosp Jan 2021. For WES. Bloods to be done on 23/3/21.";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "Ovarian Carcinosarcoma";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01370_ARC portal letter_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Block requested on 28/1/21 by Warren \nReceived on 14/2/21 by Warren";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01370";
  }
