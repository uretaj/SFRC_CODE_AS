with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "15/X7/SHA256E-s16850037355--462dfc4fc434597ea5775f0579135f6a1a891bbcd3c2c20be79ad08eff0c9784.gz/SHA256E-s16850037355--462dfc4fc434597ea5775f0579135f6a1a891bbcd3c2c20be79ad08eff0c9784.gz";
      r2 = "0P/9w/SHA256E-s16998026384--43d583035a29819fc867eb4c77cab907b9c65f3862f2a3fad1f9652603f168fe.gz/SHA256E-s16998026384--43d583035a29819fc867eb4c77cab907b9c65f3862f2a3fad1f9652603f168fe.gz";
    }
    {
      site = "EH1";
      class = "normals";
      pdx = false;
      r1 = "qz/V8/SHA256E-s17281522526--37b60a18d5e65090d6ad05ea90b3643bd82b71277663e8ddb3ee94e4cb18853c.gz/SHA256E-s17281522526--37b60a18d5e65090d6ad05ea90b3643bd82b71277663e8ddb3ee94e4cb18853c.gz";
      r2 = "4M/42/SHA256E-s17255857934--4027c2b4553495a52183f32799a6f293495312b6e15a935b38dccf86ce319968.gz/SHA256E-s17255857934--4027c2b4553495a52183f32799a6f293495312b6e15a935b38dccf86ce319968.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      eh_process_contact = "Rachael Taylor";
      meeting_discussions_follow_up = "Clare, Rachael, Ratana 30.09.2022\nSend Block A2 only for WES. Leave A14 until A2 sequencing is reviewed. \n\nClare's meeting 19.05.2022\nBROCA and WES on FFPE blocks A14 and A2 \nNanostring (July sample pre-Gemcitabine (Block A14, or both--Kristy to decide.) \nNeed blood (Mandy) - Have called, progressing  \n\nBROCA meeting Clare/Amandine 04.03.2022\nDevindee has been emailed to recall a FFPE block from both the TAHBSO 2017/06 and the recurrence in 2020-04. Mostly interested in the recurrence. \n";
      eh_specimen_id = "SFRC01489_EH1";
      blood_recall_history = "Eyebrow kit instead of bloods, patient in and out of contact (short version of contacts below)\n\n03Jun22 - First contact\n12Jun22 - Eyeborow kit sent\nNumerous follow up in between\n09Aug22 - Follow up text sent - been unwell\nNumerous follow up in between\n16Aug22 - New kit sent \nNumerous follow up in between\n09Sep22 - Text correspondence - hopefully posting pack today.";
      d_case_summary = "Platinum resistant high grade serous ovarian cancer, exceptional response to single agent gemcitabine (now possible CR) despite oligometastatic disease with large liver metastases.";
      date_consented = "2021-11-17";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      eh_contact = "Mandy Lobley";
      case_details = "2017-07: Diagnosis of malignant neoplasm of ovary stage IIC, later Diagnosis of platinum resistant high grade serous ovarian carcinoma, germline/somatic BRCA wild type, PDL1 1%, INOVATe profiling: TP53 variant\n\n2017-06: Surgery- Hysterectomy, BSO, pelvic LND, excision of POD peritoneum. Serous carcinoma involving L ovary/tube, left pelvic side wall, serosa of uterus, Pouch of Douglass, right ovary. \nTreatment- Adjuvant carboplatin/pacitaxel x6 (completed 2017-11)\nLeft ovary fixed and blocked (Block A14)\n\n\n2017-09: BRCA1/2 mutations not detected\n\n2020-03: recurrence of HGSOC. Underwent 2ndary debulking surgery followed by carboplatin, caelyx 6 cycles and bevacizumab (last cycle 2020-11)\nTissue from Pouch of Douglas rectal mass fixed and blocked (Block A2)\n\n2020-05: IHC performed on Pouch of Douglas rectal mass and right pelvic side wall peritoneum:\nER: (5% tumour nuclei showing positive staining of moderate intensity)\nPR: negative \n\n2021-01: Pelvic external beam radiation\n\n2021-03: hepatic recurrence on PET\n\n2021-06: commenced gemcitabine and bevacizumab\n\n2021-07: IHC performed on Pouch of Douglas rectal mass and right pelvic side wall peritoneum:\nPD-L1: (clone SP263 optimised for lung malignancy was used, although not validated for ovarian carcinoma)\nTPS: <1%A\nCPS: 1\nIC%: 1%\n\n2020-08: BRCA testing, no pathogenic variants detected\n\n2021-06: received 3 line gemcitabine+bevacizumab \nlot of toxicity but unexpected very good response \n\n2022-04: Blocks A14 and A2 received.\n\n2022-06: DNA from FFPE blocks A2 and A14 sent for BROCA: \nA2 (Pouch of Douglas rectal mass):  \nSomatic TP53 - substitution, c.733G>A, p.G245S, 79.2% \nCNV MYC - whole gene amplification, CN 100 \nCNV KRAS - whole gene amplification, CN 6 - Borderline amplification \n\nA14 (Left ovary):  \nSomatic TP53 - substitution, c.733G>A, p.G245S, 92.3% \nCNV MYC - whole gene amplification, CN 106 \nCNV KRAS - whole gene amplification, CN 9 \n\n2022-09: Eyebrow hairs EH1 for germline DNA received\n\n2022-11: DNA from EH1 and FFPE Block A2 sent for WES";
      brca_report = "SFRC01489_BRCAReport_17Jun2020_Redacted.pdf";
      eh_gdna_prep = "yes";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      eh_received_date = "2022-09-14";
      receipt_eyebrow_hairs_complete = "Complete";
      block_recall_history = "10/03/2022: Apr 2020 sample block requested from NSW Health Pathology by Devindee (unavailable at this lab)\n10/03/2022: 2017 sample block requested from Royal Hospital for Women Pathology by Devindee\n23/03/2022: 2017 block received from Royal Hospital for Women NSW Health Pathology by Devindee. \n06/04/2022: 2020 sample requested from Prince of Wales Hospital Pathology by Devindee. \n22/04/2022: 2020 block received from Prince of Wales Hospital Pathology by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01489";
    capture = CREv2;
    enableQC = true;
  }
