with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "WQ/M0/SHA256E-s16532563269--3b4b3e1536e4906096f36fca97885b52037fe59028bd056aad2dbcd34fb65744.gz/SHA256E-s16532563269--3b4b3e1536e4906096f36fca97885b52037fe59028bd056aad2dbcd34fb65744.gz";
      r2 = "Fw/wm/SHA256E-s16303061629--259de01bdfe2d728a5a69e8edaccc67d63956a28a06aa664b3f6f18765af5405.gz/SHA256E-s16303061629--259de01bdfe2d728a5a69e8edaccc67d63956a28a06aa664b3f6f18765af5405.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PK/k1/SHA256E-s5401337191--4df00e08b1d1a742aaee7083b2a03a9e09f00deef43086a38bbdb928a310ef49.gz/SHA256E-s5401337191--4df00e08b1d1a742aaee7083b2a03a9e09f00deef43086a38bbdb928a310ef49.gz";
      r2 = "wV/7M/SHA256E-s5425733126--cff57b6d03e95d2812f4f02cf19cb94050b1ae9e6c15c83afe5275a14550102e.gz/SHA256E-s5425733126--cff57b6d03e95d2812f4f02cf19cb94050b1ae9e6c15c83afe5275a14550102e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.02.2023\nDiscussed WES report:\nCan only call somatic TP53. Cannot reliably call anything else due to poor copy number plot/poor sample quality and sequencing.\n\nClare and Ratana 10.10.2022\nUrgent BRCA on FFPE block 1.5 (Awaiting forms from Devindee as of 19.10.2022)";
      urgency_details = "Please treat urgently - uLMS resected IV (stage) dx early stage May21 with PMB, ER positive. For HRD testing.";
      d_case_summary = "Please treat urgently - uLMS resected IV (stage) dx early stage May21 with PMB, ER positive. For HRD testing.\n\n- 31May21 Hysterectomy and bilaterosalpingo-ophrectomy stage 1B uterine LMS\n- Feb 2022 recurrence on PET with avid nodule \n- 22/03/2022: Left lower lobe wedge resection favouring metastasis from LMS. \n- MDT: Not for RT, for observation and medical oncology consultation\n\nHistopathology: 50 mm residual leiomyosarcoma, confined to the uterus. Clear margins. LVI present. ER 905% 3 , PR 50% 3_. P53-.";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "70F\n\n2021-05: Dx Stage 1B uterine LMS\n\nSurgery: Hysterectomy and BSO. Uterus + fibroids fixed and blocked (Block 1.5). No adjuvant chemotherapy; on observation.\n\nIHC positive: ER (90% 3+), PR (50% 3+), desmin, caldesmon, actin, AE1/3 (focal), CAM5.2\n\nIHC negative: p53\n\n2022-02: Recurrence\n\n2022-03: Lung metastasis. BRCA test on tissue: No pathogenic variants detected.\n\nMDT: No RT, observe and med onc consult\n\n2022-04: Referred to ARC Portal: HRD Testing to be undertaken on 2021 tissue\n\n2022-06: Blood B1 received\n\n2022-08: Sections from FFPE Block 1.5 received";
      brca_report = "SFRC01577_BRCAReport_30Jun2022_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      portal_letter = "SFRC01577_ARCPortal_uLMS_14Apr22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "02/08/2022: May 2021 sample requested from Austin pathology by Devindee. \n15/08/2022: 2021 sample slides received from Austin pathology by Devindee.\n02/09/2022: 2021 sample H&E slide requested from Austin pathology (prev H&E slide not scannable as it was on an ICON slide).\n28/09/2022: 2021 sample H&E slide receieved.\n07/11/2022: 2021 block requested from Austin by Devindee for uLMS study.\n21/11/2022: 2021 block received.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01577";
    capture = CREv2;
  }
