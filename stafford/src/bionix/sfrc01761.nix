with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Wk/7P/SHA256E-s1133895653--6d0be05ebea9f336a3908b35d6908775d5a25a4d07edff89468dbf7452c53068.gz/SHA256E-s1133895653--6d0be05ebea9f336a3908b35d6908775d5a25a4d07edff89468dbf7452c53068.gz";
      r2 = "10/96/SHA256E-s1126135480--9eeb83306dd3cc8952506d85e712a6bf751e0e218ca1fc8c5a21176113874c14.gz/SHA256E-s1126135480--9eeb83306dd3cc8952506d85e712a6bf751e0e218ca1fc8c5a21176113874c14.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "X4/wp/SHA256E-s1131359626--f3f85bb3e0612f5dc2d31827718cd2514829df068adae907b730a141b226affc.gz/SHA256E-s1131359626--f3f85bb3e0612f5dc2d31827718cd2514829df068adae907b730a141b226affc.gz";
      r2 = "X4/Qj/SHA256E-s1128808812--e3c2452626b4f08b1730b37dfca215cb19d5a74ac2b7fa00f74dd8bdd7ae0486.gz/SHA256E-s1128808812--e3c2452626b4f08b1730b37dfca215cb19d5a74ac2b7fa00f74dd8bdd7ae0486.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "mJ/8Z/SHA256E-s1132260094--382d9501a9184c4b3b018cca4f265677e662d0b11d389f55617dd46b5e32931c.gz/SHA256E-s1132260094--382d9501a9184c4b3b018cca4f265677e662d0b11d389f55617dd46b5e32931c.gz";
      r2 = "3X/XZ/SHA256E-s1127629001--150f14682b6fc2734b4d1b5986a02bccfda9165631945cd5e4da0ea45a63b1de.gz/SHA256E-s1127629001--150f14682b6fc2734b4d1b5986a02bccfda9165631945cd5e4da0ea45a63b1de.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Ww/xF/SHA256E-s1093210583--622d2074ceb1c5ec3e45d650fe8e1ae146be2e8f1d6d5d6a6cde40ce79be7259.gz/SHA256E-s1093210583--622d2074ceb1c5ec3e45d650fe8e1ae146be2e8f1d6d5d6a6cde40ce79be7259.gz";
      r2 = "30/9F/SHA256E-s1094278551--8555a9c36d5bfcf6e257512ec04146c8fa649ba89e8d4031f72234914d892d43.gz/SHA256E-s1094278551--8555a9c36d5bfcf6e257512ec04146c8fa649ba89e8d4031f72234914d892d43.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GV/QP/SHA256E-s702330571--1a7626fdf8340fde561c710655479c3eb68328a98b2fe5ef0c04897a0c3eda6c.gz/SHA256E-s702330571--1a7626fdf8340fde561c710655479c3eb68328a98b2fe5ef0c04897a0c3eda6c.gz";
      r2 = "Fk/m8/SHA256E-s703497958--d75a89b9bea9958ff5765932d518ad70c49a05e582bf8b9c2aa2e153e71a3672.gz/SHA256E-s703497958--d75a89b9bea9958ff5765932d518ad70c49a05e582bf8b9c2aa2e153e71a3672.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mq/vx/SHA256E-s704995597--0a0e9eb334a6246a946739a6e4c66427023d1d36b1fa554b9ee0720092172711.gz/SHA256E-s704995597--0a0e9eb334a6246a946739a6e4c66427023d1d36b1fa554b9ee0720092172711.gz";
      r2 = "gp/mX/SHA256E-s710309161--bec98896ed14dda9821d9a0844b2cb9213d99aeb9c8972800e9c714e584c6bf4.gz/SHA256E-s710309161--bec98896ed14dda9821d9a0844b2cb9213d99aeb9c8972800e9c714e584c6bf4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "25/12/SHA256E-s697671778--28c02cc506ed9ae8e00dce744e84a54f061bee3b2e091ca158f7d0d495aada9e.gz/SHA256E-s697671778--28c02cc506ed9ae8e00dce744e84a54f061bee3b2e091ca158f7d0d495aada9e.gz";
      r2 = "9j/5v/SHA256E-s700977082--2ef2250b99bbc914b4bb4b246b7c3115fe56fa36d80d5101997b30a47aaf076c.gz/SHA256E-s700977082--2ef2250b99bbc914b4bb4b246b7c3115fe56fa36d80d5101997b30a47aaf076c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZZ/ZZ/SHA256E-s728144507--901617a1d0f8e25d380c34d730d372faf105a180c7597b70d54f2fdf7c4858e7.gz/SHA256E-s728144507--901617a1d0f8e25d380c34d730d372faf105a180c7597b70d54f2fdf7c4858e7.gz";
      r2 = "Q8/k8/SHA256E-s735802291--80c86bdbefabecfe0acf493a68d5c09667c3a1f4e760077dfd8ae9b951213537.gz/SHA256E-s735802291--80c86bdbefabecfe0acf493a68d5c09667c3a1f4e760077dfd8ae9b951213537.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 14.3.24:\nHigh TMB is usual for melanoma, which is driven by UV damage. The many pathogenic gene variants are due to the high TMB, but not actionable individually. \n\nSomatic variants not impactful as patient is doing well. BRCA2 - FCC referral.  \n\nPARPi not necessary if responded well to current immunotherapy treatment \n\nTWIST-WES on SCC - Adriana to request block (central chest metastasis?) \n\n\nSample meeting with Clare 2023.10.05 \nPlan on FFPE block LL: WES Twist\n\nSample meeting with Clare 20.07.2023\nPlan on FFPE block 1A: WES Twist \n\nFollow up other blocks from the other cancers (not benign ones) - lung cancer, Briony to organise with monica";
      blood_recall_history = "11Sep23 -  Planned for 12-Sep.\n01Aug23 - Text to patient ";
      d_case_summary = "70yM diagnosed with pleomorphic adenoma R) in 2016, HTN (on irbesartan), synchronous presumed cT1N0M0 left apical primary lung cancer (PET April 2016), oligometastatic p16  oropharyngeal squamous cell carcinoma stage 4a, and recurrent metastatic melanoma 2021. Stable since Pembrolizumab, ceased Sep 2019. Lung ca treated with radiotherapy simultaneously with CRT for H";
      date_consented = "2023-05-20";
      tumour_type = "Other rare";
      tumour_details = "Multiple primary case.\nOropharyngeal SCC (thought to have synchronous lung cancer, but was metastatic SCC?).\nMelanoma (multiple)\nBCC (nose)\nSCC (tongue)";
      case_details = "70 years old male  \nRecurrent metastatic BRAF wt melanoma \n\n2004\t\tMelanoma, resection \n\n2005-05.  \tBiopsy  \n\n2016-04\t       Oligometastatic p16, oropharyngeal \n                       SCC, primary lung cancer, biopsy \n\t\t       IHC positive: P63, CD5/6, CK7 \n\t\t       IHC negative: S100, TTF1, SOX10, P16 \n\t       \t       C1 cisplatine, complete response  \n\n2017-08\t        Biopsy \n\t\t        IHC positive: P63, CK5/6, CK7, TTF1, \n                        P16 \n\nFrom 2017-09 to 2019-09\tPembro \n\n2019-09\t        Oligoprogression, radiotherapy  \n\n2021-09\t       Biopsy, melanoma, FFPE Block 1A \n                       received \n\t\t       IHC positive: SOX10 and S100 \n\t               IHC negative: AE1/3, p63, CK7, TTF1  \n\t\t       BRAF PCR \n\nFrom 2021-09 to 2021-12 \tNivolumab and ipilimumab \n\nFrom 2021-12 to 2022-09\tMaintenance Nivolumab \n\n 2022-08. \tComplete metabolic response ";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Oropharyngeal SCC ";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "05Jun23: Sep21 sample requested from QML pathology by Monica\n21Jun23: Sep21 sample received from QML pathology by Monica\n21Jul23: Aug17 sample requested from QML pathology by Monica\n07Aug23: Aug17 sample received from QML pathology by Monica \n12Jun2024: 23Aug2023 - sample tissue requested from QML pathology by Haris.";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    inherit samples;
    name = "SFRC01761";
    capture = TwistV2HR;
  }
