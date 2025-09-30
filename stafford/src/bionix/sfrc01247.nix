with import ./milton-slurm.nix {}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L1901038_S3";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "c650db8ef7fcd00178178fd254970d989b1a964ee68b887f56ae0586683f7c0a";
      sha256-2 = "bfe116906bddf9799ba78d78be56938b21910812bebcf947f0c56cfbd5fc650a";
    }
    {
      prefix = "grimmond/s3/batch8/L1901038_topup_S8";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "19e79e9018a60ea5715481973ff92194f6a218e5f04418303d99a2eafbaac7d9";
      sha256-2 = "07bdcea8a80adfbf021c9082b1de5dd9a27d7325ecbff0122b82d8654245ed20";
    }
    {
      prefix = "grimmond/s3/batch8/L1901026_S1";
      suffix = "_001";
      site = "S1";
      class = "rna";
      sha256-1 = "528808192a494d4e8dc98c0596ee8d04e45cd65c70957993ffdf6a8c2294dd51";
      sha256-2 = "d32ee809bd7d19ed497938a7a5ee36117b8f3f1b43109482da174555bcb1a45e";
    }
    {
      prefix = "grimmond/s3/batch8/L1901039_S4";
      suffix = "_001";
      site = "S1";
      class = "tumours";
      sha256-1 = "cc01c16aea8cdf162e439c8c7cb419bcb381efe95c071b9e6b97771b40f1eff8";
      sha256-2 = "e10fc22839c91f8900ef98afd473361ef0dcb1882b92f87140a9000237fac0e6";
    }
    {
      prefix = "grimmond/s3/batch8/L1901039_topup_S9";
      suffix = "_001";
      site = "S1";
      class = "tumours";
      sha256-1 = "04dc46ef77fef4a5578d00d073682d433dfeb6337b905a2cc822b685e0cf61ea";
      sha256-2 = "ec5c092b13b76197e2659c51f11bf17c78b2caa44789c4fe006844f8bd15561e";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "RC Meeting notes 11.06.2020\nHad ALLOCATE and WGS at the same time - unsure whether patient received ALLOCATE result and think she has since progressed and passed without benefit from treatment. \nBRAF is common mutation in LGSOC (with KRAS, NRAS, HER2) \n\nMeeting notes 2019.12.05\nCheck 50% with Gayanie, if just stromal tissue (no cells) then go ahead with WGS, otherwise WES (double check with Kym and Oliver minimum tumour purity recommended for WGS) \nGayanie said without blank area purity is 60-70%";
      date_of_death = "02/2020";
      d_case_summary = "Dx May 2017 - Stage IIIC, CA125 281\nNot a candidate for upfront or interval debulking (? Reason)\nCarboplatin/Paclitaxel/Bevacizumab x 6\nRDH MDT review - not suitable for debulking\nMaintenance Bevacizumab(1yr) complete Nov 2018\nCA125 rising Jan-April 2019";
      date_consented = "2019-11-14";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "Immunochemistry from path report \nTP53 WT pos\nCK7, CA125, WT1 diffuse strong pos\nKi67 increased proliferative activity 60%\n___________________________________________________\nWGS clinical notes \n\"G2 serous ovarian carcinoma. BRCA1/2 pending.\nDx May 2017 - Stage IIIC, CA125 281\nNot a candidate for upfront or interval debulking\nCarboplatin/Paclitaxel/Bevacizumab x 6\nRDH MDT review - not suitable for debulking\nMaintenance Bevacizumab(1yr) complete Nov 2018\nCA125 rising Jan-April 2019. Not clear re underlying grade / molecular status so biopsy and WGS as only one attempt at molecular analysis as referred to RWH/Petermac from Darwin\"";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01247";
    disableManta = true;
    predictNeoantigens = false;
  }
