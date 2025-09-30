with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m6/9X/SHA256E-s664210055--cb9ada9ff291eb21ceadcb21b28a25164e5059ea8001dbc63c2cdd3a6a22078a.gz/SHA256E-s664210055--cb9ada9ff291eb21ceadcb21b28a25164e5059ea8001dbc63c2cdd3a6a22078a.gz";
      r2 = "97/G1/SHA256E-s661751604--b084072e5012a7a80d36be65cbca3ca8b79eeda8e8b47a740490ad01876625a3.gz/SHA256E-s661751604--b084072e5012a7a80d36be65cbca3ca8b79eeda8e8b47a740490ad01876625a3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GV/qW/SHA256E-s665870038--adb78a41a12a1f380d94ff39a8801da3cdd679ff8e711ac4ebdf8c77a3bc1038.gz/SHA256E-s665870038--adb78a41a12a1f380d94ff39a8801da3cdd679ff8e711ac4ebdf8c77a3bc1038.gz";
      r2 = "pZ/vg/SHA256E-s667178233--eb8a9700a1379185716929cc9fa0936b62d940a22a137a1803e70279c9f40578.gz/SHA256E-s667178233--eb8a9700a1379185716929cc9fa0936b62d940a22a137a1803e70279c9f40578.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2K/04/SHA256E-s660482086--7bd8bbf2c6815a825da79e424cb2876394bd9d43dca97e5870d4be216f0038bd.gz/SHA256E-s660482086--7bd8bbf2c6815a825da79e424cb2876394bd9d43dca97e5870d4be216f0038bd.gz";
      r2 = "qf/Vx/SHA256E-s660012200--00317a0b9f073b806b19b42051cadef489d77f6781feb511be7f65c18cbed44c.gz/SHA256E-s660012200--00317a0b9f073b806b19b42051cadef489d77f6781feb511be7f65c18cbed44c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2m/mm/SHA256E-s685292492--5b083f8825e926f95ec4fa1351bb91523ed876f9ce8cc0474d46fbb3e51ed786.gz/SHA256E-s685292492--5b083f8825e926f95ec4fa1351bb91523ed876f9ce8cc0474d46fbb3e51ed786.gz";
      r2 = "Xx/Z8/SHA256E-s688636143--f64fea4216eda6ee73217aea012d918112009ce03297bff94d155da5286bc76b.gz/SHA256E-s688636143--f64fea4216eda6ee73217aea012d918112009ce03297bff94d155da5286bc76b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "CLare's meeting notes 2021.07.29\nSFRC01422_1A, Find other histopath reports and blocks (bowel), with higher tumour purity. MMR testing? Reece to help. ";
      d_case_summary = "74 year old female; multiple primaries: kidney, mismatch repair-deficient colorectal, contralateral breast.";
      date_consented = "2021-06-16";
      tumour_type = "Renal cancer";
      tumour_details = "2001 - kidney  2010 - right breast cancer  2015 - bowel cancer  2021 - left breast cancer";
      case_details = "74 years old \n2001 - kidney \n2010 - right breast cancer \n2015 - bowel cancer \n2021 - left breast cancer (Block received) ";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRAF";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2021 Breast carcinoma block requested from TissuPath on 22/6/21 by Warren, received 1/7/21";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    inherit samples;
    name = "SFRC01422";
    capture = TwistV2HR;
  }
