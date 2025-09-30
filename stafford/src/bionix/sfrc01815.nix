with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "MV/kW/SHA256E-s5545886778--6a68bf0f7046bd671db393394b6d84c1e79bd15491a5dc58803367ee4146a087.gz/SHA256E-s5545886778--6a68bf0f7046bd671db393394b6d84c1e79bd15491a5dc58803367ee4146a087.gz";
      r2 = "1W/w8/SHA256E-s5505756605--3bbd74526a52eb784bde5eb45fe2cc3ba822733d8d6fd521799ec659a74d4379.gz/SHA256E-s5505756605--3bbd74526a52eb784bde5eb45fe2cc3ba822733d8d6fd521799ec659a74d4379.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "1w/Jf/SHA256E-s5526938255--86cb5d765c4deb3fabc538f80ede83a9ad8b5123eeee828daf6cb26aefe35295.gz/SHA256E-s5526938255--86cb5d765c4deb3fabc538f80ede83a9ad8b5123eeee828daf6cb26aefe35295.gz";
      r2 = "vG/WX/SHA256E-s5494261956--b27b1ddd9a5d33d813404f7b0ab6866eb7d47dd6fc0a897abddf8cee6538e8af.gz/SHA256E-s5494261956--b27b1ddd9a5d33d813404f7b0ab6866eb7d47dd6fc0a897abddf8cee6538e8af.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "JV/g1/SHA256E-s969807572--2a51eeda9c91763fd9d539c3234438e78b986e19624a9afcacccdea2befb5111.gz/SHA256E-s969807572--2a51eeda9c91763fd9d539c3234438e78b986e19624a9afcacccdea2befb5111.gz";
      r2 = "q6/Mj/SHA256E-s974453531--458d0a78adb61ae3659516f480833e35f2361379f599b920c325012fb42bcb72.gz/SHA256E-s974453531--458d0a78adb61ae3659516f480833e35f2361379f599b920c325012fb42bcb72.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gW/KW/SHA256E-s945309210--e5d19692b8a69eb16f4e3656a5fc3d5f37036f82a56ae07fa6ea5dda4c869ad3.gz/SHA256E-s945309210--e5d19692b8a69eb16f4e3656a5fc3d5f37036f82a56ae07fa6ea5dda4c869ad3.gz";
      r2 = "0Z/kx/SHA256E-s951585108--ebdc9316dbff805df8da7eab36f42d24f991917c1e5be1e30379fe80fb00ea83.gz/SHA256E-s951585108--ebdc9316dbff805df8da7eab36f42d24f991917c1e5be1e30379fe80fb00ea83.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "2024.02.26 - patient is deceased. To submit FFPE DNA for WES, Opal and nanostring (RNA).\n\n2024.02.08 - sample not accepted for WGTS.\n\n2024.01.31 - no response from Sean, Clare said to submit anyway and mention our previous agreement, wanting sequencing on 10 cases.\n\n2024.01.22: Ratana emailed Sean (and Kym) to ask if he will include in his Unmet Needs project.\n\nClare's sample meeting 21.12.2023\nPlan: on FFPE block 1.17: We have blood, send for WES? \nI THINK WE HAVE SENT FFPE SCCOHT TO SEAN FOR WGS - ASK RATANA. IF SO, RATANA COULD EMAIL SEAN AND ASK IF HE WILL RUN THIS CASE - I AM SURE HE WILL PAY FOR IT. IF NOT THEN YES FOR TWIST WES. WE ARE TRYING TO FINISH THE SEQUENCING ON OUR TEN CASES SO THAT WE CAN WRITE UP A PAPER ";
      blood_recall_history = "did not consent for bloods, treating clinician will speak with her at next appointment (with interpreter) to consider amending consent. BM 04Oct2023";
      date_of_death = "01/2024";
      d_case_summary = "? undifferentiated high grade ovarian carcinoma V small cell of ovary hypercalcaemic varient SMARC B4";
      date_consented = "2023-08-25";
      tumour_type = "SCCOHT";
      tumour_details = "SCCOHT";
      case_details = "27yo female Dx with SCCHOT.\n\nAug 2023 TAHBSO + omentectomy + proctosigmoidectomy. Washings positive. \n\t\tLoss of SMARCAA4 (BRG1). SMARCB1 (INI-1) retained. \n\nSep 2023 Commenced carboplatin + etoposide. PAVEP from C2. \n\nNov 2023 Planned for ASCT. \n\nJan 2024 deceased\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01815_ARC_Report_29Aug2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "08Nov2023- Aug2023 tissue requested from Eastern Health by Briony (email).\n09Dec2023 - Aug2023 tissue received from Eastern Health by Haris.";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01815";
  }
