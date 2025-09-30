with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "v5/zZ/SHA256E-s4797338925--7cf7e250946d9c3d8c462a96c4f51b53a9ae265140e433448fb569217100f5bb.gz/SHA256E-s4797338925--7cf7e250946d9c3d8c462a96c4f51b53a9ae265140e433448fb569217100f5bb.gz";
      r2 = "x0/X8/SHA256E-s4753887514--7056207a8b8d09656b5308aa3035593fa50d2008c81cf281cdbbfd1dfcad0ae0.gz/SHA256E-s4753887514--7056207a8b8d09656b5308aa3035593fa50d2008c81cf281cdbbfd1dfcad0ae0.gz";
    }
    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "Q4/MQ/SHA256E-s4740907055--e5da482bcee9f079ec2ccf3b36a9908aac4483b918a55e89287602f38f8d0b01.gz/SHA256E-s4740907055--e5da482bcee9f079ec2ccf3b36a9908aac4483b918a55e89287602f38f8d0b01.gz";
      r2 = "w0/Gm/SHA256E-s4727379625--ebaf8dec369d153d1e9ad07060b59e7d7d700bea4c161e8c92f9e0bcb84aefff.gz/SHA256E-s4727379625--ebaf8dec369d153d1e9ad07060b59e7d7d700bea4c161e8c92f9e0bcb84aefff.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vw/4q/SHA256E-s4603097746--0b83e4ee25fed29119f563dd1bab429d2ff6fb591098423d209783e85a9de289.gz/SHA256E-s4603097746--0b83e4ee25fed29119f563dd1bab429d2ff6fb591098423d209783e85a9de289.gz";
      r2 = "6G/v9/SHA256E-s4609326106--13cac4e440900eee746db9be5bec8e7af6bd84ebb3e675e61fb5cf55cec1ef1c.gz/SHA256E-s4609326106--13cac4e440900eee746db9be5bec8e7af6bd84ebb3e675e61fb5cf55cec1ef1c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZV/09/SHA256E-s4773934497--82c04706483ca67391e17952c89ff0382a42ae95a5f3dd4db882d7e838fb5110.gz/SHA256E-s4773934497--82c04706483ca67391e17952c89ff0382a42ae95a5f3dd4db882d7e838fb5110.gz";
      r2 = "VX/Vm/SHA256E-s4814607559--57703ee63f6c737d7ba68940de0a60bddd5e2d2ca576b87977b26c76ca96657e.gz/SHA256E-s4814607559--57703ee63f6c737d7ba68940de0a60bddd5e2d2ca576b87977b26c76ca96657e.gz";
    }
    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "jV/mx/SHA256E-s8849424519--40ab81d485c6743812a4d9e50cdde9b47a296cc2309e438c5f332ae6187ac7b7.gz/SHA256E-s8849424519--40ab81d485c6743812a4d9e50cdde9b47a296cc2309e438c5f332ae6187ac7b7.gz";
      r2 = "Mm/8z/SHA256E-s8844668803--1d18c4ef49fc35cdd0302f26c751c2c87cea0204799be6a2cf951eac2889627c.gz/SHA256E-s8844668803--1d18c4ef49fc35cdd0302f26c751c2c87cea0204799be6a2cf951eac2889627c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kG/zZ/SHA256E-s4289273351--1ebbc6865191d1e6a922b47efda914b5f51ac0ecee71e06b74d2583b8760f278.gz/SHA256E-s4289273351--1ebbc6865191d1e6a922b47efda914b5f51ac0ecee71e06b74d2583b8760f278.gz";
      r2 = "6M/j8/SHA256E-s4337375258--31656ca2a818b4a8d13b06076e62a5dbbbef1e2bb4efadde63b049fabf0205d9.gz/SHA256E-s4337375258--31656ca2a818b4a8d13b06076e62a5dbbbef1e2bb4efadde63b049fabf0205d9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 1.2.2024 - TWIST WES Block 1J:\n- Patient was completing cycle 6 of dox before going on to IMPARP \n- Report, but not urgent as important findings already reported from TSO500  \n- Briony to remind Clare to follow up with treating clinician \n- Refer to FCC \n\n\nEmails 30.08.2023\nSend for TSO500 urgently still do WES.\n\nSample meeting 11.08.2023\nPlan on FFPE block 1J: Send for WES  \nYES PLEASE SEND ORIGINAL FFPE FOR TWIST WES (NEED HRD STATUS) ";
      urgency_details = "Patient has progressed. Please prioritise. ML";
      d_case_summary = "uLMS - progressing";
      tso500_external = "SFRC01708_TSO500_20Sep2023_Redacted.pdf";
      date_consented = "2023-02-01";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "58 years old female  \n\n2021-02: \tendometrial biopsy  \n\n2021-04:\tSurgery, FFPE block 1J received  \nIHC positive: calponin, desmin, caldesmin, SMA \nIHC negative: CD10, cyclin D1, ER, PR and HMB45 \nKi67%: 60% \n\n2021-05: \tRadiotherapy  \n\n2022-05:\t        Radiotherapy on lung nodules \n\n2023-01: \tDisease progression, referred to MOST \n\n2023-03: \tBlood B1 received \n\n2023-06:\tProgressive disease. \n\n2023-08:\tCommenced doxorubicin. \n\n2023-09:\tTSO500 reported. BRCA2 copy number loss. Inactivating TP53 variant detected.  TMB low. MSI stable.\n\n2023-10:\tLast clinical update: Mixed response to doxorubicin. Plan to complete C6 doxorubicin, re-stage, offer IMPARP (pamipairb + tiselizumab). \n";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "15Mar23: Apr2021 sample requested from Dorevitch pathology by Monica\n20Jul23: Apr21 sample re-requested from Dorevitch by Monica (initially request did not go through to the correct fax number)\n31Jul23: Apr21 sample received from Dorevitch by Monica ";
    };
    inherit samples;
    name = "SFRC01708";
    capture = TwistV2HR;
  }
