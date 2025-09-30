with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.5_rerun";
      class = "tumours";
      pdx = false;
      r1 = "Gj/FV/SHA256E-s16499597697--4c7aee0d5f67bc7e4be0d880a93a2435cd04b27db09e8650aec80a77ce03b27d.gz/SHA256E-s16499597697--4c7aee0d5f67bc7e4be0d880a93a2435cd04b27db09e8650aec80a77ce03b27d.gz";
      r2 = "FM/8p/SHA256E-s17569734058--3e99a35d680c1cbee9e47e347deecf7407cb6cbdcd554b81dcd5c9479d3fcea2.gz/SHA256E-s17569734058--3e99a35d680c1cbee9e47e347deecf7407cb6cbdcd554b81dcd5c9479d3fcea2.gz";
    }
    {
      site = "1.5 (#2)";
      class = "tumours";
      pdx = false;
      r1 = "5P/9x/SHA256E-s15811659854--a01c0a88a3712307a9b43072e59bf6abf7eaba26458d734985cad867057cf14d.gz/SHA256E-s15811659854--a01c0a88a3712307a9b43072e59bf6abf7eaba26458d734985cad867057cf14d.gz";
      r2 = "wq/gp/SHA256E-s16139625618--031607dcd1730490fc8070b13aca067a5efd4145117f013df8c0b3e4f34166f1.gz/SHA256E-s16139625618--031607dcd1730490fc8070b13aca067a5efd4145117f013df8c0b3e4f34166f1.gz";
    }
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "gk/MM/SHA256E-s16350060751--a45512fe1f507faad8bedaf8a94f239f9aa1282ada7378b2de79389f041d62d9.gz/SHA256E-s16350060751--a45512fe1f507faad8bedaf8a94f239f9aa1282ada7378b2de79389f041d62d9.gz";
      r2 = "GK/WX/SHA256E-s16952891852--eda479351bf381edf237c0aa1db4ede74eda97facd0552f16fc9bac3cc6722cc.gz/SHA256E-s16952891852--eda479351bf381edf237c0aa1db4ede74eda97facd0552f16fc9bac3cc6722cc.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7m/FZ/SHA256E-s5059743976--f8e5c2301e3b2689dfd29c66be51aa9e7b448939b8e915565471ff51b318977d.gz/SHA256E-s5059743976--f8e5c2301e3b2689dfd29c66be51aa9e7b448939b8e915565471ff51b318977d.gz";
      r2 = "v8/fj/SHA256E-s5335596467--df89d58b36893acc37cd41028d47e1313232749f1cfafbc4cffe5f838279558b.gz/SHA256E-s5335596467--df89d58b36893acc37cd41028d47e1313232749f1cfafbc4cffe5f838279558b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Broca meeting 18.02.2022\nHer2 IHC status comment\nthis patient could be suitable for a trastuzumab deruxtecan ADC trial if one became available in Australia (1+ HER2).\nDiscuss WES results as a priority sample \n\nMeeting notes 20.12.2021\nSFRC01466_1.5: do WES, HER2 IHC (if positive, do ISH), BROCA ";
      date_of_death = "02/2022";
      d_case_summary = "HGSEC\n31/5/2018 TLH/BSO/PLND revealing a stage 1A high-grade serous endometrial cancer, pMMR, ER/PgR positive, p53 null; nil adjuvant radiotherapy\n01/2020 cough; bronchogenic mass in right lung with ipsilateral mediastinal and lower cervical nodes; FNA confirming HGSEC\n11/2020 completed 6x cycles carboplatin/paclitaxel; complicated by CIPN requiring cessation of taxane at C6\n12/2020 CT showing stable disease (following partial response after C3); referred for trials at progression";
      date_consented = "2021-10-05";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "2018-05:\tTLH/BSO/PLND revealing a stage 1A high-grade serous endometrial cancer, \t\t\tpMMR, \tER/PR positive, p53 null; nil adjuvant radiotherapy, P16 diffuse , WT1 negative, \t\tARID1A normal \n\nFIGO grade 3 \n\nBlock 1.5 received \n\n2020-01:\tcough; bronchogenic mass in right lung with ipsilateral mediastinal and lower cervical \t\tnodes; FNA confirming HGSEC \n\n2021-06:\tWashing \n\nIHC positive: CK7, PAX8, CK5/6 \n\nIHC negative: PR, P53, CAM5.2, CK20, CDX2, TTF-1, p40, napsin A. \n\nER focal strong positivity \n\n2020-11:\tcompleted 6x cycles carboplatin/paclitaxel; complicated by CIPN requiring cessation of \t\ttaxane at C6  \n\n2020-12:\t CT showing stable disease (following partial response after C3).  \n\n2021-04:\t Joined PMC60845 AMG650 phase 1 trial due to progression. (selective small molecule inhibitor of KIF18A may be safe and tolerable. We are conducting a first-in-human phase 1 study with AMG 650 in adult subjects with locally advanced or metastatic solid tumors with TP53MUT) \n\n2021-09:\t Mixed response. Progression of right hilar metastasis causing airway obstruction. \t\tConsented to palliative radiotherapy 30Gy/10 fractions. \n\n2021-10:\tBlood B1 received \n\n2022-02: Deceased";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Recall block for WES -  please order HER2 first once we get some FFPE.\nIt will go for BROCA as well.\nSample received by Warren 9/11/21 from Austin";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01466";
  }
