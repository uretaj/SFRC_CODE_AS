with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vg/V0/SHA256E-s32887285245--db7b641068e485602784491c594c41f110ac96d95b456c6559cecf551a8cf540.gz/SHA256E-s32887285245--db7b641068e485602784491c594c41f110ac96d95b456c6559cecf551a8cf540.gz";
      r2 = "xk/6P/SHA256E-s34726923932--27cc6344dadf01bfea1524149d8607980c1f8a573d48f13a435397b1154cfe1c.gz/SHA256E-s34726923932--27cc6344dadf01bfea1524149d8607980c1f8a573d48f13a435397b1154cfe1c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "J4/x0/SHA256E-s90733844445--5b466b327f76436ebab7cf9edfd5fb445e1f8af3a9148f1bee4b446abfff1f0e.gz/SHA256E-s90733844445--5b466b327f76436ebab7cf9edfd5fb445e1f8af3a9148f1bee4b446abfff1f0e.gz";
      r2 = "K0/pV/SHA256E-s96301505773--45c11e092572cac419859e78a61b6b3abf9b71cdff77d7809a454c3f32a0429f.gz/SHA256E-s96301505773--45c11e092572cac419859e78a61b6b3abf9b71cdff77d7809a454c3f32a0429f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "w2/09/SHA256E-s5695236186--3981f828a47f58961e86ec7e3adffad63f65935481621323a2160aaa8716f0ce.gz/SHA256E-s5695236186--3981f828a47f58961e86ec7e3adffad63f65935481621323a2160aaa8716f0ce.gz";
      r2 = "jf/wv/SHA256E-s5565585298--561ed46a6b2a4a63fd9cfbb8e4628ca51f9ea5ed6b67f2c5d43f8daf3af6ecb1.gz/SHA256E-s5565585298--561ed46a6b2a4a63fd9cfbb8e4628ca51f9ea5ed6b67f2c5d43f8daf3af6ecb1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 15.02.2024\nDiscussed WGS report (SFRC and Grimmond).\n\n2023.11.10\nEmail send to Cass, Sil and Kathy to ask to organise transplant.\n\nClare sample meeting 2023.10.05\nPlan on fresh tissue S1 (30-605 tumour purity): At reception of fresh tissue, patient wasn't consented yet. No tissue went for mice, we have mince available, should we attempt transplant? YES \nBlood available, send for WGS? YES \nPotential good prognosis. \n\nClare meeting 05.10.2023\nReviewed OCT sections from S1.\nPlan: At reception of fresh tissue, patient wasn't consented yet. No tissue went for mice, we have mince available, should we attempt transplant? YES \n\nBlood available, send for WGS? YES \n\nPotential good prognosis. ";
      d_case_summary = "34yo Ovarian cancer\nStaging form: Ovary, Fallopian Tube, and Primary Peritoneal Carcinoma";
      date_consented = "2023-08-22";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell carcinoma of right ovary";
      case_details = "34yo female diagnosed with FIGO stage IIIC clear cell carcinoma of the ovary.\n\nAug 2023 RSO- high grade clear cell carcinoma, immunohistochemistry:\n•\tPositive: PAX8, MMR retained\n•\tNegative: ER, PR\n\nSep 2023 Commenced 1st line carboplatin/paclitaxel\n\ngBRCA and sBRCA/HRD requested by PMCC clinician as at 03Oct.\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    name = "SFRC01792";
  }
