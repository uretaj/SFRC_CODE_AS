with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      r1 = "04/qK/SHA256E-s2345818063--d4e144a385f8b214f98f1061d7913a092ea61c862c091855e753edee1ff41852.gz/SHA256E-s2345818063--d4e144a385f8b214f98f1061d7913a092ea61c862c091855e753edee1ff41852.gz";
      r2 = "XF/52/SHA256E-s2367045351--dc3a9680dcaf1696271a293daa230330e49186cd6b59790f71407928beb4551f.gz/SHA256E-s2367045351--dc3a9680dcaf1696271a293daa230330e49186cd6b59790f71407928beb4551f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 13.05.2021\nTo send out germline WES report. \nTreating clinician can decide if WES to be done on tumour DNA.\n\nRC Meeting 29.04.2021\nGermline WES discussed.\nSDHC might be of interest (the other mutations are benign and POLE is downstream). Involved in mitochondrial complexes. \nNothing else actionable. Let Clare decide if tumour block will go for WES. \n\n03.12.2020\nAngela to organise bloods. Can do germline WES - fast option, will get results as there is familial disease. In the meantime, recall the blocks from Austin so can do WES later (after the germline). Ask Kristy timeline for WES \n\nClare's meeting note:\nSFRC01239_1.9 \nPlan: Go through germline WES next week, then discuss what to do with the block. ";
      d_case_summary = "65 yo male with a very rare metastatic GHRH carcinoid tumour with a bronchial primary and also a pituitary adenoma. Had a pneumectomy at the Austin for his 7cm GHRH producing lung carcinoid. Attended PMCC to exclude MEN1 and MEN4, which were negative on panel testing. Bloods booked for 21/12/2020 at PMCC.";
      date_consented = "2019-10-30";
      tumour_type = "Other NET";
      tumour_details = "GHRH carcinoid tumour";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Austin 2014 block requested by Warren 17/03/21\nReceived by Warren 12/4/21";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01239";
    capture = CREv2;
  }
