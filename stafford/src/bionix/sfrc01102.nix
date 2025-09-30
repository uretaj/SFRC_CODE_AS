with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01102-B1_S3";
      suffix = "_001";
      sha256-1 = "4bbf215f73dd7ddc2401e4a2f495cab076eaf9eba3e0559a8b32ec6612a9819c";
      sha256-2 = "33f591b619e19f94af6deaf0efb39eaa345572912cbad736f82556039bb83eab";
    }
    {
      site = "12C7059_1A";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01102-12C7059_S4";
      suffix = "_001";
      sha256-1 = "d1b2ae64878499639c9e78f79d532174868e210e38a78838431218de1f51c485";
      sha256-2 = "a776cce9a8c7c5ae5dba0d79e6a28cadf0e2e4b4e8c4d610e9a01de3d04b5b46";
    }
    {
      site = "11C9688_1A";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01102-11C9688_S5";
      suffix = "_001";
      sha256-1 = "06864991ed8914fb98874937378606e9f8f14e680601095f244b9bd0b048cf31";
      sha256-2 = "6dee199a837d613fd316830532640ea02e51431e0925547830a3d9c6cb844a70";
    }
    {
      site = "13C6258_1B";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-02-11/SFRc01102-13C6258_S6";
      suffix = "_001";
      sha256-1 = "04e3340e1357b183927db6c4865454b873fa1941c0dc8160c91544762d24428d";
      sha256-2 = "b34b7ca09d92a819a47dc5ea1bfd118573111abe9b827c65c697b521d0bd289e";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2021.08.26\nSFRC01102_1E: Keep as a back up material for Immune analysis (OPAL, Nanostring, MIBI, Vissium?), same tumour as existing block.  \n\nMeeting notes 09.04.2020\nMid priority case (Super responder project). Patient deceased, no rush. \nPath reviewed 19-9-2019\nWES completed on Primary and 2x Mets (27-2-2020) - not many PBMCs available (0.5M?) \nFoundation 1 - TP53, APC and FAM123B mutations, EGFR and FGFR1 amplification \nWES - not curated (Saw TP53 and APC mutations - KSA). Needs curation by Justin for neoantigens - pass this project on to Asha for side project while SOLACE is paused (kristy to coordinate)\n\nMeeting notes 30.03.2020\nMid priority case (Super responder project). patient deceased, no rush.\nHave DNA and blood. Want to do WES on best one.\nPath reviewed? Need histology (if they are open)\nNow Rare Molecular Subtype\n\n2020.04.03 (Kristy note)\nWES completed for this case. Results for germline, primary and 2x mets available. ";
      date_of_death = "09/2019";
      date_consented = "2018-08-13";
      tumour_type = "Bowel cancer";
      tumour_details = "CRC super responder";
      case_details = "Male in his late 50's \n2011 - Resected colorectal ca (adenocarcinoma with lymph node metastasis)) - adjuvant chemo (we received a block 1A) \n\tPositive: MLH1, MSH2, MSH6, PMS2 \n2012-06 - Liver met resected (histo report) (we received a block 1A, used for opal control) \n\tPositive: CK20  \n        Negative: CK7 \n2013-06 - Lung mets x2 resected (histo report); 6 months of irinotecan (we received a block 1B) \nPositive: CK20  \nNegative: TTF1 (can't read properly, need to double check) \n2015-08 - Pre-sacral recurrence and LUL (equivocal for malignancy) and left hilar (left pararectal biopsy 7/2015) treated with RT (6/52) (completed 9/2015) à irinotecan (fortnightly) + capecitabine  \n2016-03 - PET: new liver met, left pararectal PD, new pancreas, LUL, left hilar LN. Commenced cetuximab following genomic report.  \n2016-07 - 4 months of iriniotecan (fortnightly)+cape+cetux (weekly). PET: mixed response \n2018-06-20 - PET-CT: On chemo+cetux; rising CEA: small anastomosis recurrence; progression sacral met; new L5 (27mm), slightly more avid pancreatic tail lesion; left hilar LN and pulmonary mets mild PD. REVIEW Continues on capecitabine + irinotecan (fortnightly) + cetuximab (weekly) since \n 2016-07  Consented to SFRC  \n\nReceived cetuximab for EGFR amplified CRC. Effectively had a super-response to cetuximab and stayed on treatment for ~ 3 years. Clare can get more letters from his doctor. Died in Sept 2019. \n\nCan we identify functional neoantigens from his primary and lung metastases. This is NOT a multiple primary case. \n\n30.03.2020 Foundation 1 Report:  \nEGFR amplification  \nFGFR1 amplification \nAPC mutation \nFAM123B mutation \nTP53 mutation \n___________________________________________________\nReceived cetuximab for EGFR amplified CRC. Effectively had a super-response to cetuximab and stayed on treatment for ~ 3 years. Clare can get more letters from his doctor. Died in Sept 2019.\nCan we identify functional neoantigens from his primary and lung metastases. This is NOT a multiple primary case.\n30.03.2020 Foundation 1 Report: \nEGFR amplification \nFGFR1 amplification\nAPC mutation\nFAM123B mutation\nTP53 mutation";
      patient_information_complete = "Incomplete";
      bowel_tumour_type = "colorectal cancer with lung metastases";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2012 block received by Warren 17/8/21";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01102";
    capture = CREv2;
    predictNeoantigens = true;
  }
