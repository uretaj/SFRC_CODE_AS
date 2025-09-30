with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "z0/kz/SHA256E-s11134770314--733bcd4cd6f67320c522281499ed72ba0f1343f24fb71e88589a6b0f4b51b215.gz/SHA256E-s11134770314--733bcd4cd6f67320c522281499ed72ba0f1343f24fb71e88589a6b0f4b51b215.gz";
      r2 = "QX/X1/SHA256E-s11218032348--7d2c77ac1bceb50fb4bac9671e1566cc83baec69317227bab9bf5c88fbe8d3c5.gz/SHA256E-s11218032348--7d2c77ac1bceb50fb4bac9671e1566cc83baec69317227bab9bf5c88fbe8d3c5.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jk/xW/SHA256E-s3281844065--6e63fa3e62532ca06737daf78eb6416c4cc384cea817f52d8f45702f9f820741.gz/SHA256E-s3281844065--6e63fa3e62532ca06737daf78eb6416c4cc384cea817f52d8f45702f9f820741.gz";
      r2 = "xf/wM/SHA256E-s3312621214--d9170ea864832f842458756dbd8c51baf23e71c877e1c64879b5b849db05fd14.gz/SHA256E-s3312621214--d9170ea864832f842458756dbd8c51baf23e71c877e1c64879b5b849db05fd14.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 22.07.2021\nDiscussed WES results.\nPurity 0.79, TMB 17, less than 20 so \"Not High\". \nPMS2 germline (is benign). STK11 (benign) (STK11 common mutation in SCTATs). \nSomatic MYC, TRRAP, NIPBL - too low \nMYC raw HF 0.07; TRAP 0.02; NIPBL 0.02. All have purity-adjusted HF < 0.09  \nTop COSMIC gene mutation is FAT4 but it has no ClinVar entry \nCDKN2A homozygous deletion - palbociclib or paclitaxel? \nNo FOXL2 mutation! There were ZBTB7A, ZBTB4, ZBTB22, which can be linked to FOXL2 WT cases, but they had very low frequencies. \n\nMeeting notes 22.04.2021\nSFRC01070_2D\nBlock from 18/11/2020. No analysis done for SFRCP \nTo do WES? Yes \n\n03.12.2020\nBlock 2D Gayanie's review: Purity 55-60% \nWe do not have blood or other tissues. \nPlan: Is remote patient (Brisbane). Asking for blood (if not deceased).  If deceased, need normal tissue block. To do WES - do extraction after  \n\nRedcap meeting Clare/Amandine 16.03.2020\nGet Briony to chase up path report. Once found ask Josh to recall a block.\n\n20-2-20: Gen Following up with Simon Chu as to whether they have this sample\n\n";
      d_case_summary = "58/F with recurrent granulosa cell tumour diagnosed in 2012. No adjuvant therapy with rising inhibin levels from July 2014. She had 4 courses of BEP chemotherapy after removal of lesions (vaginal vault nodule and small infarcted epiploica. August 2017 - single site recurrence in the right iliac fossa closely associated with the caecum. This was resected. Not on any systemic therapy currently (as of Feb 2018). Patient is alive as of 10 Dec 2020 and will have bloods done on 18 Jan 2021 in QLD.";
      date_consented = "2018-02-26";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Recurrent granulosa cell tumour diagnosed in 2014; 1st recurrence July 2014 Rx 4 courses of BEP + removal of lesions; 2nd recurrence August 2017Rx resection";
      case_details = "History and Treatment\n-\t29/8/2012: diagnosis, surgical resection (one ovary?), no adjuvant therapy\n-\t17/7/2013: Full hysterectomy (TAH, other ovary, cervix, adnexae)\n-\t17/7/2014: recurrence - rising inhibin levels (Rx: resection of lesions (vaginal vault nodule and small infarcted epiploica), 4 cycles of BEP (bleomycin, etoposide, cisplatin ended 23/1/2015))\n-\tAugust 2017: recurrence (regional) - right iliac fossa closely associated with the caecum (Rx: resection 21/11/2017)\n-\t19/3/2018: recurrence (regional) - bowel (descending colon)\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2017 GCT tissue requested a/p Gen, via email from SNP on 9/10/2020 by Josh\n2017 GCT tissue block 2D received by Warren on 18/11/2020";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01070";
  }
