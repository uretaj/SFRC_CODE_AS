with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0f/wK/SHA256E-s5059526637--1ca13a206fb9e215ed77cebcd98ce2a699a88e173e4d56e3fc79ab60ea89e582.gz/SHA256E-s5059526637--1ca13a206fb9e215ed77cebcd98ce2a699a88e173e4d56e3fc79ab60ea89e582.gz";
      r2 = "JZ/G5/SHA256E-s5339693292--db0c8505a9e8d79bd608b3728f89a5eaa85172e190a1197cbc0acbd271b667d8.gz/SHA256E-s5339693292--db0c8505a9e8d79bd608b3728f89a5eaa85172e190a1197cbc0acbd271b667d8.gz";
    }
    {
      site = "B";
      class = "tumours";
      pdx = false;
      r1 = "w8/PG/SHA256E-s17335938556--ac3523a64f2c8c696a2de6487fffeb4ab4db9cb2885497f2c3f713911bb0748c.gz/SHA256E-s17335938556--ac3523a64f2c8c696a2de6487fffeb4ab4db9cb2885497f2c3f713911bb0748c.gz";
      r2 = "qQ/49/SHA256E-s17535582339--39365f9102ed2badf5c2edf6f9132d84df1bf073f3ed735784c23ba502d1e29b.gz/SHA256E-s17535582339--39365f9102ed2badf5c2edf6f9132d84df1bf073f3ed735784c23ba502d1e29b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 18.05.2023\nDiscussed WES report (FFPE Block B)\n-LGSOC desert; TSO500 report also found nothing.\n-MAPK abnormality? \n -RASA2 - 8% (Splice donor variant-Andrew to look \n  into further) Not in COSMIC. \n -Andrew to also look into RAS1B in this case as is \n  not in the report\n-Purity of sample uncertain \n-CN plots hazy/messy--impure sample. CN fit is bad, there are no small CNV events, however calls are fine, even if close to CN 'noise'.\n-PT on BGB283 for a couple of years and doing okay. \n\nClare, Ratana, Rae, Briony 08.02.2023\nOCT Block S1-A has no tumour, FFPE of S1 has tiny areas of tumour. Cut OCT Block S1-B in case there is tumour in there. If no tumour, submit FFPE Block B for WES. Have mince for this S1, might be a good candidate for new LGSOC PDX approach. \n\nClare's Meeting 06.09.2022\nPlan: Contact patient to see if she needs a biopsy so can do WGS (priority).\n\nAsk Damien, send email, ask him about the Portal Fellows in meeting if biopsy is possible, if clinically urgent.\n\nCould do WES on Block B, blood coming.  ";
      blood_recall_history = "01Sep22 - Email listed as prof contact, email sent to ask for blood\n01Sep22 - Email confirming happy to have bloods, replied to ask for clinic and day. \n08Sep22 - Called DNA message left\n12Sep22 - Called DNA message left\n16Sep22 - Call and email to ask for time to organise bloods\n20Sep22 - Blood pack sent\n20Sep22 - called Path DNA\n\nWhen I call back ask if she is having a biopsy soon - No upcoming biopsy.\n";
      d_case_summary = "Stage IV - LGSOC fresh biopsy for WGS priority dx 19/09/2019\n\nNo reportable mutations on MOST screening\nprevious PR to1st line chemotherapy and Bevacizumab\nPD on endocrine therapy\noptions for trials or subsequent therapies?\n\nTreatment \n-  23Aug2021 Bevacizumab\n- 14Jan2021-01July2021 Zoladex   letrozole\n- 08Nov2019-03Nov2020 Carboplatin   paclitaxel   Bevacizumab X 6 -> maintenance Bevacizumab\n\ntissue was not sent for diagnostic pathology - no report available.";
      date_consented = "2022-06-29";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "32F\n\n2019-09: Diagnosed Stage IV LGSOC with pelvic bony, lung, and subcutaneous nodal metastases.\nSurgery. Tissue fixed and blocked ('right lower chest mass' Block B)\n-IHC positive: Ck7, MOC31, PAX8, WT1, ER\n-IHC negative: CK20, TTF-1, thyroglobulin, mammoglobin, calretinin\n-p53: wild type staining\n-GATA3: stains rare focal cells\n\n2019-11 - 2020-11: Carboplatin paclitaxel bevacizumab x6 cycles, then maintenance bevacizumab. \n\n2020-10: MoST tumour board report: TSO500 found no reportable mutations.\n\n2021-01 - 2021-07: Zoladex letrozole\n\n2021-08: Commenced bevacizumab\n\n2022-08: FFPE block B from 2019-09 surgery received. \n\n2022-10: Blood B1 received.\n\n2022-12: Fresh Tissue S1 received (Ovary/serous surface papillary carcinoma from right medial breast). Tissue not sent to pathology for diagnostic review. No tumour.\n\n2022-03: FFPE Block B DNA sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01618_ARCPortalLetter_29Jun2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "28/07/2022: 2019 sample requested from DHM pathology by Devindee.\n06/08/2022: 2019 sample block received by DHM pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01618";
  }
