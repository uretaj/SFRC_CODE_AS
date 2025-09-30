with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "mj/2Q/SHA256E-s2822005965--7e1384cdc7e92f26130012c0a293a5a40869bffbac2e3bd1970d2e76b61fc9a0.gz/SHA256E-s2822005965--7e1384cdc7e92f26130012c0a293a5a40869bffbac2e3bd1970d2e76b61fc9a0.gz";
      r2 = "9G/k4/SHA256E-s2811905918--7670eb69b8b592191eecfa98a5b5333a23bf1f3751f9868452a8ced66506e004.gz/SHA256E-s2811905918--7670eb69b8b592191eecfa98a5b5333a23bf1f3751f9868452a8ced66506e004.gz";
    }
    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "4w/MM/SHA256E-s2746887706--64b47a978e0bf493a0599fae1ba225527921fef78a0cb11bebcaa7bfeb6912d6.gz/SHA256E-s2746887706--64b47a978e0bf493a0599fae1ba225527921fef78a0cb11bebcaa7bfeb6912d6.gz";
      r2 = "PF/53/SHA256E-s2750718784--9979c27e715714be9a2069cec7b15ca0c849b28742dd949fe0281b46cb81c57f.gz/SHA256E-s2750718784--9979c27e715714be9a2069cec7b15ca0c849b28742dd949fe0281b46cb81c57f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kM/xP/SHA256E-s4555322387--81e8b9ea75a5877a5a3123aa88eb1bda6e748dd305303ddf7d15deff9acbcc08.gz/SHA256E-s4555322387--81e8b9ea75a5877a5a3123aa88eb1bda6e748dd305303ddf7d15deff9acbcc08.gz";
      r2 = "Wp/7v/SHA256E-s4576958153--c2fe75275ea3aa68ee03356fb1d2770a4da62e789d2ea226bf5cc9df3f12ac3d.gz/SHA256E-s4576958153--c2fe75275ea3aa68ee03356fb1d2770a4da62e789d2ea226bf5cc9df3f12ac3d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6Q/J0/SHA256E-s4717645442--fcbf27a42830b663e04e17e8a411add0ecef8026a221608d8a3b9b345f1eeeb4.gz/SHA256E-s4717645442--fcbf27a42830b663e04e17e8a411add0ecef8026a221608d8a3b9b345f1eeeb4.gz";
      r2 = "JM/W8/SHA256E-s4775970115--62c0d72b7bbdff5bb4e0953bddfa7e9f8cb85341d20565dfe647ee06fa859c6f.gz/SHA256E-s4775970115--62c0d72b7bbdff5bb4e0953bddfa7e9f8cb85341d20565dfe647ee06fa859c6f.gz";
    }
    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "wx/7P/SHA256E-s5267996602--6cf0f6441967cc34c47d9953f03595069cd90d9540c1d0ec0027f34475726377.gz/SHA256E-s5267996602--6cf0f6441967cc34c47d9953f03595069cd90d9540c1d0ec0027f34475726377.gz";
      r2 = "60/MW/SHA256E-s5285504188--cc0d225f76833de028c1ac0e88a5dbaae185dcec018249d93da5053e9acfe3a1.gz/SHA256E-s5285504188--cc0d225f76833de028c1ac0e88a5dbaae185dcec018249d93da5053e9acfe3a1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vg/66/SHA256E-s4155714095--41f681b00829916c152cae6ed5cbc618778153dae0d0f83f2751f64e6c9c813f.gz/SHA256E-s4155714095--41f681b00829916c152cae6ed5cbc618778153dae0d0f83f2751f64e6c9c813f.gz";
      r2 = "Mv/xg/SHA256E-s4219865577--93d7bfec2a5fb07b36792281626f3a4441ac887084e36cf858a0bcba1d1f8255.gz/SHA256E-s4219865577--93d7bfec2a5fb07b36792281626f3a4441ac887084e36cf858a0bcba1d1f8255.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 1.2.2024 - TWIST WES Block 1.12:\nReport to be prepared.\n\nClare's meeting 20.04.2023\nReviewed FFPE Block 1.12\nNo fresh tissue from this surgery, so no WGS. For this block, do DNA and RNA (to keep), WES on DNA. \nThis was a Peter Mac surgery. Give Rosie McBain MACs buffer (x6), for these types of surgery. Tissue collected and held until patient wakes up and consents.";
      blood_recall_history = "17Feb23 - VM Left\n24Feb23 - Received blood pack - Mandy in discussions with path clinic\n01Mar23 -Called Path VM left";
      urgency_details = "?? was listed in the spreadsheet at urgency 1";
      d_case_summary = "resected probable adenosarc uterus w rhabdo overgrowth (in path R/V).";
      date_consented = "2023-02-07";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Probable adenosarcoma of uterus with rhabdomysarcomatous overgrowth";
      case_details = "32 yo female \n\n2022-12: Initial diagnosis  \n\n2023-01: Surgery TAHBS \nIHC positive: CD56, SALL4, WT1, CD10, myogenin, CK MNF116, CK mix, SMA, desmin, MSA, caldesmon, myoglobin, ERG and ER \nIHC negative: HMB45, CD117, ALK-LUNG and STAT6. \nStaining for BRG1 is preserved  \nDiffuse staining for P53, patchy Cyclin D1,  \n\n2023-03: Received blood B1 and FFPE block 1.12  ";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "15Mar23: Jan23 sample requested from Austin pathology by Monica\n23Mar23: Jan23 sample received from Austin pathology by Monica";
    };
    inherit samples;
    name = "SFRC01717";
    capture = TwistV2HR;
  }
