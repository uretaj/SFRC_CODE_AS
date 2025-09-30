with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j3/k4/SHA256E-s43253057914--7860d7bd48ee4f112e47c94fd53c0cc57e63423cfe0e8436002f018634924a31.gz/SHA256E-s43253057914--7860d7bd48ee4f112e47c94fd53c0cc57e63423cfe0e8436002f018634924a31.gz";
      r2 = "gF/6V/SHA256E-s46000495089--6efdf2d1fe717ec3f4c735229abcc315af7723690243a43703039f65e36f1dc7.gz/SHA256E-s46000495089--6efdf2d1fe717ec3f4c735229abcc315af7723690243a43703039f65e36f1dc7.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "v8/zP/SHA256E-s93749700625--55b2aaf9e98ee1e846ec4423086eb1f080252880e6e4e90dc5c72fccfbc41243.gz/SHA256E-s93749700625--55b2aaf9e98ee1e846ec4423086eb1f080252880e6e4e90dc5c72fccfbc41243.gz";
      r2 = "kX/x9/SHA256E-s97274610499--e7992694fea64a31b827e924df409a6f7c3e652fbc15adf4ebe85865f6495c63.gz/SHA256E-s97274610499--e7992694fea64a31b827e924df409a6f7c3e652fbc15adf4ebe85865f6495c63.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "kM/wP/SHA256E-s4294566949--45176675cb74341f082d9a0e085a1df57e258aac06b078694b665a64c3bd6cf5.gz/SHA256E-s4294566949--45176675cb74341f082d9a0e085a1df57e258aac06b078694b665a64c3bd6cf5.gz";
      r2 = "5j/pX/SHA256E-s4192055781--e5bb6f8d2f2e2e1bc50eafb200dea8d4dc1f757e6d85731a3bcdfed715f4f45e.gz/SHA256E-s4192055781--e5bb6f8d2f2e2e1bc50eafb200dea8d4dc1f757e6d85731a3bcdfed715f4f45e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Email from Clare 18.11.2022\ncan you please make this biopsy/WGS urgent as she is progressing.";
      urgency_details = "Referring clinician in ARC Portal has noted the case as urgent please.";
      d_case_summary = "Recurrent Female Adnexal Tumour of Probable Wolffian Origin (FATWO) tumour, dx 2012.\nRecurrent progressing disease and a background of previous multiple surgeries to remove the disease. Chemotherapy at Diagnosis, but progressed shortly afterwards and has also had a trial of Tamoxifen and and AI.\nThe referral is to consider tumour NGS and hopefully to identify an actionable mutation to assist with treatment decision moving forward. She is still excellent PS and would be suitable for a trial";
      date_consented = "2022-10-27";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Recurrent Female Adnexal Tumour of Probable Wolffian Origin (FATWO) tumour, dx 2012.";
      case_details = "56F\n\n2010-09: Dx Female Adnexal Tumour of Probable Wolffian Origin (FATWO)\nSurgery: TAH/RSO\nIHC positive: ER, PR, calretinin, vimentin (focal), pancytokeratin (focal), CD10 (focal)\nIHC negative: CK20, EMA, inhibin-A\n\n2012-10: Recurrence FATWO\nChemotherapy: Carboplatin/taxol\nSurgery: LSO & debulk\nIHC positive: ER, PR, calretinin, vimentin, pancytokeratin, CD117 (patchy), CK7 (focal), CK8/18 (patchy)\nIHC negative: EMA, 34-beta-E12 keratin, alpha-inhibin, CD10, CK20\n\n2016-06: Recurrence FATWO\nSurgery: Debulk\nIHC positive: calretinin (strong), inhibin (patchy mild), panCK (patchy)\nIHC negative: CD10, CK20, CK7, GATTA3, EMA, PAX-8, CD117, DOG1\n\n2022-11: Blood B1 received. Fresh tissue S1 received.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2022-11-03";
      case_urgent = "Yes";
      portal_letter = "SFRC01675_ARCPortal_25Nov2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01675";
  }
