with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01214-B2_S4";
      suffix = "_001";
      sha256-1 = "a7902ec379d40231e8ec1117b9ec931fa19d133e09e61b413f0065baf2a10586";
      sha256-2 = "b7335add24e6d7880cc2d99700f1847a59cd98c99e3abaa58e137bb5617ac548";
    }
    {
      site = "S1+S3";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01214-S1-and-S3_S3";
      suffix = "_001";
      sha256-1 = "66e21b5544584325dd117c9dfc20675b542fc53b358293de78a9b46d1e498f08";
      sha256-2 = "de6c682a527ef778e7e4382afb80efe4e515ad2da5fa1eb47487320e711e3f1b";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 30.03.2023\n-Discussed WES report to compare this case with upcoming cervical adenocarcinomas:\n -Germline TSC2\n -Somatic ATXN1, NR4A3, SMARCA4, CHD4, KMT2C\n -Sig3 highest but low fit\n -CN loss of ZNF429\n-Unsure if HPV testing was done at the time.\n\nRC meeting notes 28.05.2020\nUpdated report uploaded. Is in Damien's hands.\n\nRC meeting notes 14.05.2020\nWES report - no germline pathogenic mutations.\nSomatic: SMARCA4, KMT2C and KMT2D (all related - is this relevant, especially as Sig3 is second highest).\nRelevant for PARPi, ATRi, etc.\nWe might have a PDX from S1 and S2, currently being confirmed.\nHolly to look into obtaining KMT2C tools from London.\nWES report summary uploaded in Analysis_DNA instrument.\n\nClare email's 07.01.2020\nThis case will be funded by SF as it is WES and not WGS.\nI agree with deep WES as outlined by Tony and Justin.";
      date_of_death = "07/2020";
      date_consented = "2019-08-20";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Adenocarcinoma of the Cervix, FIGO  Stage 3C2";
      case_details = "36F\n\n2018-07: Dx Stage IIICb Adenocarcinoma of the cervix via curettings\nIHC positive: p16, BerEP4, p40 (occasional cells), CK AE1/3, p63 (patchy weak to moderate)\nIHC negative: CK5/6, S100, chromogranin, synaptophysin, WT1, PAX8, ER, PR\nKi-67: 90%\np53: wild type\n\nChemotherapy: Carboplatin/Paclitaxel and Bevacizumab\n\n2019-02: Cisplatin (x1 cycle) with radiotherapy\n\n2019-03: Brachytherapy\n\n2019-07: Recurrent disease\n\n2019-08: Blood B1 received\n\n2019-10: Metastatic cervical adenocarcinoma\n\n2019-11: Blood B2 received. Fresh tissue S1 - S3 received.\n\n2020-01: Progressive disease.\nChemotherapy: Carboplatin/Paclitaxel\n\n2020-07: Deceased.\n---------------------------------------------------------------------------\nFIGO  Stage 3C2 Adenocarcinoma of the  Cervix, Treatment - carboplatin plus paclitaxel plus bevacizumab x 6 cycles, Consolidative Pelvic ChemoRT + HDR Brachytherapy\nRecurrent disease , Common Iliac and Pelvic nodal disease";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019.09.05\nGayanie has given the St John of God path report to Emily with tumour blocks marked. may be ask for few blocks (at least 2 blocks) to see which one is better.";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01214";
    capture = CREv2;
    predictNeoantigens = true;
  }
