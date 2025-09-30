with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "4k/Qg/SHA256E-s9148981508--859db34e9ee398260b4ba06c3f6c65fd18e7f7e4e791e6b0c2aa0e0ed1f44df3.gz/SHA256E-s9148981508--859db34e9ee398260b4ba06c3f6c65fd18e7f7e4e791e6b0c2aa0e0ed1f44df3.gz";
      r2 = "wQ/Jm/SHA256E-s9112320837--437794b9e830e78f9f6f3de92072722c08aeab7754a3337454040547e14a0230.gz/SHA256E-s9112320837--437794b9e830e78f9f6f3de92072722c08aeab7754a3337454040547e14a0230.gz";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "V7/jX/SHA256E-s9710433394--f67106520485dbb1f71b7281a45ba2544c58d7737531ff0963cf05de8d4a139f.gz/SHA256E-s9710433394--f67106520485dbb1f71b7281a45ba2544c58d7737531ff0963cf05de8d4a139f.gz";
      r2 = "J9/QV/SHA256E-s9800300218--bc14ab71d976d40766ac59d63be8ac7008c3e21b076653ecd23032e53ea56ae8.gz/SHA256E-s9800300218--bc14ab71d976d40766ac59d63be8ac7008c3e21b076653ecd23032e53ea56ae8.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "QX/mW/SHA256E-s4027109137--d0f9e0d99d77a598e1c80d3ac437b21b361a0a7bef2615a7b74cb4e5102021a1.gz/SHA256E-s4027109137--d0f9e0d99d77a598e1c80d3ac437b21b361a0a7bef2615a7b74cb4e5102021a1.gz";
      r2 = "q0/KV/SHA256E-s4127907440--e0f388b26e483042630ce34426c6718d329d73d8d7984d236252d69c6ed5133b.gz/SHA256E-s4127907440--e0f388b26e483042630ce34426c6718d329d73d8d7984d236252d69c6ed5133b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "2021.02.08 Clare and Ratana\nHave blocks 1B and 1C. Extract DNA for WES on both blocks (4 thick slides each), as well as Nanostring and anything Kristy wants.";
      blood_recall_history = "B4 \n21Feb23 - Blood tubes sent and clinic contacted. \npatient texted to arrange day - no reply\n01Mar23 - Text to follow up ";
      d_case_summary = "6 primary cancers from the age of 33y (now 80y) - breast, osteosarcoma, melanoma, lung x3; seen by Ian Collins in W'bool";
      date_consented = "2019-11-26";
      tumour_type = "Other rare";
      tumour_details = "Multiple primary: breast, osteosarcoma, melanoma, lung x3";
      case_details = "6 primary cancers from the age of 33y (now 80y) - breast, osteosarcoma, melanoma, lung x3";
      patient_information_complete = "Incomplete";
      other_tumour_type = "osteosarcoma";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2006 and 2009 lung biopsies requested 09/12/2020\n\n2006 and 2009 lung biopsies received by Warren 17/1/21";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01257";
    predictNeoantigens = true;
  }
