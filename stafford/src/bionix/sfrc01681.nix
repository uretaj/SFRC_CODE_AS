with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2N";
      class = "tumours";
      pdx = false;
      r1 = "MZ/4p/SHA256E-s92653426464--a39b852dc5a36d6e9a60e5208c00d7cb6e2c466653f5fd1fb0c712efbcda9412.gz/SHA256E-s92653426464--a39b852dc5a36d6e9a60e5208c00d7cb6e2c466653f5fd1fb0c712efbcda9412.gz";
      r2 = "vJ/46/SHA256E-s95709536869--94528c47f3eff93c59be9f0dffbbd5bf9e42c3bd6a85a1e9ba1a9a4c4f3f4122.gz/SHA256E-s95709536869--94528c47f3eff93c59be9f0dffbbd5bf9e42c3bd6a85a1e9ba1a9a4c4f3f4122.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KZ/4w/SHA256E-s47314600909--0b9351abeb57df6b80fd46417a9f68bf2fed344c3ecfcb911a43ae4e9b2c0034.gz/SHA256E-s47314600909--0b9351abeb57df6b80fd46417a9f68bf2fed344c3ecfcb911a43ae4e9b2c0034.gz";
      r2 = "gM/km/SHA256E-s51718794981--f9b96f56b860e2638b577aae6b97e68ba3518fab0a88a84d12996fee902479c5.gz/SHA256E-s51718794981--f9b96f56b860e2638b577aae6b97e68ba3518fab0a88a84d12996fee902479c5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 24.08.2023\nDiscussed WGS report with SFRC data.\n\nClare's Meeting 20.04.2023\nReviewed FFPE Block 2N\nSCCOHT case. When blood arrives, WGS on this block (80% purity, large area)";
      blood_recall_history = "26Apr23 - DNA";
      d_case_summary = "SCCOHT- Poorly differentiated Ovarian carcinoma SMARCA4 deficient ? within class of ovarian small cell caricnoma hypercalcemic type";
      date_consented = "2021-06-20";
      tumour_type = "SCCOHT";
      tumour_details = "Small cell carcinoma of the ovary hypercalcaemic type (SCCOHT)";
      case_details = "29 F, SCCOHT- Poorly differentiated Ovarian carcinoma SMARCA4 deficient(?) within class of ovarian small cell carcinoma hypercalcemic type (ARC Portal case). \n\n2021-07: Surgery, LLETZ initial diagnosis, started Cisplatin and etoposide, FFPE block 2N received \nShould be getting PAVEP and autologous stem cells \nIHC positive: synaptophysin, C99, P16 strong but non blocked positive staining \nIHC negative: Chromogranin, CD56, MNF116, AE1/AE3, CAM5.2, EMA, HMB45, S100, Sox10, calretinin, inhibin, SALL4, MyoD1, Myogenin, desmin, WT1, ERG, DOG1, CD34, CD117, CD79A, PAX5, CD5, CD45, TDT, CD30, CD3, Cyclin D1, BCL2, ALK1, myeloperoxidase \nINI1 preserved staining, c-Myc no increase, P53 WT\n\nBCOR disruption not detected (FISH)\nEWSR1 breakapart not identified\nRepeat of WT1 IHC was positive, repeat of BGR1/SMARCA4 show similar findings\n\nAwaiting FLI1, Fish for FUS, CIC and SS18 would be worthwhile \n\nAttenuation of BGR1, test needs to be repeated by another external provider  \n\nINI1 preserved staining, cMyc no increase, P53 WT ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2022-11-23";
      portal_letter = "SFRC01681_ARCPortal_02Aug2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07Mar23: Jul21 Sample requested from Mater Pathology by Monica\n04Apr23: Jul21 Sample received from Mater Pathology by Monica";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01681";
    disableShatterSeek = true;
    disableGridss = true;
  }
