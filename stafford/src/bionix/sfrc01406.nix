with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 30;};})];
}; let
  samples = [
    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "22/xV/SHA256E-s17678393540--2e10dbe7b27854e1d79870d9fcae1af8fe6c8fd222806f45341d6851806a5ef6.gz/SHA256E-s17678393540--2e10dbe7b27854e1d79870d9fcae1af8fe6c8fd222806f45341d6851806a5ef6.gz";
      r2 = "PV/32/SHA256E-s17915512155--4c6acb88bfd9a565f9f9291f8b0c3f6cd5f2fafa6e166f9544cb6dcf4620593a.gz/SHA256E-s17915512155--4c6acb88bfd9a565f9f9291f8b0c3f6cd5f2fafa6e166f9544cb6dcf4620593a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "W6/X8/SHA256E-s5606979489--08c71eb4751a3d360db985ff62641498697cc8a31bb678b527e2f20ee322f303.gz/SHA256E-s5606979489--08c71eb4751a3d360db985ff62641498697cc8a31bb678b527e2f20ee322f303.gz";
      r2 = "m3/6Q/SHA256E-s5950833464--00df87be469f6bb2ea5c705da61332ce01c7b0cedb2cc8fa0ad7e7b2145448f6.gz/SHA256E-s5950833464--00df87be469f6bb2ea5c705da61332ce01c7b0cedb2cc8fa0ad7e7b2145448f6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2021.08.26\nSFRC01406_A8: Do Wes\n\nClare's meeting notes 2021.07.29\nSFRC01406_3, Wait for LMS sample to come in, hopefully that one has better purity. ";
      d_case_summary = "Male - Posterior wall of stomach: - 85mm well differentiated Leiomyosarcoma --> Incidental finding while on surveillance for rectal adenocarcinoma (pMMR) --> Underwent surgical resection. Diagnosed 30/03/2021.\n?    Mar  2021:  Incidentally  found  lesion  in  stomach  consistent  with  Leiomyosarcoma  on  \nbiopsy.  Positive stains:  SMA  and  Desmin  show  diffuse  positivity. CD34 and EMA show patchy \nstaining. Negative stains: CD117, DOG1, Beta Catenin, STAT6, AE1/AE3, S100, SOX10, TLE1. Ki67 \napproximately 30% in hotspots.\n?    Apr 2021: Surgical resection. Discussed at local GI MDT, not for RT or adjuvant chemotherapy. \nReferred to Sarcoma Unit at Prince of Wales Hospital, Sydney\n?    Apr  2021:  Referred  to  ARC  Portal  to  identify  guidelines,  molecular  test  \nadvice/interpretation,  expert opinion.\n2019: Locally advanced rectal cancer. Completed resection and adjuvant treatment.\nMar 2021: H. pylori associated gastritis.\nTo be included in the multiple rare cancer programme.\nPlan: do WES on both tumours.";
      date_consented = "2021-04-27";
      tumour_type = "Other rare";
      tumour_details = "Well differentiated Leiomyosarcoma, male, posterior wall of stomach  Rectal cancer 2018  Multiple primary";
      case_details = "Male in his 50s. 2019: Locally advanced rectal cancer. Completed resection and adjuvant treatment.  \n\n03-2021:  Incidentally  found  lesion  in  stomach  consistent  with Leiomyosarcoma on biopsy.  Positive stains:  SMA  and  Desmin  show  diffuse  positivity. CD34 and EMA show patchy staining. Negative stains: CD117, DOG1, Beta Catenin, STAT6, AE1/AE3, S100, SOX10, TLE1. Ki67  approximately 30% in hotspots. \n\n04-2021: Surgical resection. Discussed at local GI MDT, not for RT or adjuvant chemotherapy.  \n\nReferred to Sarcoma Unit at Prince of Wales Hospital, Sydney \n\n04-2021:  Referred  to  ARC  Portal  to  identify  guidelines,  molecular  test   \n\nadvice/interpretation,  expert opinion. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Leiomyosarcoma, male, posterior wall of stomach";
      portal_letter = "SFRC01406_ARCPortal_Case_Report_Leiomyosarcoma_FINAL_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "7/5/21- email sent to Warren to recall blocks\n2018 rectal adenocarcinoma and 2021 leiomyosarcoma blocks requested by Warren\n2018 rectal adenocarcinoma block received by Warren 23/6/21\n2021 LMS block received by Warren 4/8/21";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01406";
    predictNeoantigens = true;
  }
