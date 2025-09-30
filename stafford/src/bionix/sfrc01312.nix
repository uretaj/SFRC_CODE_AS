with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "49/KP/SHA256E-s3827992522--f27fb9d0a98d612ea26fe94172ba1179b8ffc50f57b9df8123e183785b3ff367.gz/SHA256E-s3827992522--f27fb9d0a98d612ea26fe94172ba1179b8ffc50f57b9df8123e183785b3ff367.gz";
      r2 = "fQ/qQ/SHA256E-s3914001495--315ea0cdd2beb52552c88472c555355182e3f912fb9da8b3afb9cacab2aebff2.gz/SHA256E-s3914001495--315ea0cdd2beb52552c88472c555355182e3f912fb9da8b3afb9cacab2aebff2.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      disable = true;
      r1 = "Jk/jW/SHA256E-s322071--eb50d0c789f48a018820c8ad2aec0fd642cdb12c4f171a4a09a1c948ba1bd23b.gz/SHA256E-s322071--eb50d0c789f48a018820c8ad2aec0fd642cdb12c4f171a4a09a1c948ba1bd23b.gz";
      r2 = "vm/4P/SHA256E-s331228--4cb20623aa16217f25f263abd32d4fa1096191e503f15c686e69d8a604d15e3e.gz/SHA256E-s331228--4cb20623aa16217f25f263abd32d4fa1096191e503f15c686e69d8a604d15e3e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "5v/3V/SHA256E-s11786144150--47f7be953a575822320dcaa02293ec37ae04e95d71546e5a05d19acade6aba6a.gz/SHA256E-s11786144150--47f7be953a575822320dcaa02293ec37ae04e95d71546e5a05d19acade6aba6a.gz";
      r2 = "0M/kv/SHA256E-s11923979101--17117fbccb1db620b8858c945619a54269f68c8a1865469876e3dff98dc490fd.gz/SHA256E-s11923979101--17117fbccb1db620b8858c945619a54269f68c8a1865469876e3dff98dc490fd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Broca meeting Amandine/Clare 21.03.2022\nSend S1 for Broca, same sample as WES\n\nRC Meeting 22.07.2021\nDiscussed WES results.\nPurity initially called as 0.28, actually 0.4 based on HF values. TMB = 11 (low), ploidy = 1.95. \nSomatic mutations: KRAS G12A (0.4), NF1 fs (almost 100%) (also another NF1 L190I missense at 50%) - possibility of Beigene trial? \nMYC likely pathogenic (0.3), PIK3CA - not one required for trial (0.2), ?PTEN (0.6), ?TSC2 (0.6). \nNothing of significance in signatures or copy numbers \n\n2021.04.20\nUpdate from Trisha: patient finished chemo (Epworth) and CA125 is 16 (in Feb, was 20 at beginning of year). Patient is well.\n\n2021.03.12\nSF tissue has 20% tumour. Do DNA prep from SF tissue.\nAngela to check how patient is doing, before submitting for WES\n\n2021.04.22\nSFRC01312_S1\nS1 tissue was 20% tumour throughout entire piece. DNA made from SF (116 ng/ul). Angela checked on patient, patient finished chemo (Epworth) and CA125 is 16 (in Feb, was 20 at beginning of year). Patient is well. \nTo do WES/plan? Yes WES, extra depth ";
      d_case_summary = "clear cell ovarian ca, from Trisha";
      date_consented = "2020-07-10";
      tumour_type = "Clear cell ovary";
      tumour_details = "clear cell ovarian cancer";
      brca_report = "SFRC01312_BRCAPanel_23Sep2020_Redacted.pdf";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01312_FCPanel_03Aug2020_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01312";
    capture = CREv2;
  }
