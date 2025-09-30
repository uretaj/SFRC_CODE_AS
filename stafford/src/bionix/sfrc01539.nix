with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "67/Gf/SHA256E-s11036051244--006902cf2fd05def35cbddfb15ba096a9464e2ba338c9cfb323ceb907bb43316.gz/SHA256E-s11036051244--006902cf2fd05def35cbddfb15ba096a9464e2ba338c9cfb323ceb907bb43316.gz";
      r2 = "GM/XQ/SHA256E-s11629088977--78f3628f63d5839a007a84e8613c3c8151e26d97af6b9085b7fe6457f0985b24.gz/SHA256E-s11629088977--78f3628f63d5839a007a84e8613c3c8151e26d97af6b9085b7fe6457f0985b24.gz";
    }
    {
      site = "EH1";
      class = "normals";
      pdx = false;
      r1 = "KM/5Q/SHA256E-s5632342056--dfbeb721de3c92b826a87ef6b2f01f537400c68e734bf6248d662ac0611ff534.gz/SHA256E-s5632342056--dfbeb721de3c92b826a87ef6b2f01f537400c68e734bf6248d662ac0611ff534.gz";
      r2 = "v5/V1/SHA256E-s6300805026--2ffc3e849dee9f4a71a4087256403f80922cade418190a4fc84d9f6bb83a4fa3.gz/SHA256E-s6300805026--2ffc3e849dee9f4a71a4087256403f80922cade418190a4fc84d9f6bb83a4fa3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      eh_process_contact = "Rachael/Ratana";
      meeting_discussions_follow_up = "RC Meeting 11.05.2023\nDiscussed WES report\nEyebrow hair potentially inflating TMB. Follow up with Sean's lab about germline saliva samples.\n\nClare and Rachael meeting 06.05.2022\nBRCA assay, WES later when up and running again.\n";
      eh_specimen_id = "SFRC01539_EH1";
      blood_recall_history = "July22- decided to consent to the program, sadly deteriorated and passed away mid July and have provided eyebrows for testing. No blood available  \n\n10Jun22 - Called to assist with withdrawal and she is unsure if she would like to, will discuss with oncologist this week.\n\n07 Jun 22 Called to organise bloods would like to withdraw from the study.";
      date_of_death = "07/2022";
      d_case_summary = "metastatic uLMS with multiple lung metastases. 80mm high grade sarcoma invading more than 50% of myometrium and into parametrium. First diagnosis 25Nov21 and TAHBOC. Non smoker, Father had oesophageal cancer, mother had lung cancer\n\nHistological Rest results - Mitotic rate 22 per 10hpf. IHC positive SMA, desmin (patchy), CD10, Cyclin D1 (focal <50%). IHC negative AE1/AE3, EMA, Caldesmon, ER, PR, CD34, CD117, HMB45, AKL1, S100\n\nMoST referral sent. Tentatively booked for first line gemcitabine and docetaxel chemotherapy.";
      date_consented = "2022-02-14";
      tumour_type = "uLMS";
      tumour_details = "Metastatic uLMS with multiple lung metastases.  80mm high grade sarcoma invading more than 50% of myometrium and into parametrium.";
      eh_contact = "Mandy Lobley";
      case_details = "47yo woman with uLMS, multiple lung metastases and residual disease in the pelvis.\n\n2021-11: Diagnosed Stage 4B High grade uterine leiomyosarcoma. Incidental diagnosis following TAHBS with positive margins. (FFPE Block 1E)\n-IHC positive: SMA (very weak), CD10, Cyclin D1 (focal), CD177 (occasional cells show cytoplasmic and membrane positivity), PR (very few tumour cells show nuclear staining)\n-IHC negative: AE1/AE3, EMA, Desmin, ER, CD34, HMB45/S100, ALK1, S100\n\n2021-12: IHC repeated\nIHC positive: SMA (diffuse moderate to strong staining), desmin (patchy positive staining)\nIHC negative: ALK 5A4\n\n2022-03: Block 1E received\n\n2022-05: BRCA Tissue test: No pathogenic variants detected.\n\n2022-07: Eyebrow hairs EH1 received\n\n2022-07: Deceased\n\n2022-12: Block 1E and Eyebrow hair DNA sent for WES";
      brca_report = "SFRC01539_BRCAResult_05Sep2022_Redacted.pdf";
      eh_gdna_prep = "yes";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      eh_received_date = "2022-07-21";
      receipt_eyebrow_hairs_complete = "Complete";
      block_recall_history = "15/03/2022: Nov 2021 sample requested from Southern.IML pathology by Devindee. \n23/03/2022: Nov 2021 sample block received from Southern.IML pathology by Devindee.\n28/09/2022: received and de-identified return from Fox Lab BRCA testing.";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01539";
    capture = CREv2;
    enableQC = true;
  }
