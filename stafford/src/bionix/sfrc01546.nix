with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "J2/2K/SHA256E-s13670150577--a737caa252642658f23a93d9b30cb6f6f155136e635cc7cb7bb7639092b0bd32.gz/SHA256E-s13670150577--a737caa252642658f23a93d9b30cb6f6f155136e635cc7cb7bb7639092b0bd32.gz";
      r2 = "F4/KX/SHA256E-s13848681402--11a725964ea86e683d5c9bb837eb9f3086b16d2ac7610e1e6f5f7d12bcf83f82.gz/SHA256E-s13848681402--11a725964ea86e683d5c9bb837eb9f3086b16d2ac7610e1e6f5f7d12bcf83f82.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k7/Wq/SHA256E-s5377057405--52177c7d089fefc09310f1608e4ce49cd66cfe1e85882352daf68c672b02e396.gz/SHA256E-s5377057405--52177c7d089fefc09310f1608e4ce49cd66cfe1e85882352daf68c672b02e396.gz";
      r2 = "63/zk/SHA256E-s5590181410--264dcc74405a7ff67335e1d8e0bad61f028295ce84e1b6f973d6494727bf0a00.gz/SHA256E-s5590181410--264dcc74405a7ff67335e1d8e0bad61f028295ce84e1b6f973d6494727bf0a00.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 10.11.2022\nDiscussed WES results:\nNo PIK3CA mutation (13% of MOC) \nReport to be prioritised.\n\nClare's meeting 16.06.2022\nPlan: WES on FFPE block 1E (DNA to be made, tumour purity 60% in circled areas) \n\nMandy: \n-To check that Briony has sent the HER2 report to Rachel Delahunty.\n-Send emails to Briony and Damien, to give feedback and updates to the ARC Portal - Lokman. To say that HER2 has been done and WES pending. \n\nClare's meeting 05.05.2022\nBlock 1E: Rachael to contact Prue Allan for HER2 IHC and ISH. DNA for WES  ";
      d_case_summary = "Stage 4 mucinous ovarian cancer\nIHC includes CK7 diffuse  , CK20 patchy , CDX2 weak focal  , PAX8-, SATB2-. MMR (4 panel) normal expression.\nFor next generation sequencing as well as Her2 IHC please\nUpdate from clinician 19Jun22: just had Cycle 5 adjuvant chemo last week, she is doing well overall.";
      date_consented = "2022-03-09";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "mucinous ovarian adenocarcinoma";
      case_details = "56F \n\n2016-11: Dx Stage 4 mucinous ovarian cancer after unilateral oophroectomy showing borderline ovarian mucinous tumour \n\n2017-02: Surgery: TAH/RSO \n\n2021-12: Recurrence following presentation of large bowel obstruction.  \nIHC positive: CK7 diffuse, CK20 patchy, CDX2 weak focal \nIHC negative: PAX8, SATB2. \npMMR \n\n2021-12: Tissue: sections of tumour from anterior resection (large bowel, pericolic fat, peritoneum) fixed and blocked (Block: 1E) \n\n2022-03: no evidence of active disease on CT. Commenced combination chemo (carboplatin and paclitaxel).  \nReferred to ARC Portal\n\n2022-04: Tissue from Block 1E received. Blood B1 received. \n\n2022-05: Sections from Block 1E sent for HER2 IHC and ISH: Negative.\n\n2022-08: DNA from Block 1E and Blood B1 sent for WES.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01546_ARCPortalReport_20Mar2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "05/04/2022: 15/12/2021 sample requested from Dorevitch pathology by Devindee. \n14/04/2022: Dec 2021 slides received from Dorevitch pathology by Devindee.";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01546";
  }
