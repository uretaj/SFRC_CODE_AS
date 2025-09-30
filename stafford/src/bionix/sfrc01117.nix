with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A01";
      class = "tumours";
      pdx = false;
      r1 = "q8/6f/SHA256E-s9342626756--e2bed9ced4bf1184bdfdace616187bed0b65038d6d0c8d954e45e7034ba13b04.gz/SHA256E-s9342626756--e2bed9ced4bf1184bdfdace616187bed0b65038d6d0c8d954e45e7034ba13b04.gz";
      r2 = "xj/KQ/SHA256E-s9383290754--f29bb61c16fd2b55027498cc7a26a1f121cda6b7500541c138101addb96de050.gz/SHA256E-s9383290754--f29bb61c16fd2b55027498cc7a26a1f121cda6b7500541c138101addb96de050.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PV/vj/SHA256E-s3106336021--fb8d95be34ee75fff5e73f26873644dde398c0fd66aa0eba3f1d3698af090b32.gz/SHA256E-s3106336021--fb8d95be34ee75fff5e73f26873644dde398c0fd66aa0eba3f1d3698af090b32.gz";
      r2 = "Zw/kw/SHA256E-s3207792406--cd16ba42e8df372c6fc235f3208d6bead7ba57f8a26e3e547329a134fcb9ac8a.gz/SHA256E-s3207792406--cd16ba42e8df372c6fc235f3208d6bead7ba57f8a26e3e547329a134fcb9ac8a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Sample catch up meeting 06.12.2021\nblock A01.Go ahead with WES and Broca \nBriony to get a letter from clinician. Standard letter - how many lines of therapy they received before death. \n\nBroca meeting with Clare 2021.10.07\nWarren has been emailed to recall block A01 if possible. Do WES and BROCA if we can get the block.\n\nBroca meeting with Clare 2021.08.27\nOrganise WES and Broca on block A01\n\nMeeting notes 27.06.2019\nTP53 positive was a favour for a doctor, I don't think we need to do anything else. \nClare will email clinician to give update.";
      date_of_death = "06/2019";
      date_consented = "2018-11-27";
      tumour_type = "HGSEC";
      tumour_details = "High Grade Serous Endometrial Carcinoma";
      case_details = "73 year old Female\n\nER pos MMR proficient serous endometrial carcinoma - metastatic\n\n2013-05: Diagnosed  with Stage 1A, LVSI negative, serous papillary endometrial carcinoma, TABHSO\n\n2017-01: recurrence in vaginal vault. Biopsy tissue fixed and blocked (Block A01)\nChemo recommended but patient refused, Hormonal agents attempted, with little effect, received some RT\nHER2 ISH not amplified \n\n2018-11: Blood B1 received.\n\n2019-06: Deceased\n\n2021-11: Block A01 received\n\n2021-12: Block A01 submitted for WES\n______________________________________________________\nER postive MMR Proficient High Grade Serous Endometrial Carcinoma - metastatic. Originally diagnosed in May 2013 with stage 1A, LVSI negative papillary endometrial carcinoma.\n\nOriginal surgery (TAHBSO) performed in Philippines, no chemo recommended.\nRecurrence at Vaginal Vault in Jan 2017 - Chemo recommended at this time but patient declined. Hormonal agents trialled to little effect.\n\nHER2 not amplified;\nfor p53 IHC but then no further analysis due to insufficient tissue quality\n\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Vaginal Vault Biopsy\nMonash Pathology\nLab reference no: 170001251\nCollected 18/01/2017\nRequested 8 Mar 2019\nReceived slides (block A0107) 9-May-19\nRequested additional block and received by Warren 2/11/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01117";
  }
