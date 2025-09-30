with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zf/kj/SHA256E-s48550299089--bec297924f3c89457cae2aa1839cc46d5313204e38263d8e89f134678d931e04.gz/SHA256E-s48550299089--bec297924f3c89457cae2aa1839cc46d5313204e38263d8e89f134678d931e04.gz";
      r2 = "wW/KM/SHA256E-s51114055673--fe6ef9bdd871833dfddc2f9e6a8bee498331ddb7ccb29fd521392e4c3bf48158.gz/SHA256E-s51114055673--fe6ef9bdd871833dfddc2f9e6a8bee498331ddb7ccb29fd521392e4c3bf48158.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "66/M8/SHA256E-s80428173747--ad77e658f5924ad619e37cdaa2b4833a4318f48ecde3b3c40b19d4740c523b62.gz/SHA256E-s80428173747--ad77e658f5924ad619e37cdaa2b4833a4318f48ecde3b3c40b19d4740c523b62.gz";
      r2 = "qV/M6/SHA256E-s84424693088--382557ddf68adbe46f82567b55e0948ad434ba62f54cf3efb654d4c55176444b.gz/SHA256E-s84424693088--382557ddf68adbe46f82567b55e0948ad434ba62f54cf3efb654d4c55176444b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "ECS";
      meeting_discussions_follow_up = "RC meeting 14.04.2022\nDiscussed WGS report.\nDiscussion: Missmatch repair mutation is causing high TMB. Need to check status of the patient but most actionable mutation is the KRAS so Beigene trial recommended.  \n\nClare to note - If this was a HGSEC (not carcinosarcoma) and the patient was MMRd single agent immunotherapy would be recommended.  \n\nClare, Ratana, Rae 04.03.2023\nBROCA for Fresh tissue S1\n\nClare's meeting 10.02.2022\nFresh tissue S1: Organise WGS (DNA only)";
      d_case_summary = "uterine carcinosarcoma\nTAH at Mercy Hospital for Women on 22/12/21";
      date_consented = "2021-12-18";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01502";
  }
