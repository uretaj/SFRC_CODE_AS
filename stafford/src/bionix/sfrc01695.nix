with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "f4/V1/SHA256E-s11458954675--9cf0c5869144ef09693269eecce8b140d9c20e2edab0b37e753f7d6774a83225.gz/SHA256E-s11458954675--9cf0c5869144ef09693269eecce8b140d9c20e2edab0b37e753f7d6774a83225.gz";
      r2 = "2Z/XZ/SHA256E-s11723404859--13c3fba1c7b21004658a2939a159380996307d5242ab3dc2a055bcd5e3943295.gz/SHA256E-s11723404859--13c3fba1c7b21004658a2939a159380996307d5242ab3dc2a055bcd5e3943295.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "XJ/Z3/SHA256E-s5410072882--1ce1a78c0ff8817e8e5600954352dfa9a3452a6c572e26fd5e3b0565be007b51.gz/SHA256E-s5410072882--1ce1a78c0ff8817e8e5600954352dfa9a3452a6c572e26fd5e3b0565be007b51.gz";
      r2 = "FX/M6/SHA256E-s5509502145--1ffe5dbd4c1a96678d204473440f1f7983e363d2bc9768e023e7563221386f56.gz/SHA256E-s5509502145--1ffe5dbd4c1a96678d204473440f1f7983e363d2bc9768e023e7563221386f56.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Paul James Meeting 21.07.2023\nA good idea to submit to shariant as we don't have a clinical follow up process. Not a huge concern but worth noting. FCC referral not needed. Useful to have on the research report as a VUS.\n\nRC Meeting 22.06.2023\nDiscussed WES report:\n-gPMS2 referred to genetic counselor - Mandy to chase up with Clare.\n-Classic ATRX, TP53, RB1 deletion seen in uLMS\n-High Sig6; no Sig3. \n-Chr19 consistent with HRD, but has selection on it. Most events are chromosome arms.  \n\nClare's Meeting 23.03.2023\nNoted as Urgent case. Lots of mets, no sequencing.\nDo urgent WES on Block 1Q (submitted 03.05.2023)";
      d_case_summary = "Diagnosis- Metastatic Uterine Leiomyosarcoma of the Uterus\n\nA 59 year old lady initially diagnosed with a Stage IIIB epithelioid uterine leiomyosarcoma. \n\nApril 2020 - laparoscopic modified radical hysterectomy, BSO and debulking of tumour adherent to the sigmoid colon and filling the Pouch of Douglas. The tumour was 185mm poorly circumscribed with serosal involvement, no cervical or tuboovarian involvement , no LVSI, clear margins and negative washings. \n\nJune 2020 - She received adjuvant pelvic radiotherapy\n\nJanuary 2021 - right upper lobe lung mestastasis which was resected in March 2021. \nFeb 2022 - right humeral head met in observed, \nJune 2022 - a further right lower lobe metastasis treated with stereotactic radiotherapy to both lesions which completed in August 2022. \nNovember 22 - PET scan has shown response in the treated lesions but now a new lesion in the left third rib which she is not symptomatic of and also low grade avidity in a few small pulmonary nodules suugestive of early metastatic disease. \n\nCurrently not symptomatic of any of these lesions and there is no structural correlate of the rib lesion on CT.\n\ntumour is ER 75%2-3  and PR 5% 1-2 , so hormonal therapy is also not unreasonable as long as the disease burden remains low.";
      date_consented = "2022-12-16";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "59F, Stage IIIB epithelioid uLMS\n\n2020-04: Surgery: Hysterectomy, BSO, debulking (Block 1Q - myometrial mass)\nIHC positive: ER (2-3+, ~75%), PR (~5%, 1-2+), SMA, desmin, H-caldesmon, HMB-45 (patchy), MITF (patchy)\nIHC negative: MNF116, CD10, AE1/3, EMA, S100, Melan A, synaptophysin\n\n2020-06: Completed radiotherapy\n\n2021-01: Dx lung metastasis\nSurgery: Resection\n\n2022-02: Dx brain metastasis\n\n2022-06: Dx lung metastasis\n\n2022-08: Completed radiotherapy on brain and lung mets.\n\n2022-11: Dx early metastatic disease in rib.\n\n2023-02: Blood B1 received.\n\n2023-03: Sections from FFPE Block 1Q received and sent for WES. \n";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "20Feb23: April 2020 sample requested from Epworth pathology by Monica\n1Mar23: April 2020 sample received from Epworth pathology by Monica";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01695";
  }
