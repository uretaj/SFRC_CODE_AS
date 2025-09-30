with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1Z/v4/SHA256E-s3920816030--1e3829ba333a0ce718f2d875bc1d725670d56fa99a41cc25a0d5e65d275bb5ee.gz/SHA256E-s3920816030--1e3829ba333a0ce718f2d875bc1d725670d56fa99a41cc25a0d5e65d275bb5ee.gz";
      r2 = "Xm/0M/SHA256E-s4013209568--264db4722b907c63aab88e20fcd9eacf69e7c9ba1eb14a9d0ee6afba75f50bd0.gz/SHA256E-s4013209568--264db4722b907c63aab88e20fcd9eacf69e7c9ba1eb14a9d0ee6afba75f50bd0.gz";
    }
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "5J/MM/SHA256E-s15197901818--f11456f0a9304e7001d41b292bd58f6c3b97e1d84e4ea6328940dbc1f45d6fc8.gz/SHA256E-s15197901818--f11456f0a9304e7001d41b292bd58f6c3b97e1d84e4ea6328940dbc1f45d6fc8.gz";
      r2 = "jJ/zV/SHA256E-s15650970093--e47284ebcd3a8bd8156391fab669d32d17b0f6aafafe77b9b38cb0afcdd2389d.gz/SHA256E-s15650970093--e47284ebcd3a8bd8156391fab669d32d17b0f6aafafe77b9b38cb0afcdd2389d.gz";
    }
    {
      site = "A6";
      class = "tumours";
      pdx = false;
      r1 = "2W/QJ/SHA256E-s13991766632--c9acdf4cd30d2b2f6ef959f09f4d874ca4bcbb24db0b0e1fa29ba326c50f4da1.gz/SHA256E-s13991766632--c9acdf4cd30d2b2f6ef959f09f4d874ca4bcbb24db0b0e1fa29ba326c50f4da1.gz";
      r2 = "XM/Zf/SHA256E-s14195206643--f7991309ef6cc5c0675cef374595c5ceed7929e9abc6889ab5df69ef18bc2411.gz/SHA256E-s14195206643--f7991309ef6cc5c0675cef374595c5ceed7929e9abc6889ab5df69ef18bc2411.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 02.12.2021\nBlock A1 and A6: WES on both blocks (STUMP and LMS - not uLMS).";
      d_case_summary = "41 F. \n1. Sacrococcygeal teratoma diagnosed at age 2. Surgery 1980. Metastatic disease in ischium\n1981. Chemoradiation (Adriamycin, Dactinomycin, Vincristine and Cyclophosphamide). No disease recurrence.\n2. Left papillary thyroid carcinoma. Diagnosed Sep 2019. Background of multinodular goitre on thyroxine. Surgery performed, total thyroidectomy in July 2020 followed by adjuvant radioactive iodine ablation.\n3. Pelvic leiomyosarcoma (multiple lung nodules of unknown significance). BRCA VUS. MoST molecular profiling show no actionable mutation.\na. 2017 Pelvic mass -had bilateral salpingo-oophorectomy and resection of cervical stump (previous total hysterectomy). Histopath: Uterine smooth muscle tumour of unknown malignant potential (STUMP).\nb. 2019 Recurrent pelvic mass. Had laparotomy, resection of pelvic mass, partial cystectomy ";
      date_consented = "2020-12-24";
      tumour_type = "Other rare";
      tumour_details = "thyroid cancer, pelvic STUMP, sacrococcygeal teratoma";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      other_tumour_type = "STUMP";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2017 and 2019 blocks received from Royal Hospital for Women NSW by Warren 26/10/21";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01360";
    predictNeoantigens = true;
  }
