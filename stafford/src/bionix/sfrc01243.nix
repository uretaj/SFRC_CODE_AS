with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gM/g9/SHA256E-s2437851963--b28a695ed1d23b127e4b274d7153f3775cdc1bb1a5f9674d28477f4f0fedbfea.gz/SHA256E-s2437851963--b28a695ed1d23b127e4b274d7153f3775cdc1bb1a5f9674d28477f4f0fedbfea.gz";
      r2 = "V0/g5/SHA256E-s2621818473--a2ecde4f9859864a5ed0148ba9351a95dc92a4b48ec07d5128a1f444511c2860.gz/SHA256E-s2621818473--a2ecde4f9859864a5ed0148ba9351a95dc92a4b48ec07d5128a1f444511c2860.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "W9/k3/SHA256E-s11066968743--ad8efd691f4fa280db8a11e10e3b39950fe231b493bb7188df4203650274014a.gz/SHA256E-s11066968743--ad8efd691f4fa280db8a11e10e3b39950fe231b493bb7188df4203650274014a.gz";
      r2 = "Mj/80/SHA256E-s11058481402--e0d8714c8eca39205b6b6473427448d48f07eee388f0a378410993a201186805.gz/SHA256E-s11058481402--e0d8714c8eca39205b6b6473427448d48f07eee388f0a378410993a201186805.gz";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "13/xj/SHA256E-s11528824409--c412ead9d8aeacbcc9867f3ad13aaf5f08a61b83d6f56f9fedb63f5851033f89.gz/SHA256E-s11528824409--c412ead9d8aeacbcc9867f3ad13aaf5f08a61b83d6f56f9fedb63f5851033f89.gz";
      r2 = "m4/1K/SHA256E-s11791008103--7cf9203882dfc82c7598d201805f211b50637af89acf2f8858ce358a27bf3039.gz/SHA256E-s11791008103--7cf9203882dfc82c7598d201805f211b50637af89acf2f8858ce358a27bf3039.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting notes 10.09.2020\n1B block is good. Kristy to do WES as part of Multiple Primary.\n\n31.08.2020 Clare and Ratana\nFound CHEK2 mutation. Clare to get validation of this CHEK2. Part of ViP program.";
      d_case_summary = "RMH FCC. NSCLC Testicular Ca Breast Ca nodular BCC. Aged mid 60s, treated by Yoland Antill at Cabrini.";
      date_consented = "2019-11-07";
      tumour_type = "Breast cancer";
      tumour_details = "NSCLC- smoker, Testicular Cancer, Breast Cancer, Nodular basal cell carcinoma (back)";
      case_details = "Invasive ductal carcinoma, Grade II\n\nStarted tamoxifen 10/2015, well tolerated overall\n\nB/g of lung cancer in 2004\nRoyal melbourne FCC\nAged mid 60s";
      patient_information_complete = "Incomplete";
      breast_tumour_type = "male BC -  invasive carcinoma";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2018 Nodular BCC tissue recalled from Dorevitch Pathology via fax for Kristy by Josh\n\n2018 Block 1A1U tissue received on 30/08/2020\n\n2015 Carcinoma tissue  Block 1B received on 30/07/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_germline_mutations = "CHEK2";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01243";
    predictNeoantigens = true;
  }
