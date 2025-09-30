with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "13/Xv/SHA256E-s23099160368--21afe855001198f76859377d443be57395c96577f70097a418de4c5e56066d10.gz/SHA256E-s23099160368--21afe855001198f76859377d443be57395c96577f70097a418de4c5e56066d10.gz";
      r2 = "8p/7m/SHA256E-s23694506391--da99d25167e73db29147e8a60c4af71d6654f2727d926cbc0380f65afd4d3bef.gz/SHA256E-s23694506391--da99d25167e73db29147e8a60c4af71d6654f2727d926cbc0380f65afd4d3bef.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "24/PX/SHA256E-s7736823464--614aaf513b71d1a4aba92506609629c6a70bcc191da888e99eaae8f2fe64f796.gz/SHA256E-s7736823464--614aaf513b71d1a4aba92506609629c6a70bcc191da888e99eaae8f2fe64f796.gz";
      r2 = "qf/4G/SHA256E-s8716101553--3d1640c948b0da86f0d8bd56f7e77f8b42088e0978c0b42122f8f07b95fe04ff.gz/SHA256E-s8716101553--3d1640c948b0da86f0d8bd56f7e77f8b42088e0978c0b42122f8f07b95fe04ff.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block A4\n\nRC Meeting 16.03.2023\nDiscussed WES report:\n-Sample is HRD\n-Unfortunately, doesn't meet criteria for olap - only for Stage III/IV\n-Did BRCA testing 10 years ago and was negative. Here, germline BRCA2. May have been a technology issue for 10 years ago.\n\nClare's Meeting 26.08.2022\nWES. Ask Mandy BRCA test on this has been done, if not, send DNA for BRCA. ";
      blood_recall_history = "08Sep22 - Blood Booked for 26Sep22 \n*Blood cancelled by patient*\n03Oct22 - Text sent to follow up blood test rebook\n07Oct22 -  Text sent to follow up blood test rebook\n";
      d_case_summary = "Stage 2B high grade serous fallopian tube cancer dx 22 April 2022\n     - laparotomy, TH, BSO, Omentectomy, lymph node sampling and staging April 2022\n     - 6 cycles of carboplatin and taxol started in June 22.\n\nPatient would really like to know if they are BRCA  . Fisr clinical test (years ago) was neg, more recently was pos\n\n10 years ago BRCA2 neg - recently retested and positive.";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS Fallopian tube";
      case_details = "47F\n\n2022-04: Diagnosed Stage 2B HGS fallopian tube cancer\n-Surgery: lapraotomy, radical hysterectomy, BSO. \n Right ovary fixed and blocked (Block A4)\n-Histopath on right ovary (block A4):\n -p53: nuclear staining in tumour cells \n  (mutation pattern) \n  -WT1 & P16 - strong staining in tumour cells\n -ER: patchy weak expression \n -PR: focal moderate expression \n\n2022-06: Chemotherapy: Commenced carboplatin and taxol, 6x cycles. Awaiting germline BRCA results.\n\n2022-07: FFPE Block A4 received. \n\n2022-07: Germline BRCA2 variant identified: BRCA2:c.3847 _3848del \n\n2022-12: Blood B1 received.\n\n2023-01: B1 and Block A4 DNA sent for WES.";
      brca_report = "SFRC01599_GeneTest_15Aug22_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "18/07/2022: Apr 2022 sample requested from NSW Health pathology by Devindee. \n30/07/2022: Apr 2022 sample received from NSW health by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "BRCA2";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01599";
  }
