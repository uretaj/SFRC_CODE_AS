with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1AA";
      class = "tumours";
      pdx = false;
      r1 = "9W/Wg/SHA256E-s3560267838--670422b4ba37f5916979cd4fa477d6d0fc11bbcb05ece125d567fddbf5dc75b0.gz/SHA256E-s3560267838--670422b4ba37f5916979cd4fa477d6d0fc11bbcb05ece125d567fddbf5dc75b0.gz";
      r2 = "18/58/SHA256E-s3843061230--05b0700c0316451b1d0f57575e43035ec950b16d2a7ca385ac9960c088c00b70.gz/SHA256E-s3843061230--05b0700c0316451b1d0f57575e43035ec950b16d2a7ca385ac9960c088c00b70.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Z2/MQ/SHA256E-s2959915574--21558413c11c19b6f0b377ce795e1afd75d8646246750d301fd6b7a01128df48.gz/SHA256E-s2959915574--21558413c11c19b6f0b377ce795e1afd75d8646246750d301fd6b7a01128df48.gz";
      r2 = "Z9/83/SHA256E-s3024852246--918ba4ac8e4ea19d3851c6a60640f74e31aa500e10aa374bfd8ee935e69c240c.gz/SHA256E-s3024852246--918ba4ac8e4ea19d3851c6a60640f74e31aa500e10aa374bfd8ee935e69c240c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Rachael and Clare meeting 18.05.2022\nCS - Don't bother recalling more blocks for BROCA as very likely to have no viable tumour post 6x cycles of neoadjuvant chemotherapy (BRCA2 mutation carrier & path CR on pathology at IDB surgery). \n\n**If needed for neoantigens analysis, Kristy can recall blocks\n\n\nBroca meeting Clare/Amandine 07/07/2021\nSend SFRC01036_16973613HISTG for Broca, priority cat 2";
      d_case_summary = "HGS PPC on PARPi, Breast IDC, Mucinous lung, gBRCA2";
      date_consented = "2017-01-10";
      tumour_type = "HGS primary peritoneal";
      tumour_details = "HGS PPC (primary peritoneal cancer) on PARPi, Breast IDC, Mucinous lung";
      pre_analysis_mutations = "gBRCA2 (PPC)";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Block containing IDC requested for Kristy on 04/02/2020 by Joshua \n\nSlides received 21/05/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_germline_mutations = "gBRCA2";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01036";
    capture = CREv2;
  }
