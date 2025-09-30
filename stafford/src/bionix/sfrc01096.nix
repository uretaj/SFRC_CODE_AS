with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "Xz/P7/SHA256E-s3290554357--2c8e42b433b6df8539ffe2d8b37e606df7bb6f6ecb6b1975923d284c9dd034cf.gz/SHA256E-s3290554357--2c8e42b433b6df8539ffe2d8b37e606df7bb6f6ecb6b1975923d284c9dd034cf.gz";
      r2 = "12/q1/SHA256E-s3558682174--bef2bffed7c74bab768782437aa0d6ad8271125ddb888638d2b41c13ab41912b.gz/SHA256E-s3558682174--bef2bffed7c74bab768782437aa0d6ad8271125ddb888638d2b41c13ab41912b.gz";
    }
    {
      site = "08T";
      class = "tumours";
      pdx = false;
      r1 = "P3/jK/SHA256E-s2998204318--a4c215ff65d859de810c8fc6a810912ae52a9e19861e83954142f427642d2e44.gz/SHA256E-s2998204318--a4c215ff65d859de810c8fc6a810912ae52a9e19861e83954142f427642d2e44.gz";
      r2 = "78/9G/SHA256E-s3282301510--35910f16b603741944166407a2f942e0d48d9d1c47f4c468613af729025665e9.gz/SHA256E-s3282301510--35910f16b603741944166407a2f942e0d48d9d1c47f4c468613af729025665e9.gz";
    }
    {
      site = "17T";
      class = "tumours";
      pdx = false;
      r1 = "p1/pj/SHA256E-s3591416467--e836706596b90d9ab0424529e7068a5bd1f880c48f762104d6a2e18577e8cdb5.gz/SHA256E-s3591416467--e836706596b90d9ab0424529e7068a5bd1f880c48f762104d6a2e18577e8cdb5.gz";
      r2 = "K2/w7/SHA256E-s3862753714--a41466a2b1c08806fc7bf783289c870bbbdec5193c0dcfa3db12c1cf08b1bec1.gz/SHA256E-s3862753714--a41466a2b1c08806fc7bf783289c870bbbdec5193c0dcfa3db12c1cf08b1bec1.gz";
    }
    {
      site = "B1";
      class = "normals";
      suffix = "_001";
      prefix = "fastqs/multi-pri/Sample_SFRC01096-B1/SFRC01096-B1_S9";
      hash1 = "a74d5636c335f634d381c9f20cca12a9ce6a1a3ac8d3782461594262feacf630045147e73898413aed8cd511520247d53c0269094fc436ef1e89c987e87e744e";
      hash2 = "b18dcf2136d7bbfe30395ea19ef2c482b373a96f22ef9366ba640b4b3be76ccf10783ff03024bfa11cae78140de51cc99cb2e22d13981515504178f9c1bfcfd7";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "FCC";
      meeting_discussions_follow_up = "Broca meeting Clare/Amandine 07/07/2021\nSend SFRC01096_17T-192832 for Broca, priority cat 2\n\nUpdate: No PDX, sample was not sent for BROCA Aug 2020. To do WES instead.\n\n16.04.2020 Meeting notes:\nReport ready to be sent to treating doctor. No further action at this time.\n\n27.03.2020 - RedCap Meeting with Clare\nHGS FT FFPE - DNA from Kristy to send for BROCA\n\nMeeting notes 19.03.2020\nJustin to realign with other reference genome (hg38?) and have results within 6 weeks ";
      date_of_death = "04/2020";
      d_case_summary = "multiple primaries (3) - malignant phyllodes tumour (2008), papillary thyroid carcinoma (2012), HGS carcinoma FT (2017); COV panel no mutation detected";
      date_consented = "2018-07-05";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "multiple primaries (3) - malignant phyllodes tumour of the breast (2008), papillary thyroid carcinoma (2012), HGS carcinoma FT (2017); COV panel no mutation detected";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SFRC01096";
  }
