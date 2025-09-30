with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vq/V2/SHA256E-s35416951544--279a16063e2d6db6371a5728b6ee0d23647f8d3b87cb0d2f64bea40f6888fa27.gz/SHA256E-s35416951544--279a16063e2d6db6371a5728b6ee0d23647f8d3b87cb0d2f64bea40f6888fa27.gz";
      r2 = "MF/vW/SHA256E-s36671179608--490815fbdcbcfcf6642e19324c8298f899a42273b063b4ec9430fbfc9d7e005e.gz/SHA256E-s36671179608--490815fbdcbcfcf6642e19324c8298f899a42273b063b4ec9430fbfc9d7e005e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "fk/xg/SHA256E-s91215022453--db984f68ec8cd4cb3f2650e13a5863cc35e425b7430f1c978da873ddb78872c9.gz/SHA256E-s91215022453--db984f68ec8cd4cb3f2650e13a5863cc35e425b7430f1c978da873ddb78872c9.gz";
      r2 = "jj/7P/SHA256E-s94912773075--f644f775f0c2cf3febd31f317f50f33aaf9c4f62208b20f9875ba44435445ce2.gz/SHA256E-s94912773075--f644f775f0c2cf3febd31f317f50f33aaf9c4f62208b20f9875ba44435445ce2.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "ZM/4Q/SHA256E-s6115288844--ece060af06d9dfe4b5a913a5290b1d50f0fe0a17ec5b7ada51c16821c2d20329.gz/SHA256E-s6115288844--ece060af06d9dfe4b5a913a5290b1d50f0fe0a17ec5b7ada51c16821c2d20329.gz";
      r2 = "ZQ/F1/SHA256E-s6009843877--d72010055dd13ccf4ef7e62858c15b095692f54c825dd8b223c5a7aeea5d6623.gz/SHA256E-s6009843877--d72010055dd13ccf4ef7e62858c15b095692f54c825dd8b223c5a7aeea5d6623.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.02.2024\nDiscussed WGS report (Grimmond and SFRC).\nuLMS profile, Damien has emailed clinician, they are switching to uLMS treatments.\n\n\nSample meeting with Clare 16.11.2023\nPlan on S1: Send snap frozen for WGS (note FFPE block from fresh tissue as same tumour purity and distribution) YES \n\n06.10.2023, FFPE block 1A received. Histology tried to cut but not much tissue was left. \nSFRC admin and Haris contacted to try to recall an other block from the same biopsy (1B)";
      urgency_details = "As per treating clinician 11Dec2023. BM";
      d_case_summary = "Cancer of female genital organ\nLiver Bx: HG malignancy, likely endometrial primary\nLung Bx: ?sarcoma - R/V pending";
      tumour_type = "uLMS";
      tumour_details = "Diagnosis updated to uLMS based on WGS results 18Dec2023. \nPrevoiusly:  ?HGSEC, cancer of female genital organ. New path uterine sarcoma, could be uLMS or ESS";
      case_details = "57 years old  \n\n2023-05\tIntial diagnosis, liver biopsy FIGO stage IVB \n\nIHC negative: CKAE1/AE3, CAM5.2, CK7, CK20, CD56, synaptophysin, \t\t\tchromogranin, Heppar1, PAX8, GATA3, ER, SOX10, CDX2, TTF1, CD30, P63, CD45, \t\tMUM1, CD34, CD38, Cyclin D1, P53(null type), WT1 \n\nIHC positive: CD138, CD117, kappa, Lamda, CD56 and GATA 3 weak \n\nER 1+/2+ in 20% of tumour cells. Retained staining for MLH1, MSH2, MSH6, PMS2  \n\n2023-06\tcarboplatin/taxol x2 \n\n2023-09\tlung biopsy, received block  1A (Histology tried to cut but not much tissue was \t\tleft. SFRC admin and Haris contacted to try to recall an other block from the \t\tsame biopsy (1B) \n\nSpindle cell  \n\nIHC positive: SMA \n\nIHC negative: : CKAE1/AE3, CAM5.2, desmin, calretinin, CD34, P63, Sox10 \n\n2023-09\tBlood B1 received \n\n2023-10\thysterectomy, fresh tissue S1 received \n\nIHC positive: SMA, CD10, caldesmon, desmin, HMB45, INI is patchy weak  \n\nER is 1+ in 30% and PR is 1+in 2% \n\nIHC negative: PAX8, AE1/AE3, Cyclin D1, CD34, Myogenin, S100, malen A, BCOR, PAN_TRK. \n\nDx - high grade sarcoma. Still don't know if ESS or PeCOMA, or even uLMS. \n\nDec 2023- diagnosis amended to uLMS based on WGS data. ";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "20Sep23: 02Aug23sample requested from Australian Clinical Labs by Haris\n4Oct23:02Aug23 sample received from Australian Clinical Labs by Haris\n08Nov2023- 02Aug2023 block 1B requested from Aust Clinical Labs by Briony (fax).";
    };
    inherit samples;
    name = "SFRC01825";
    disableManta = true;
  }
