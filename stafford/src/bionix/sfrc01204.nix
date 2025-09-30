with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "Zv/mM/SHA256E-s2111448257--6decb6f373b315b17b5c480b52f25c0e3cb31637a5ab3a2c290ec4b587d3ef92.gz/SHA256E-s2111448257--6decb6f373b315b17b5c480b52f25c0e3cb31637a5ab3a2c290ec4b587d3ef92.gz";
      r2 = "27/v3/SHA256E-s2091268046--e4a3ec05dd6b3eaad95eb3a519632a001862da31760defc3c773e9aed6ccae89.gz/SHA256E-s2091268046--e4a3ec05dd6b3eaad95eb3a519632a001862da31760defc3c773e9aed6ccae89.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1g/k8/SHA256E-s47886355881--4698c5386b1e9f1d09467e1ff301448e40b8fed58c0ea6a82178e09f334add4b.gz/SHA256E-s47886355881--4698c5386b1e9f1d09467e1ff301448e40b8fed58c0ea6a82178e09f334add4b.gz";
      r2 = "m6/VZ/SHA256E-s51387469659--0178ed1a7f0c8519df7bdc7e5fc6c433892599c8e13877aa56aefefcb5fc37d7.gz/SHA256E-s51387469659--0178ed1a7f0c8519df7bdc7e5fc6c433892599c8e13877aa56aefefcb5fc37d7.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "zQ/qf/SHA256E-s77936329171--cd3ab2fbc80ea47392b193e7e37edafc717ca83fac8dc30ffa9d17e68fdafc59.gz/SHA256E-s77936329171--cd3ab2fbc80ea47392b193e7e37edafc717ca83fac8dc30ffa9d17e68fdafc59.gz";
      r2 = "KJ/Mp/SHA256E-s82591307725--49e37a174327326b9e1f382fc84dd67794a0ff1d1f319175c07718a35615c918.gz/SHA256E-s82591307725--49e37a174327326b9e1f382fc84dd67794a0ff1d1f319175c07718a35615c918.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "Meeting notes 2.4.20:\nNeed to get RNAseq data for this case. \n\nNow has metastatic PEComa, peritoneal mass and possible lung met - commenced everolimus (used as a down-staging agent) - not based on TSC2 mutation as they have no molecular data yet \n\nTony and Clare to approve report and forward to clinician - may help compassionate access to drug (mTORi) \n\nMeeting notes 2019.10.24\nPlan:  Amandine to organise Ki67 staining for this case in histology.\nNeeds urgent WGS - Amandine to prepare DNA from sample (95% purity by Gayanie review) \n\nMeeting notes 2019.09.05\nPlan: Clare to speak to clinicians to discuss prognosis, request ki67 staining - if expression is high send for WGS.  \n\nMeeting notes 22.08.2019\nDecision:  Amandine to ask Damien for a summary of all NOMINATOR PEComa cases - and check the literature for PEComa (Damien) \nWill do WGS of one of the samples so need Gayanie's final opinion of these samples (delete her old comments) ";
      date_consented = "2019-07-19";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "uterine PEComa";
      case_details = "WGS clinical notes \n\"43 yo woman, final PATH: : Uterine PEComa (perivascular Epitheloid Cell Tumour). Received 1.8Gy pre-op, however due to rapid tumour progression, RT ceased and underwent upfront surgery. High grade, full  thickness; to receive further RT. Poor prognosis.\n\n\nFresh tissue obtained from RWH surgery (received 1 day post surgery)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01204";
  }
