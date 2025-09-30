with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xq/4g/SHA256E-s53692705793--5eb111c30a0dd9a5ac522551026a73d0d99c27258d1cf70958d3bb65f387c5d4.gz/SHA256E-s53692705793--5eb111c30a0dd9a5ac522551026a73d0d99c27258d1cf70958d3bb65f387c5d4.gz";
      r2 = "pf/mZ/SHA256E-s57598017401--b2f53c579ab000bea939af27c93f2fe528a770e3ffcb1b9b1a8987b006e0837a.gz/SHA256E-s57598017401--b2f53c579ab000bea939af27c93f2fe528a770e3ffcb1b9b1a8987b006e0837a.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Gp/1p/SHA256E-s94595279656--235044cbe2b88f09640e2a5222a4d6c6b314f682a6a6d921aafc2faafd6fc27f.gz/SHA256E-s94595279656--235044cbe2b88f09640e2a5222a4d6c6b314f682a6a6d921aafc2faafd6fc27f.gz";
      r2 = "8M/XJ/SHA256E-s99810643241--8bf4800206e57ffda61bc30d6362ee04e065be267e03bda457ea1120c1a62367.gz/SHA256E-s99810643241--8bf4800206e57ffda61bc30d6362ee04e065be267e03bda457ea1120c1a62367.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "6V/k1/SHA256E-s1798822476--c0a87b351f6484ac1ce8651ecda7a62596a8e231a50c1a5115f669687a33a1b0.gz/SHA256E-s1798822476--c0a87b351f6484ac1ce8651ecda7a62596a8e231a50c1a5115f669687a33a1b0.gz";
      r2 = "gG/z3/SHA256E-s1768202896--6a4f10c6172138ed3f53bff4dc266b9134eda91cd98aa627382257b8af1a9e42.gz/SHA256E-s1768202896--6a4f10c6172138ed3f53bff4dc266b9134eda91cd98aa627382257b8af1a9e42.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nPossible trials include mTOR inhibitor for the TSC2, ATR inhibitor for ATRX mutation\n\nClare's Meeting 23.03.2023\n-Need blood \n-To do WGTS on SF tissue - entire sample is tumour.";
      d_case_summary = "Malignant uterine PEComa\nAshkenazi Jewish descent";
      date_consented = "2023-03-08";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Malignant uterine PEComa (? TBC by fusion panel underway at PMCC)";
      case_details = "46F\n\n2023-02: Endometrial pipelle - endometriosis and atypical spindle cells of uncertain origin; potential sarcoma.\nIHC positive (spindle cells): caldesmon (weak)\nIHC negative (spindle cells): desmin, SMA, AE1/3 EMA, SOX10 \n\n2023-02: Dx malignant uterine PEComa\nSurgery: TAH/BSO. Fresh tissue S1 received.\nIHC positive: Smooth muscle actin (diffuse), HMB45, desmin (focal), \nIHC negative: TFE3, EMA, myoglobin, caldesmon, S100, melanA";
      brca_report = "SFRC01727_BRCAReport_13Jun2018_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01727";
  }
