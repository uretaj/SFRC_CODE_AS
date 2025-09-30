with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kX/8w/SHA256E-s6845659193--dce789e0779ec5ea21d3d61f2fba34cbcaf6893cda9aba5326a2589e02030802.gz/SHA256E-s6845659193--dce789e0779ec5ea21d3d61f2fba34cbcaf6893cda9aba5326a2589e02030802.gz";
      r2 = "ZM/98/SHA256E-s7218755634--ca2ebecf289425c8647c923f672d2383f8e40264cb03110a9ff1a4d8203af8e4.gz/SHA256E-s7218755634--ca2ebecf289425c8647c923f672d2383f8e40264cb03110a9ff1a4d8203af8e4.gz";
    }
    {
      site = "E";
      class = "tumours";
      pdx = false;
      r1 = "6w/v4/SHA256E-s27392736221--d1d8ccea657ae5e920236b2b08cbc724cdc7319b39760dfe9db2b33ad5f6c3cc.gz/SHA256E-s27392736221--d1d8ccea657ae5e920236b2b08cbc724cdc7319b39760dfe9db2b33ad5f6c3cc.gz";
      r2 = "Wv/2G/SHA256E-s28351829223--7e290ccb0f2ea33be3bdd1207f24dc324a21bf21133e548809c26ad94ecf50b7.gz/SHA256E-s28351829223--7e290ccb0f2ea33be3bdd1207f24dc324a21bf21133e548809c26ad94ecf50b7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 20.12.2021\nBriony to organise blood, do WES. This case is for Inger.\n\nMeeting with Clare AC/CS 12.11.2021\nAsk Briony/Warren to recall a block form a path report from which the clear cell diagnosis was established. Not the biopsy form 01/2019, as no tumour in that sample. This case would be for Inger's paper on Clear cell of the cervix.";
      d_case_summary = "FIGO Stage 1B2 Clear cell Ca Cervix";
      date_consented = "2019-03-19";
      tumour_type = "Clear cell cervix";
      tumour_details = "FIGO Stage 1B2 Clear Cell Cancer of the Cervix";
      case_details = "26yo woman\n\n2019-01: Diagnosed FIGO Stage 1B2 Clear Cell Carcinoma of the cervix following 2 years of irregular bleeding & biopsy of large fungating mass originating from endocervix.\nHistopath on biopsy - cervical mass (Block E):\nIHC positive: AE1/AE3\nIHC negative: ER/PR, Inhibin, PLAP, desmin\np53: patchy, wild type\nMMR: retained\n\n2019-04: Radical ChemoRT to pelvis + HDR T&O Brachytherapy. On HRT - Estalis 50/140mcg/d patch for early menopause\n\n2019-10: Post-treatment PET imaging showing complete metabolic response, asymptomatic from perspective of her disease\n\n2021-12: FFPE Block E received\n\n2022-02: Blood B1 received\n\n2022-03: DNA sent for WES\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Clear Cell Ca Dx on Bx on 25/01/2019\n\nManaged with radical chemoRT to Pelvis, + HDR T&O Brachytherapy,, completed April 15 2019\n\nPost-treatment PET imaging showing complete metabolic response - 16/10/2019\n\nUsing estalis 50/140mcg/day patch, and tolerating well and controls most of menopause sx\n\n2019 sample block received by Devindee 07/12/2021.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01152";
  }
