with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1AC";
      class = "tumours";
      pdx = false;
      r1 = "41/Jg/SHA256E-s2644775481--2d4da642b6b8c3de297a8b778e813883345b75a11613a959a1c83621e58e3a50.gz/SHA256E-s2644775481--2d4da642b6b8c3de297a8b778e813883345b75a11613a959a1c83621e58e3a50.gz";
      r2 = "z3/4j/SHA256E-s2668947921--6260892d1dba2357c27cb3e39c7a3f643db500f0180abb9f643ac8476b9d9d50.gz/SHA256E-s2668947921--6260892d1dba2357c27cb3e39c7a3f643db500f0180abb9f643ac8476b9d9d50.gz";
    }
    {
      site = "1AC";
      class = "tumours";
      pdx = false;
      r1 = "kG/Jf/SHA256E-s2682384273--11a57c7ffbd250962799d1ea0761e4eaf2ebf7b6cc7806af75bfadb10d96dafd.gz/SHA256E-s2682384273--11a57c7ffbd250962799d1ea0761e4eaf2ebf7b6cc7806af75bfadb10d96dafd.gz";
      r2 = "64/M5/SHA256E-s2707447541--5e17d6b9a33343e135cce750a3a2cefbd1209376536115894babb488c34e8519.gz/SHA256E-s2707447541--5e17d6b9a33343e135cce750a3a2cefbd1209376536115894babb488c34e8519.gz";
    }
    {
      site = "1AC";
      class = "tumours";
      pdx = false;
      r1 = "pZ/3P/SHA256E-s2866352726--09d4d92cd244e6fb658b1032620a4d3b2ab85a64c9224f861bf5661db99ef0c4.gz/SHA256E-s2866352726--09d4d92cd244e6fb658b1032620a4d3b2ab85a64c9224f861bf5661db99ef0c4.gz";
      r2 = "9z/f5/SHA256E-s2899349021--4b3959208b49691329598e2f6073dc6449b22f395d32749c1157d3b652719124.gz/SHA256E-s2899349021--4b3959208b49691329598e2f6073dc6449b22f395d32749c1157d3b652719124.gz";
    }
    {
      site = "1E";
      class = "normals";
      pdx = false;
      r1 = "xp/XG/SHA256E-s1960102213--b028c906a2cf7deff43a73a27b322c9715358c57db36560fdc9c27098c2c8bdb.gz/SHA256E-s1960102213--b028c906a2cf7deff43a73a27b322c9715358c57db36560fdc9c27098c2c8bdb.gz";
      r2 = "Qm/Wj/SHA256E-s1980438351--2a8207b4cfd46306b207d827b4c21ad0d168af7e49c19ac7d6966a5af4e05191.gz/SHA256E-s1980438351--2a8207b4cfd46306b207d827b4c21ad0d168af7e49c19ac7d6966a5af4e05191.gz";
    }
    {
      site = "1E";
      class = "normals";
      pdx = false;
      r1 = "Q2/MW/SHA256E-s1992642866--777b6ae26d1cadab98558debe05cc6a53ab1dc76d7fd8240517bb587dbff1e83.gz/SHA256E-s1992642866--777b6ae26d1cadab98558debe05cc6a53ab1dc76d7fd8240517bb587dbff1e83.gz";
      r2 = "X3/59/SHA256E-s2013582583--1e448267e3973f0aaebaa3db419334f64d605f855ac9a034d84a85b3c94812d8.gz/SHA256E-s2013582583--1e448267e3973f0aaebaa3db419334f64d605f855ac9a034d84a85b3c94812d8.gz";
    }
    {
      site = "1E";
      class = "normals";
      pdx = false;
      r1 = "X5/K5/SHA256E-s2173290374--cb5f36006678024c8a6503059a9fef7b3e407fa2ecfd9b9857a306f58889cb2e.gz/SHA256E-s2173290374--cb5f36006678024c8a6503059a9fef7b3e407fa2ecfd9b9857a306f58889cb2e.gz";
      r2 = "3M/wp/SHA256E-s2201415208--23f7649cf92f0512c474e7fc2bd825e2ca127715f17eb2070c7809f14fcf62bc.gz/SHA256E-s2201415208--23f7649cf92f0512c474e7fc2bd825e2ca127715f17eb2070c7809f14fcf62bc.gz";
    }
    {
      site = "1AC";
      class = "tumours";
      pdx = false;
      r1 = "zG/wZ/SHA256E-s1503166847--812ecacd1c49a8f355d8ed1d4934eb5e482fab7d4703fcd160699cc8a4ab20e8.gz/SHA256E-s1503166847--812ecacd1c49a8f355d8ed1d4934eb5e482fab7d4703fcd160699cc8a4ab20e8.gz";
      r2 = "VQ/pM/SHA256E-s1502456526--b95229cd0db876121ca8285a9f1b0bfa316a2f9c732d3926d6166cb566b2ff47.gz/SHA256E-s1502456526--b95229cd0db876121ca8285a9f1b0bfa316a2f9c732d3926d6166cb566b2ff47.gz";
    }
    {
      site = "1AC";
      class = "tumours";
      pdx = false;
      r1 = "Kq/xv/SHA256E-s1502514841--8ea273348107386046c375dfd77e1b2ad0f39f5b6a8465dd64f773eded8dec3e.gz/SHA256E-s1502514841--8ea273348107386046c375dfd77e1b2ad0f39f5b6a8465dd64f773eded8dec3e.gz";
      r2 = "VM/v6/SHA256E-s1498516712--3432e3b0a4a9493f3e4095679b3056d89ce309a4222a06366f00acaea5ee1285.gz/SHA256E-s1498516712--3432e3b0a4a9493f3e4095679b3056d89ce309a4222a06366f00acaea5ee1285.gz";
    }
    {
      site = "1AC";
      class = "tumours";
      pdx = false;
      r1 = "9G/Fg/SHA256E-s1524509770--e1b06759ccf5711124fd54ccb725908102a6aa199fb417504017497b2f5fb249.gz/SHA256E-s1524509770--e1b06759ccf5711124fd54ccb725908102a6aa199fb417504017497b2f5fb249.gz";
      r2 = "qX/8k/SHA256E-s1529030994--4ab79142acfd93eea930d21c0fca15aeb7aff0e15c8d2b583193ee88f86bfab4.gz/SHA256E-s1529030994--4ab79142acfd93eea930d21c0fca15aeb7aff0e15c8d2b583193ee88f86bfab4.gz";
    }
    {
      site = "1AC";
      class = "tumours";
      pdx = false;
      r1 = "jf/qk/SHA256E-s1538319223--5e130b25884b9881c6e349775846ed34bb2fbec53b8de72218dd6b3af3a705ed.gz/SHA256E-s1538319223--5e130b25884b9881c6e349775846ed34bb2fbec53b8de72218dd6b3af3a705ed.gz";
      r2 = "q4/vm/SHA256E-s1550242618--d7a09c848d5496fce419fb3628d8e2afa35817b9a02a337792375c19924b6363.gz/SHA256E-s1550242618--d7a09c848d5496fce419fb3628d8e2afa35817b9a02a337792375c19924b6363.gz";
    }
    {
      site = "1AC";
      class = "tumours";
      pdx = false;
      r1 = "2J/K4/SHA256E-s1814244645--3e88265275e70a87deda84c1f6d79db814d9471eca82d8c94f5bf05ba79b0987.gz/SHA256E-s1814244645--3e88265275e70a87deda84c1f6d79db814d9471eca82d8c94f5bf05ba79b0987.gz";
      r2 = "8k/v7/SHA256E-s1821032211--727390ed38fa563e566038d99a12cc5ce0eaa40f5d8e146580988ec80426aa35.gz/SHA256E-s1821032211--727390ed38fa563e566038d99a12cc5ce0eaa40f5d8e146580988ec80426aa35.gz";
    }
    {
      site = "1E";
      class = "normals";
      pdx = false;
      r1 = "mX/x8/SHA256E-s994507673--b2c78c68f4f77159cea7383348ff11b738db99a5610252c96df2da294231c085.gz/SHA256E-s994507673--b2c78c68f4f77159cea7383348ff11b738db99a5610252c96df2da294231c085.gz";
      r2 = "Mg/p6/SHA256E-s999557239--88c24487107980b94e46ed48bae28c21872acb2bd66a5ca49574be845c391588.gz/SHA256E-s999557239--88c24487107980b94e46ed48bae28c21872acb2bd66a5ca49574be845c391588.gz";
    }
    {
      site = "1E";
      class = "normals";
      pdx = false;
      r1 = "5M/Kj/SHA256E-s940785792--f3eecca2e9296976037ddad4a2c4efc61a45fe00a03c148ed5ad3dc0aa8fca05.gz/SHA256E-s940785792--f3eecca2e9296976037ddad4a2c4efc61a45fe00a03c148ed5ad3dc0aa8fca05.gz";
      r2 = "PG/2G/SHA256E-s945009365--da5bfd5a05ce438cfdb2f054b0a3ca5ac1739d6c24646ad78fce3394ae687881.gz/SHA256E-s945009365--da5bfd5a05ce438cfdb2f054b0a3ca5ac1739d6c24646ad78fce3394ae687881.gz";
    }
    {
      site = "1E";
      class = "normals";
      pdx = false;
      r1 = "8F/0p/SHA256E-s1023713578--3fbbc33a422ade48f56ec69df06b43063189aebc07d5b72a8615d177fa8ff69c.gz/SHA256E-s1023713578--3fbbc33a422ade48f56ec69df06b43063189aebc07d5b72a8615d177fa8ff69c.gz";
      r2 = "vm/8X/SHA256E-s1032629520--dfe59a246b7708cf3d8d19167160d0eaa094db79c1525850e2cf2048b66c9c53.gz/SHA256E-s1032629520--dfe59a246b7708cf3d8d19167160d0eaa094db79c1525850e2cf2048b66c9c53.gz";
    }
    {
      site = "1E";
      class = "normals";
      pdx = false;
      r1 = "kp/v6/SHA256E-s1059845647--c9c34cb6150c0669e0db9aa3b112cf99371b645908f4ee3cbc9f9682dfc35217.gz/SHA256E-s1059845647--c9c34cb6150c0669e0db9aa3b112cf99371b645908f4ee3cbc9f9682dfc35217.gz";
      r2 = "zj/9j/SHA256E-s1073524641--544a6f1c1df7ca611521e533ab3757288e23856a99b9339a57d87ad4c33c2f11.gz/SHA256E-s1073524641--544a6f1c1df7ca611521e533ab3757288e23856a99b9339a57d87ad4c33c2f11.gz";
    }
    {
      site = "1E";
      class = "normals";
      pdx = false;
      r1 = "zx/G5/SHA256E-s1345939484--a207f7028361cb52cf56cab59ac1368b7d72e3dcd5a93e8e4474cd23f707eb79.gz/SHA256E-s1345939484--a207f7028361cb52cf56cab59ac1368b7d72e3dcd5a93e8e4474cd23f707eb79.gz";
      r2 = "Fk/8k/SHA256E-s1358642854--228efcb5c712a5b167d48d69fa8d2db7c6a506367d0e2bb60095353167837771.gz/SHA256E-s1358642854--228efcb5c712a5b167d48d69fa8d2db7c6a506367d0e2bb60095353167837771.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 9.5.24:\nThis does not look like a SCCOHT. Path report says one region is endometrial endometrioid adenocarcinoma. Clare will review path reports. Matt and Justin will follow up on the reads for CDKN2A/B.\n\n\nClare and Ratana meeting 06.07.2023\nSend for WES instead of WGTS. No urgency (still need data), does not have to be TWIST.\n\nClare's meeting 2023.05.18\nKnown plan for block 1E is WGS on the FFPE. No blood (and deceased), so just checking that Block 1E is normal tissue and good for germline. \nPlan: Processed with extraction of germline DNA and send to Sean to assess if good enough for WGS \nOnly germline gene of interest would be SMARCA4 \n\nEmail from Grimmond lab Apr2023\nWe can submit germline DNA from FFPE. BUT:\n*The duplication rate may be higher than standard, and we would need to sequence deeper (150%) to account for formalin fixation degradation and damage. Possible for the control DNA to have tumour cells in the sample preparation during macrodissection and extraction. Germline SNVs will not be called. Only somatic SNVs will be likely be called, and highly unlikely to get SVs, CNVs etc called. WTS would be useful to support any somatic SNVs called in the tumour tissue.\nIt would be worth submitting the samples and if the samples pass QC we could decide then whether to proceed.\n\nClare's Meeting 23.03.2023\n-Don't have blood as patient is deceased. Want normal tissue from the surgery, find good quality. Should be multiple surgeries. Send ALL reports to Gayanie, finding the cleanest normal tissue - Monica emailed 30.03.2023, block requested 05.04.2023. \n-Ask Sean's lab if the normal tissue as germline ok, if not, WES. (Ratana has emailed) \n-The FoundationOne report had many strange findings. \n-Project Meeting discussion. Immune question (RNA data). ";
      date_of_death = "03/2022";
      d_case_summary = "Small cell carcinoma of the ovary hypercalcemic type. (SCCOHT)";
      date_consented = "2021-12-07";
      tumour_type = "SCCOHT";
      tumour_details = "Small cell carcinoma of the ovary hypercalcaemic type (SCCOHT)";
      case_details = "2021-07: Dx undifferentiated carcinoma with SMARCA2 loss, SCCOHT like differentiation after presenting with large bowel obstruction. Extensive pelvic and abdominal disease, with suspicion of thoracic nodes. \nSurgery: Peritonectomy and HIPEC (Mitomycin C) (FFPE Block 1AC - left ovary)\nChemotherapy: Carboplatin, etoposide and atezolizumab x4 cycles\nIHC positive: CD99 (patchy), INI-1, SMARCA4, AE1/3 (focal), CAM5.2 (focal), BAP1, PR (rare, weak positive), SATB2 (weak), CD43 (occasional), CD10 (nonspecific patchy), TLE1 (diffuse positive), SALL4 (patchy), H3K27ME3.\nIHC negative: Desmin, SMA, myogenin, MyoD1, CK7, CK20, PAX8, EMA, D240, WT1, calretinin, ER, HER2, S100, SOX-10, HMB45, Melan-A, MUC-4, STAT-6, brachyury, ERG, CD34, CD31, CD117, DOG1, chromogranin, synaptophysin, CD45, MPO, CD30, CD23, CD35, CD21, inhibin, PLAP, ALK-1, BRAF, TRK(pan), EBER, HHV-8, claudin4, DUX4, CCBN3 (BCOR, non nuclear), panTRK, SF1, NKX3.1, TFE3.\np53: heterogeneous staining\npMMR: MLH1, MSH2, MSH6, PMS2 showed preserved normal staining. \nSMARCA2: highly significant abberant loss of staining.\n\n2021-10: Dx sclerotic metastasis, interval reduction in liver metastatic burden and left pulmonary lesion via CT scan\n\n2021-11: Dx peritoneal disease in pelvis, mid and upper abdomen, nodal disease. New sites of disease in nodes, liver, and bone, via PET scan.\nDx metastases in spine (T2, T10, T12) via MRI.\nCommenced radiotherapy.\n\n2021-12: Chemotherapy: Palbociclib and Atezolizumab, 1x cycle as PD and clinical decline\n\n2021-12: FoundationOne Panel: \nPIK3CA - R88Q\nCTNNB1 - S37F\nPTEN - D51fs*3\nCDKN2A and CDKN2B loss\n\n2022-01: Chemotherapy: Doxorubicin and Paclitaxel, 3x cycles as PD and clinical decline.\n\n2022-03: Deceased. \n\n2023-03: FFPE Block 1AC (left ovary) received.\n\nQuick summary:\n13/7/2021\tdiagnosis SCCOHT\n20/7/2021\tperitonectomy, HIPEC (Mitomycin C)\n1/8/2021\tCarboplatin, Etoposide, Atezolizumab\n1/11/2021\tRTx\n1/12/2021\tAtezolizumab and Palbociclib x1\n1/1/2022\tDoxorubicin and Paclitaxel x3\n1/3/2022\tdeath";
      pre_analysis_mutations = "Peritonectomy with HIPEC (Mitomycin C). Undifferentiated carcinoma with SMARCA2 loss,\nSCCOHT-like differentiation. Extensive IHC studies.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2022-01-17";
      portal_letter = "SFRC01510_ARCPortal_29Nov2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "27Feb23: Jul21 Omentum sample requested from SSWP by Monica \n27Feb23: Jul21 Ovary sample requested from SSWP by Monica \n09Mar23: Jul21 Ovary sample received from SSWP by Monica\n05Apr23: 13Jul21 Block 1E requested from SSWP by Monica\n15Apr23: 13Jul21 Block 1E received from SSWP by Monica\n21Jul23: 07Jul21 request still not processed, checked with Ratana that it's no longer required. ";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01510";
  }
