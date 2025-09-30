with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "K3/z5/SHA256E-s4380870992--4ee5c7a929ba407b7756d67e59c134a9e585c7585290b59bd75eee0a13cc52f7.gz/SHA256E-s4380870992--4ee5c7a929ba407b7756d67e59c134a9e585c7585290b59bd75eee0a13cc52f7.gz";
      r2 = "wG/8j/SHA256E-s4460626627--d4896815266ee6fafa89d5cdf70c3b4400d34b9a78d94c5dde1843c8ebad4eab.gz/SHA256E-s4460626627--d4896815266ee6fafa89d5cdf70c3b4400d34b9a78d94c5dde1843c8ebad4eab.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "2P/wf/SHA256E-s8822239611--56b200181328a8b6838e1dfe63859f622875e3d532747b372ee7d58bbeb5415f.gz/SHA256E-s8822239611--56b200181328a8b6838e1dfe63859f622875e3d532747b372ee7d58bbeb5415f.gz";
      r2 = "j1/Fq/SHA256E-s8895416212--c934a88f9bc9cb17a022253267e6217c3d70a0c90900cfe556d498b550696c59.gz/SHA256E-s8895416212--c934a88f9bc9cb17a022253267e6217c3d70a0c90900cfe556d498b550696c59.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WM/K2/SHA256E-s4500228822--ff583a3152629865e52e230145ea58abd46a9b4e6ba0d61cf57a538aed5f30a5.gz/SHA256E-s4500228822--ff583a3152629865e52e230145ea58abd46a9b4e6ba0d61cf57a538aed5f30a5.gz";
      r2 = "jj/m3/SHA256E-s4676829948--21ad0120cd6379bc5fa5c81ff233db148b62d95dd936915d059ede9d59717abb.gz/SHA256E-s4676829948--21ad0120cd6379bc5fa5c81ff233db148b62d95dd936915d059ede9d59717abb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.02.2023\nDiscussed WES report:\nReport FANCA loss with LOH and copy number changes supportive of HRD. Potential for IMPARP-HRD trial - the FANCA loss.\n\nBROCA meeting Clare/Rachael/Amandine\n07.04.2022\nblock 1A, Get WES started and send for BROCA\n\nClare's meeting 10.09.2021\nThe block has enough tumour for WES. Briony to try to get blood organise. Patient has been a bit hesitant.";
      d_case_summary = "Metastatic Uterine Clear Cell Carcinoma (UCCC)\n• TAH/BSO11/2/21. Histology clarified and confirmed a uterine clear cell carcinoma with superficial invasion\nof the myometrium, no LVSI, but involved omentum and pelvic soft tissue. The washings was positive as well.\nThe tumour was proficient for mismatch repair proteins\nTreatment- LEAP 001 trial randomised to standard of care arm- Carboplatin and Paclitaxel\n• CT scan done for the purposes of trial does show extensive omental/peritoneal disease with small volume\nascites and a small pleural effusion.\n• CT s after 3 cycles minor response in the omental and peritonuem and also resolution of a small pleural\neffusion.";
      date_consented = "2021-07-29";
      tumour_type = "Clear cell gynae other";
      tumour_details = "Uterine clear cell carcinoma";
      case_details = "Metastatic Uterine Clear Cell Carcinoma (UCCC) \n\n02-2021: TAH/BSO. uterine clear cell carcinoma with superficial invasion of the myometrium, no LVSI, but involved omentum and pelvic soft tissue. The washings was positive as well. Tissue fixed and blocked (Block 1A)\n\nThe tumour was proficient for mismatch repair proteins: PMS2, MLH1, MSH2, MSH6 \n\nNegative ER, PR, CEA, CK20, P16 \n\nPositive: CK7 and Vimentin \n\nP53 wt \n\nTreatment- LEAP 001 trial randomised to standard of care arm- Carboplatin and Paclitaxel \n\n2021-11: Blood B1 received\n\n2021-08: FFPE Block 1A (TAH/BSO) received.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2021 block requested by Warren 8/8/21 from RWH/RCH, received 31/8/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01444";
  }
