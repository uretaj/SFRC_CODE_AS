with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.2 (#2)";
      class = "tumours";
      pdx = false;
      r1 = "5z/j1/SHA256E-s14805422901--22118191d62ecf389cc185d391a7e0a4c8d7d4eec3369546585422568153d5d8.gz/SHA256E-s14805422901--22118191d62ecf389cc185d391a7e0a4c8d7d4eec3369546585422568153d5d8.gz";
      r2 = "XG/6m/SHA256E-s15240624128--53e504a263d085c903d363636aa0fb5e0e544c37eba9a058f3c87be4b7a2835a.gz/SHA256E-s15240624128--53e504a263d085c903d363636aa0fb5e0e544c37eba9a058f3c87be4b7a2835a.gz";
    }
    {
      site = "1.2";
      class = "tumours";
      pdx = false;
      r1 = "PF/Vk/SHA256E-s16948645157--e3f9b446f9a32419c7e456fad697c225655c304ff1df301106f476a2b2c5215d.gz/SHA256E-s16948645157--e3f9b446f9a32419c7e456fad697c225655c304ff1df301106f476a2b2c5215d.gz";
      r2 = "2v/2x/SHA256E-s17366958525--3ba396639b1e8e03152dc74adc5209e24d1e52e78012d0907461c926979a75f0.gz/SHA256E-s17366958525--3ba396639b1e8e03152dc74adc5209e24d1e52e78012d0907461c926979a75f0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fm/zP/SHA256E-s4582413794--8764e9593f4958a4c7a1c408c1371c1477f97fdd5c11ae6326b87ebc0112d24f.gz/SHA256E-s4582413794--8764e9593f4958a4c7a1c408c1371c1477f97fdd5c11ae6326b87ebc0112d24f.gz";
      r2 = "xq/Jf/SHA256E-s4780789765--4652b9cadf5ecdb540821ad9cac417ffb945106f1cb0f88cfdea9058abc135b5.gz/SHA256E-s4780789765--4652b9cadf5ecdb540821ad9cac417ffb945106f1cb0f88cfdea9058abc135b5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Amandine emailed Briony/Mandy to follow up on FCC report (31.03.2022). \n01.04.2022, Mandy following up with treating clinician, possible no FFC, patient deceased. \n\nClare's meeting 20.21.2021\nSFRC01431_1.2: Do WES \nHER2 IHC - would expect to be negative. So do not do IHC. ";
      date_of_death = "02/2022";
      d_case_summary = "Moderately differentiated squamous cell carcinoma of vulva\n2018 Dx vulva ca- vulvectomy and then multiple repeat surgical resections\n2019 - Recurrence- resection and left ileo -femoral lymphadenectomy - Chemo-radiation \nMarch 2021: recurrence\nCT May (baseline scan): Recurrent nodal pelvic side wall metastasis( in previously rated filed)   Subcentimetre left common iliac lymph node subcentimetre nodule at the dome of the bladder likely metastatic disease. \n Treatment complicated by lymphedema right";
      date_consented = "2021-07-01";
      tumour_type = "Gynae cancer other";
      tumour_details = "Moderately differentiated squamous cell carcinoma of vulva";
      case_details = "03-2018.    Diagnosis and vulvectomy (block 1.2 received, 50% within circled area)\nIHC positive: HSIL/VIN3, P16\n\nThroughout 2018: multiple surgical resections for recurrence \n\n2019     surgery and chemoradiation\n\n2021-07: Blood B1 received \n\nCarbo/paclitaxel\n\nReferred to FCC";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2018 slides received by Devindee 07/12/2021.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01431";
  }
