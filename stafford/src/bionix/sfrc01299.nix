with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "f7/V8/SHA256E-s16937298308--c1e98f0453aa3c82b2880fef78933a6a1dd6fd2415a839c1261f317d338a4e27.gz/SHA256E-s16937298308--c1e98f0453aa3c82b2880fef78933a6a1dd6fd2415a839c1261f317d338a4e27.gz";
      r2 = "fV/V7/SHA256E-s15693210411--7fef84b14e39175b59dd72480ab5da97186d23af13768a5912a88a4c4dab69fb.gz/SHA256E-s15693210411--7fef84b14e39175b59dd72480ab5da97186d23af13768a5912a88a4c4dab69fb.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "wq/4g/SHA256E-s7105608823--720a471b01256d30665b055caf3864bee105287665fa0244ea691169e6c48769.gz/SHA256E-s7105608823--720a471b01256d30665b055caf3864bee105287665fa0244ea691169e6c48769.gz";
      r2 = "62/PG/SHA256E-s7315019406--f466d653ffd909e4a29db84ec56c5d94b2b81644a9c0b3250d970448b2d970b2.gz/SHA256E-s7315019406--f466d653ffd909e4a29db84ec56c5d94b2b81644a9c0b3250d970448b2d970b2.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G4/Z1/SHA256E-s6453207953--5433ebdd0499c42d97af1eb80fe4a442397c4af6ebb7d9c676199573a19ab21d.gz/SHA256E-s6453207953--5433ebdd0499c42d97af1eb80fe4a442397c4af6ebb7d9c676199573a19ab21d.gz";
      r2 = "17/Xj/SHA256E-s6160763250--3bade601aec589e30d0d87dfe21c1ebfe6f84d541933e9080a0704f41b532a17.gz/SHA256E-s6160763250--3bade601aec589e30d0d87dfe21c1ebfe6f84d541933e9080a0704f41b532a17.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fw/z2/SHA256E-s2433257089--3bf36e2fea09b736c094619ab384427d4aaef2f6dfd3f8ba47c18d3d243b1c4a.gz/SHA256E-s2433257089--3bf36e2fea09b736c094619ab384427d4aaef2f6dfd3f8ba47c18d3d243b1c4a.gz";
      r2 = "1F/qV/SHA256E-s2553933553--2e22265ea194f48aa977adfd9f1c5d207682542a72ca6874739f8730e3fd2a11.gz/SHA256E-s2553933553--2e22265ea194f48aa977adfd9f1c5d207682542a72ca6874739f8730e3fd2a11.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 08.09.2022\nDiscussed BROCA results.\nChase up BRIP1 & KRAS missing from BROCA report. \nBRIP1 c.3444C>A clinvar: benign/uncertain significance \n\nClare note 6.08.2021: This case to be sent for WES as well as BROCA please\n\nMeeting note 03.05.2021\nSend sample for BROCA, not WES.\n\nMeeting notes 11.09.2020\nReview of block 1A - 40% tumour. To do WES, but need blood (Angela to organise).";
      myriad_report = "SFRC01299_MyriadResult_16Feb22_Redacted.pdf";
      d_case_summary = "mesonephric ovarian cancer, Bloods done on 18 Nov 2020. Received on 19th.";
      date_consented = "2020-05-06";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "mesonephric ovarian cancer    Genetic panel found BRIP1 mutation (unclassified variant of BRIP1, class 3, not considered pathogenic).";
      case_details = "LSO in Nov 2019 Dx mesonephric carcinoma\nCarboplatin + Paclitaxel x 3 in December 2019\nMarch 2020, Hysterectomy, RSO, high anterior resection, omentectomy, node sampling\nMarch 2020: carboplatin and paclitaxel\n\nLong standing Hx of endometriosis, with multiple prior surgeries, a recent one of which discovered a alrage pelvic mass.\n\nCT scan demonstrated postoperative changes with stranding, but no clear evidence of disease Also underwent thyroid ultrasound.";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 2";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2019 Adenocarcinoma recalled from RPAH for Clare via fax on 07/08/2020 by Josh\n\n2019 adenocarcinoma block 1A received 24/08/2020 by Josh";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01299";
  }
