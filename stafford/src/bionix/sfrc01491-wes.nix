with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kP/XP/SHA256E-s11968216606--5516d47087c66b3d0d213a52fa24535f2442f78cc6b4fad6e2a9f3bc906cfef2.gz/SHA256E-s11968216606--5516d47087c66b3d0d213a52fa24535f2442f78cc6b4fad6e2a9f3bc906cfef2.gz";
      r2 = "1M/56/SHA256E-s12684344041--e8d125eb45a3647de2e075675c1d639a9dbb03ce14c245e30fbacd525b9e6ad7.gz/SHA256E-s12684344041--e8d125eb45a3647de2e075675c1d639a9dbb03ce14c245e30fbacd525b9e6ad7.gz";
    }
    {
      site = "S1a";
      class = "tumours";
      pdx = false;
      r1 = "g4/0Z/SHA256E-s34082740005--854afa3b12c121e93a72a090a66f6355ec1d7a1df2c32bd86d02886ca8d602e5.gz/SHA256E-s34082740005--854afa3b12c121e93a72a090a66f6355ec1d7a1df2c32bd86d02886ca8d602e5.gz";
      r2 = "85/Gw/SHA256E-s35426040410--75fbbf4ace1c136b2b05a5b0667156272aceb6d25d90c0dac92ce9d265316e35.gz/SHA256E-s35426040410--75fbbf4ace1c136b2b05a5b0667156272aceb6d25d90c0dac92ce9d265316e35.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 29.09.2022\nDiscussed WGS report on PDX sample.\nSig 16 (29%) and 3 (22%), is HRD (plus the RAD51C). \nRECQL4 CN 7 (loss is associated with taxane resistance, unsure what amplification signifies). 2022 paper - amplification associated with platinum.  \nPut this PDX on a taxane.\n\nWES discussion on 19.05.2022 (see WES analysis).\n\nBROCA meeting Amandine?Clare 04.03.2022\nOrganise BROCA on S1a, same DNA as WES\n\nRatana and Clare 18.02.2022\nMade DNA from OCT - 10ug total. Not enough tumour purity for WGS and too much for TSO500, so send for WES.\n\nClare's meeting 10.02.2022\nMandy to get a follow up letter from Sumi. Very good response to NACT? (to explain why we have no tumour?) No letters privately Most recent letter from PMCC uploaded to Redcap.\nOrganise TSO 500 on OCT block S1a\n\nMeeting with Clare 20.12.2021\nWarren/Briony to recall a baseline block.\nS1: gRAD51C  \nTissue from left ovary - First FFPE block had no tumour. Second block had tiny amount in a small area. \nRequest SFRC01491_S1a OCT block to be cut as no tumour in SFRC01491_S1 block \nNeed baseline block ";
      d_case_summary = "HGSOC, RAD51c germline mutation, diagnosed 01Sep2021. Tx carbo/taxol commenced 01Oct2021.";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "2021-09: diagnosed Stage III HGSOC via biopsy. RAD51c germline mutation. BRCA test (grandmother carrier for BRCA gene, mother not): No pathogenic variants detected.\nTreatment: neoadjuvant Carboplatin and Paclitaxel followed by surgical debulking and\nfurther adjuvant chemotherapy.\nHistopath on pelvic mass biopsy:\nIHC positive: CK?, PAXB, p53, WT1, ER (3+, 70%) and PR (3+, 40%)\nIHC negative: CK20, CDX2 and p16 \n\n2021-12: Surgery: TAH BSO, debulking, adhesiolysis, liver mobilisation, diaphragmatic stripping. Optimal debulk zero residual disease. Histology: high grade serous carcinoma of tubo-ovarian origin with peritoneal and omental disease. \nTreatment: 3x cycles of Carboplatin and Paclitaxel completed 15/2/22\n\n2021-12: Blood B1 received\n\n2021-12: tumour tissue S1 from left ovary recieved at lab and processed\n\n2022-02: DNA sent for WES\n\n2022-04: Commenced Niraparib 300mg";
      brca_report = "SFRC01491_BRCATesting_29Sep21_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01491_GeneTest_29Nov2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_germline_mutations = "RAD51C";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01491";
  }
