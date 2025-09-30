with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "xV/0K/SHA256E-s24538958741--73dadd0074470ec969cbd2e9164bdd6c4a26c5925c53c5c5165d00861e675b56.gz/SHA256E-s24538958741--73dadd0074470ec969cbd2e9164bdd6c4a26c5925c53c5c5165d00861e675b56.gz";
      r2 = "83/j1/SHA256E-s25411315715--2894013427943803bbfce15b128f7d1c77003b9c452a6e322601eea0fc9541a1.gz/SHA256E-s25411315715--2894013427943803bbfce15b128f7d1c77003b9c452a6e322601eea0fc9541a1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8z/4v/SHA256E-s6590095870--972b3025499513f49cce7f24ccaa8202a9c55fb8065ec02df84b1fd47e1e423a.gz/SHA256E-s6590095870--972b3025499513f49cce7f24ccaa8202a9c55fb8065ec02df84b1fd47e1e423a.gz";
      r2 = "K0/99/SHA256E-s6797991446--90408ff80c65140bba3a2178b25a9e334cec01fd0cf0ef043e92f5c6bb6c089c.gz/SHA256E-s6797991446--90408ff80c65140bba3a2178b25a9e334cec01fd0cf0ef043e92f5c6bb6c089c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 15.12.2022\nDiscussed WES report:\nDiscussion: Consistent with uLMS but nothing is actionable. \nIssue report: Y, high urgency.\n\nClare's meeting 19.05.2022\nDo WES on FFPE block 1L";
      date_of_death = "11/2022";
      d_case_summary = "49yo with met uLMS";
      date_consented = "2021-11-19";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "48yo woman, metastatic uLMS\n\n2002-06: DCIS of the breast. Surgery x2 left and x1 right breast lumpectomy - Recurrent, most recently March 2019.\n\n2021-02: Leiomyosarcoma of body of uterus. Surgery: TAH/BS. Uterus tissue fixed and blocked (Block 1L)\nIHC positive: desmin, smooth muscle actin, p16, ER (50% 2 - 3+), PR (10%, 2 - 3+), DOG1\nIHC negative: C-kit, CD10, p53, S-100, cyclin D1\n\n2021-04 - 2021-05: Radiation Pelvis: 48.6 Gy/ 30# (adjuvant)\n\n2021-09: (R) lung biopsy. Diagnosed undiff'd HG spindle cell malignancy\nIHC: weak focal SMA & DOG1. Weak KIT, unsure if tumour or inflammatory. \nIHC negative: desmin, HMWCK/34BE12, p40. TTF1, S100, ER, melan-A, HMB45, myogenin\n\nSOD (PET 18/08/2021): lung, liver\nLiver lesions lower avidity than lung\n\nIHC performed on slides from hysterectomy from 2021-02: \nStrong desmin, p16 staining, ER wk/60% / PR wk 30%, faint DOG1\nIHC negative: KIT, CD10 S-100\n\nPertaining to both uLMS and lung biopsy: lack of expression from RB1, PTEN, ATRX \n\n2021-11: Somatic BRCA test (PMCC): No pathogenic variants detected.\n\n2022-03 - 2022-04: Radiation: (R) chest / liver.\n\n2022-04: Commenced DOXOrubicin \n\n2022-04: sections from block 1L received. Blood B1 received.";
      brca_report = "SFRC01484_BRCA_Somatic_Test_Sep21_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "13/04/2022: Feb 2021 sample requested from AnatPath by Devindee.\n22/04/2022: Feb 2021 block and slides received from Anatpath by Devindee. ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01484";
    capture = CREv2;
  }
