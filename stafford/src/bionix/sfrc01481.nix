with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "9Z/p7/SHA256E-s14257066841--7fd165c3e01a6169372299051310a5e9448eeaa4ddfd74f0f2a51c6cadc55b6b.gz/SHA256E-s14257066841--7fd165c3e01a6169372299051310a5e9448eeaa4ddfd74f0f2a51c6cadc55b6b.gz";
      r2 = "jk/K1/SHA256E-s14568723088--21b47b800c3b9d5bb05773292a53f35c75dff4f364797378ca7f066583265ae3.gz/SHA256E-s14568723088--21b47b800c3b9d5bb05773292a53f35c75dff4f364797378ca7f066583265ae3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g5/zG/SHA256E-s7871493010--8c8c14413d6babee5399010aed05b14a2947652df2e2dcbf9c27fc6042116173.gz/SHA256E-s7871493010--8c8c14413d6babee5399010aed05b14a2947652df2e2dcbf9c27fc6042116173.gz";
      r2 = "8f/9x/SHA256E-s8334426501--600b6c8c252a9d88fbb7a061b5ddea5da45616d935d9a436bc39bdc71fef37fb.gz/SHA256E-s8334426501--600b6c8c252a9d88fbb7a061b5ddea5da45616d935d9a436bc39bdc71fef37fb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Rare cancer (WES) meeting 30.06.2022\nKnown BRCA1 didn't show in WES report, Matt to follow up.\n\nMeeting with Clare 16.12.2021\nblock 1J; send for WES, Briony to organise blood";
      d_case_summary = "Metaplastic matrix producing breast carcinoma BRCA1mut, for WES. Triple negative";
      date_consented = "2021-10-29";
      tumour_type = "Breast cancer";
      tumour_details = "Metaplastic matrix producing breast carcinoma BRCA1mut";
      case_details = "33yo woman, resected early breast cancer, metaplastic and BRCA1 positive\n\n2021-08: \n-Symptomatic presentation right breast mass. Lymph node and PET negative.\n-Surgery: upfront mastectomy and SNB (carcinoma \n  fixed and blocked: Blocks 1I & 1J)\n-Histopath on R breast (grade 3 metaplastic \n carcinoma)\n  -IHC positive: CKAE1/AE3, CAM5.2, CK7, S100, \n    SOX10.\n  -IHC negative: Melan A, GATA3.\n  -Ki67 95%.\n  -Triple negative (ER/PR/HER2 negative)\n-BRCA1 positive.\n-Familial cancer panel: \n  -BRCA intron 17, likely pathogenic variant, \n   Heterozygous variant c.5075-1G>A, considered \n   class 4 variant.\n  -Not detected: ATM, BRCA2, CHEK2, PALB2, \n   RAD51C, RAD51D, TP53.\n\n2021-10: ARC portal recommendation: \n-1 year of adjuvant olaparib per OlympiA\n-WES to inform of future therapeutic decisions.\n\n2021-11: FFPE block 1I & 1J received\n\n2022-02: Blood B1 received. B1 and 1J DNA sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      breast_tumour_type = "Metaplastic matrix producing carcinoma";
      portal_letter = "SFRC01481_ARCPortalReport_29Oct2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2021 blocks received by Warren from ACL 26/11/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01481";
  }
