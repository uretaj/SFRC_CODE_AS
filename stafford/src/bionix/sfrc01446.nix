with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KF/8z/SHA256E-s4544175527--88227f25b1eb37a746a1a01ca988c079da3b967aa3ca2578fc6a869b20ef45c4.gz/SHA256E-s4544175527--88227f25b1eb37a746a1a01ca988c079da3b967aa3ca2578fc6a869b20ef45c4.gz";
      r2 = "QQ/3z/SHA256E-s4395526705--49a28f76ac873866e3890bbb33f40faf6baa3fc0fef679be784737648188b23f.gz/SHA256E-s4395526705--49a28f76ac873866e3890bbb33f40faf6baa3fc0fef679be784737648188b23f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0P/j5/SHA256E-s1714544512--62a43d8f6d701d84f5ae3d7de7fef3622f244c147c6f99727ee188c9a18bca29.gz/SHA256E-s1714544512--62a43d8f6d701d84f5ae3d7de7fef3622f244c147c6f99727ee188c9a18bca29.gz";
      r2 = "64/V8/SHA256E-s1824005820--792ce862d2140aab67e96433bc4df5042b5fd1d07d7703e34b8152890daadfbf.gz/SHA256E-s1824005820--792ce862d2140aab67e96433bc4df5042b5fd1d07d7703e34b8152890daadfbf.gz";
    }
    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "Q9/XP/SHA256E-s15235655508--cbbe677069d22a1226bb90ff854411ec601086bc100a1ec65f3a1e192e38a0d1.gz/SHA256E-s15235655508--cbbe677069d22a1226bb90ff854411ec601086bc100a1ec65f3a1e192e38a0d1.gz";
      r2 = "86/Q2/SHA256E-s13990899254--6a9ac17ae36d0508910074aedab88f571189a6df64825d11ecfb50be50f609b2.gz/SHA256E-s13990899254--6a9ac17ae36d0508910074aedab88f571189a6df64825d11ecfb50be50f609b2.gz";
    }
    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "Pk/F4/SHA256E-s6553690397--4634fd35da108068b3a74a04c0064109a499b6bd21a7e766cf81922c918779f4.gz/SHA256E-s6553690397--4634fd35da108068b3a74a04c0064109a499b6bd21a7e766cf81922c918779f4.gz";
      r2 = "vx/W4/SHA256E-s6731502974--9aa1fcc3c8bf94b223790417032c84bc580c21e860ec9dd01387e015253a5948.gz/SHA256E-s6731502974--9aa1fcc3c8bf94b223790417032c84bc580c21e860ec9dd01387e015253a5948.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0005";
      meeting_discussions_follow_up = "Clare's meeting 24.02.2022\nDo WES on all FFPE blocks (Asha/Kristy)\n\n01Feb2022- Trisha has no frozen tissue unfortunately. BM\n\nBROCA meeting 21.01.2022\nFor Briony: HGSOC Dec 2017 - please ask Tricia if she has any more fresh tissue which has tumour in it. Ours did not. Hers might?? for WGS. thank you. Amandine, please do BROCA on the HGSOC.\nUse block 1N\n\nRC meeting 20.12.2021\nAsha and Jocelyn to take this case offline and make sure WES is organised, once done bring back for discussion. \n\nClare's meeting 02.12.2021\nClare to give an update on what to do with this case. Patient on FOLFOX, PET was on Monday.  \nNo change in the PET after 6 cycles of FOLFOX - no response, but not bigger. \nWaiting to see if surgery is the next step \nWant another set of bloods - seeing Clare 7th Dec. PBMC are important \nBlock 1N and 1M: Kristy to organise WES. Asha to be involved/know about \nAsk Warren to Recall breast block (even though is from 2002) \n\nClare meeting 2021.09.24\nNo tumour in S1: Waiting to finish NACT, then will get tumour at surgery. Hoping for no tumour.\n\nMeeting with Clare discussion 10.09.2021\nPancreatic biopsy, 0%tumour. Maybe make DNA from all tissue/OCT. Then do BRCA2 PCR (Kas? Or Cass). She is gBRCA2 \nPath review from Peter Mac? Have to bring up with Clare later. \n\nMeeting discussion in project meeting 19.08.2021\nIf enough tumour DNA and have germline, get WGS. If not, prioritise tumour DNA sample for BRCA2 reversion testing co-ordinated through Kas. ";
      myriad_report = "SFRC01446_MyriadResult_26Jan2023_Redacted.pdf";
      date_of_death = "04/2023";
      d_case_summary = "79 yo PHx Breast cancer BRCA2 mutation carrier; Dx Fallopian tube ca on SOLACE2 > 2 years\nIn complete remission; now small lesion in uncinate process of Pancreas - likely pancreatic cancer\nLooks likely curable. For EUS with Biopsy 11/8/2021 then Review on 18/8 in MDM ? for curative surgery;\nCollect biopsy for sequencing (at least BRCA2 reversion) on 11/8; If has surgery then for WGS; attempt PDX";
      tumour_type = "HGSOC";
      tumour_details = "Breast BRCA2 (2002), Fallopian tube (HGS) (2017), Pancreatic (?) 2021.";
      case_details = "79 years old   \n\n09-2002:\t breast cancer: mastectomy, ER, PR and ERB2 neg \n\n2017:HGS (FT) 4 cycle of chemo (neoadjuvent treatment) \n\n2018: Familial Cancer Panel: BRCA2 mutant  \n\n2021:Pancreatic. Fresh Biopsy received \n\nAdenocarcinoma. Insufficient cell block material for immunophenotyping. \n\n\n For EUS with Biopsy 11/8/2021 then Review on 18/8 in MDM ? for curative surgery; \n\nCollect biopsy for sequencing (at least BRCA2 reversion) on 11/8; If has surgery then for WGS; attempt PDX ";
      pre_analysis_mutations = "Low myriad score: 32 (but has  large chromosome-arm level LOH which likely explains this anomaly)\n";
      brca_report = "SFRC01446_FCPanelReport_23May2018_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA2) score 32 (which is  negative)";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2017 samples received by Warren 9/11/21";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_germline_mutations = "BRCA2";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01446";
    predictNeoantigens = true;
  }
