with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2p/4z/SHA256E-s33033725531--33638d6c27b7e491b15931089352f44e214cfa56b3870a89e3c0614bd87cf371.gz/SHA256E-s33033725531--33638d6c27b7e491b15931089352f44e214cfa56b3870a89e3c0614bd87cf371.gz";
      r2 = "5K/1Z/SHA256E-s33963132170--34880a9f83cdec40471f6996c7a78109fe5a3d66115982d6f5b089d035a08e21.gz/SHA256E-s33963132170--34880a9f83cdec40471f6996c7a78109fe5a3d66115982d6f5b089d035a08e21.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "6z/Vx/SHA256E-s16951115773--812e0f5282ed45fa98fecfb3cbb78fb338af5231aefcea7ee4c96a4ab4c1141f.gz/SHA256E-s16951115773--812e0f5282ed45fa98fecfb3cbb78fb338af5231aefcea7ee4c96a4ab4c1141f.gz";
      r2 = "Z7/Gq/SHA256E-s17638357136--2ddbd327a482292c29af157e965ebe27f256570387960224f8272a764f8c12bb.gz/SHA256E-s17638357136--2ddbd327a482292c29af157e965ebe27f256570387960224f8272a764f8c12bb.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "2v/mf/SHA256E-s17319309348--57e34373d8b5f2e0ad7d17cccec5230be718fc723ce4e993ee22ae8db32c46e4.gz/SHA256E-s17319309348--57e34373d8b5f2e0ad7d17cccec5230be718fc723ce4e993ee22ae8db32c46e4.gz";
      r2 = "F5/59/SHA256E-s18052219363--39be575d6cd7e45d458e1c1629acbd32955e93aaffbb056c97c57405cc2b0156.gz/SHA256E-s18052219363--39be575d6cd7e45d458e1c1629acbd32955e93aaffbb056c97c57405cc2b0156.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "GW/mq/SHA256E-s16546518790--2c4e66f9db9b53258e4616da30e372235b0d522afdfd5d0191cc4e93c3b06475.gz/SHA256E-s16546518790--2c4e66f9db9b53258e4616da30e372235b0d522afdfd5d0191cc4e93c3b06475.gz";
      r2 = "j9/xW/SHA256E-s17150557269--2ddd2e6493440a809e4f281c64ede4eadc413491cf5bc86b53b95c6f2cbaaf30.gz/SHA256E-s17150557269--2ddd2e6493440a809e4f281c64ede4eadc413491cf5bc86b53b95c6f2cbaaf30.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "fM/Fj/SHA256E-s17215247562--8a63ddf569231478335bf2878bb3cbe308669da89726e42a3d195af5cac428b4.gz/SHA256E-s17215247562--8a63ddf569231478335bf2878bb3cbe308669da89726e42a3d195af5cac428b4.gz";
      r2 = "qM/J7/SHA256E-s17573149221--7f910fc2b5c20d59866bf3d6da2580a9c0de6591c81a13bcde2f26871d8a50f7.gz/SHA256E-s17573149221--7f910fc2b5c20d59866bf3d6da2580a9c0de6591c81a13bcde2f26871d8a50f7.gz";
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
    name = "SFRC01491";
  }
