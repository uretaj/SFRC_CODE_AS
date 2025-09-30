with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1U";
      class = "tumours";
      pdx = false;
      r1 = "qG/m7/SHA256E-s26342486664--a9d967394bc9223a3d6f50638739c5cd6976bb0a8374c0331b1746adf3eb1ba2.gz/SHA256E-s26342486664--a9d967394bc9223a3d6f50638739c5cd6976bb0a8374c0331b1746adf3eb1ba2.gz";
      r2 = "G3/km/SHA256E-s27027231787--d3a0f8a489d47106feb753e2e26fd7b919c7510b3e33a93ce62de738abf3ea73.gz/SHA256E-s27027231787--d3a0f8a489d47106feb753e2e26fd7b919c7510b3e33a93ce62de738abf3ea73.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "27/01/SHA256E-s4451247816--68ca1289b22f878b5b857a20e8592b679699ff1adbfd385ec033502d10574456.gz/SHA256E-s4451247816--68ca1289b22f878b5b857a20e8592b679699ff1adbfd385ec033502d10574456.gz";
      r2 = "7Q/03/SHA256E-s4699490915--cd8bbe2d04aade7c85c14bc8a7df5bb929a6c7d76fe5cc217f2c6ffa446dd3b5.gz/SHA256E-s4699490915--cd8bbe2d04aade7c85c14bc8a7df5bb929a6c7d76fe5cc217f2c6ffa446dd3b5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 20.12.2021\n1U: Serous component. Also had breast cancer in 2013 (Kristy!) \nDo WES and BROCA (say double primary) \n\n\nSurgery 2/07/2021. No tissue given to us, was very small and it was all given to pathology.";
      d_case_summary = "58 yo referred for Grade 1 EAC (small endometrial polyp) (unusual papillary pattern on MDT review). Low grade papillary serous carcinoma of peritoneum. \nBreast cancer 2013.\nER 2  90%, p16 neg ? MSI ? p53\nCST pending (taken at referral).";
      date_consented = "2021-07-01";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Endometrial adenocarcinoma Grade 1\nBreast cancer 2013";
      case_details = "59yo woman\n\n2013: Breast cancer. Surgery: left mastectomy and and axillary clearance. Past history of inflammatory breast cancer.\nTreatment: neoadjuvent chemotherapy.\n\n2014-06: Histopath on mastectomy specimen:\nIHC: Some uptake in cytoplasm with WT1 but no nuclear staining seen.\nIHC negative: ER, PR thyroglobulin, GCDFP15, TTFlor mammaglobin\n\n2015-08: HER2 negative.\n\n2015-09 - 2015-12: commenced carboplatin and paclitaxel\n\n2019-03: Histopath on peritoneal cyst sac\nIHC positive: PAX8, BerEP4, CK7, ER (strong,  60%)\nIHC negative: WT1, P16, TTF1, CK20, CDX2 and GATA3.\np53: wild type.\n\n2021-05: Diagnosed endometrial cancer. FIGO Stage IA. ER+\n\n2021-07: Hysterectomy, RSO, abdominal\nIHC positive: ER strong (90%), PR moderate (10 - 15%)\nIHC negative: p16 \np53 wild type, MSI panel normal\nTissue from right posterior fundus fixed and blocked (block 1U)\n\n2021-07: Blood B1 received. Sections from Block 1U received.";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "10Nov21- we did not receive fresh tissue at surgery, however we did not followup and request FFPE at the time. Requesting now as high priority please. BM\n\n2021 sample received by Devindee 07/12/2021.";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01429";
    predictNeoantigens = true;
  }
