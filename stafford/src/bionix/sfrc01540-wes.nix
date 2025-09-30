with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "w7/z7/SHA256E-s14227265581--7966ada07b00280a52869c185d45723ff96be62c5c85f75516f13b96121ac95e.gz/SHA256E-s14227265581--7966ada07b00280a52869c185d45723ff96be62c5c85f75516f13b96121ac95e.gz";
      r2 = "x3/xp/SHA256E-s14396468803--ea64108babdddda2e9e9d8a19821cb0bfdfdd6b9f8351248d833df99bf873e3d.gz/SHA256E-s14396468803--ea64108babdddda2e9e9d8a19821cb0bfdfdd6b9f8351248d833df99bf873e3d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "P0/4q/SHA256E-s6549436261--e47b33321dce02bc724921df135feee511e7697a468023a1f18a5339f5c17d35.gz/SHA256E-s6549436261--e47b33321dce02bc724921df135feee511e7697a468023a1f18a5339f5c17d35.gz";
      r2 = "wZ/kG/SHA256E-s6964982476--cf5d4d8d78ff683e4b8232ebf133fe0185e08d06be1f3cb17f30392ed0f22812.gz/SHA256E-s6964982476--cf5d4d8d78ff683e4b8232ebf133fe0185e08d06be1f3cb17f30392ed0f22812.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0093";
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 13.10.2022\nDiscussed WGS report. Also have WES on earlier sample.\nDiscussion: C5 subtype - high amplification of HMGA2 (CN 23). Chromatin binding factor; linked with EMT. Potential for eribulin?? Not clinically reportable; research only. \n\nBorderline MSH2 & MSH6 amplification, but in combination with high TMB not trusted. Patient is HR-P  \n\nRC meeting 05.05.2022\nAsha to do extraction for S1 sooner rather than later. \nFFPE sample - WES (when it's sorted & when blood has arrived) \nBROCA - DNA from FFPE and OCT \nKas to organise methylation \n\nRC meeting 17.03.2022\nMicrodissect S1, Briony/Mandy to organise blood.\nSend for WGS";
      myriad_report = "SFRC01540_MyriadResult_28Oct2022_29_Redacted.pdf";
      date_of_death = "12/2023";
      d_case_summary = "HGSOC";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "64yo woman\n\n2019-05: diagnosis of HGSOC, BRCA1/2 WT\n\n2019-06: TLH/BSO. Fallopian tube tissue 1E fixed and blocked.\n\n2017-07:\nIHC positive: p53 (mutation type), CK7, WT1, PAX8, ER (2-3+ in 50%), PR (1+ in 50%)\nIHC negative: CK20\n\n2019-10: completed 1st line chemo (6x carbo/pacli)\n\n2020-10: completed bevacizumab\n\n2022-03: Fresh tissue S1 of core biopsy of fresh pelvic mass received. Block of tissue 1E received.\n\n2022: 2nd line chemo commenced.";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 29";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "11/03/2022: June 2019 sample block requested from RWH pathology by Devindee.\n23/03/2022: June 2019 slides received from RWH pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01540";
  }
