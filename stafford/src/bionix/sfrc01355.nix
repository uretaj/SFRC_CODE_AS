with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B-a";
      class = "tumours";
      pdx = false;
      r1 = "5k/Kv/SHA256E-s16118940957--1a7547858737a5d80cb7be54cad4d18abff714e709837cb9faeca07407f03a52.gz/SHA256E-s16118940957--1a7547858737a5d80cb7be54cad4d18abff714e709837cb9faeca07407f03a52.gz";
      r2 = "j1/8M/SHA256E-s16315823137--36e967576f172500dfd499f3195b487fb6c75e1c81e6d0c3eaa939f33c5437dd.gz/SHA256E-s16315823137--36e967576f172500dfd499f3195b487fb6c75e1c81e6d0c3eaa939f33c5437dd.gz";
    }
    {
      site = "2X";
      class = "tumours";
      pdx = false;
      r1 = "3q/Wj/SHA256E-s19582342468--7f3fcd4c9d79367347b7414dc90325326e032b00e0165babd1c0ac1c7762684c.gz/SHA256E-s19582342468--7f3fcd4c9d79367347b7414dc90325326e032b00e0165babd1c0ac1c7762684c.gz";
      r2 = "9q/xf/SHA256E-s20173212130--123d1d2e7d38804e99b8127e7472840e649402158d6f2acd463a9ce59d67a598.gz/SHA256E-s20173212130--123d1d2e7d38804e99b8127e7472840e649402158d6f2acd463a9ce59d67a598.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7F/2X/SHA256E-s5949998333--169335b94cc31924190897132640a4bad757bd67d29227dfa55221f7b9979f7d.gz/SHA256E-s5949998333--169335b94cc31924190897132640a4bad757bd67d29227dfa55221f7b9979f7d.gz";
      r2 = "9K/6x/SHA256E-s6370380871--c60cf8791bf46feb428ed423c84dfd70ed01382ee34f9de52ed3c60187f14678.gz/SHA256E-s6370380871--c60cf8791bf46feb428ed423c84dfd70ed01382ee34f9de52ed3c60187f14678.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting notes 2021.08.26\nSFRC01355_1B, reviewed by Gayanie, send for WEs\n\nClare's meeting notes 2021.07.29\nSFRC01355_1B and 2X,Do WES on both blocks \nAsk Gayanie to identify if any higher purity area.  ";
      d_case_summary = "self-referred; multiple primary patient - carcinosarcoma 1977, lung ca and neuroendocrine ca of pancreas 2013";
      date_consented = "2020-12-11";
      tumour_type = "Pancreatic NET";
      tumour_details = "multiple primary - carcinosarcoma, lung cancer, NET of pancreas";
      case_details = " Female in her 70s. 1977 carcinosarcoma  (surgery), \n2013 lung ca and neuroendocrine ca of pancrea (surgery) \n12.2020 benign pituitary adenoma most likely being observed ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Pancreatic NET requested by Warren 6/6/21 from AnatPath, received 2/7/21\nLung block requested by Warren 7/6/21 from Melbourne Pathology, received 14/6/21";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01355";
    capture = CREv2;
    predictNeoantigens = true;
  }
