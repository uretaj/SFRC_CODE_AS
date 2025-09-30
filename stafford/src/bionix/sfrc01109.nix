with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.8";
      class = "tumours";
      pdx = false;
      r1 = "z3/Q3/SHA256E-s11531186278--b3bf408aed3620a37cea084e32e1bde2110d72a8effc5fa27cfa893e3f2f3401.gz/SHA256E-s11531186278--b3bf408aed3620a37cea084e32e1bde2110d72a8effc5fa27cfa893e3f2f3401.gz";
      r2 = "Qv/FG/SHA256E-s11888505195--7f266ad4beb4ee4bda8a6bce057c241d76cbc3b630ca3cca0a4c2e618a6db4a7.gz/SHA256E-s11888505195--7f266ad4beb4ee4bda8a6bce057c241d76cbc3b630ca3cca0a4c2e618a6db4a7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vK/58/SHA256E-s2271736481--9d4ef996cf8781b4394123a80ffbc149903b994c8d3c5f0aeddf5d84c03a5c01.gz/SHA256E-s2271736481--9d4ef996cf8781b4394123a80ffbc149903b994c8d3c5f0aeddf5d84c03a5c01.gz";
      r2 = "JF/g9/SHA256E-s2428552952--839b832ccd3a1ba168b51f473bce52207e816f4b1434bb20bae1d7f2c84905dc.gz/SHA256E-s2428552952--839b832ccd3a1ba168b51f473bce52207e816f4b1434bb20bae1d7f2c84905dc.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "MQ/QK/SHA256E-s17693146249--cc89e281b72ffe2006ede41c357413a2eaab5a996486a9371fb6d4ec40dd1bc5.gz/SHA256E-s17693146249--cc89e281b72ffe2006ede41c357413a2eaab5a996486a9371fb6d4ec40dd1bc5.gz";
      r2 = "zV/F3/SHA256E-s16359830137--72df928a5031cf5edb798850f721630334d550ecde60278a77da30edfca92fdb.gz/SHA256E-s16359830137--72df928a5031cf5edb798850f721630334d550ecde60278a77da30edfca92fdb.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Pw/W8/SHA256E-s7354767169--fd7507bf15a21b7a109532af26f8fda6ac7112ce5d6b5c4a0ff07342c8c14275.gz/SHA256E-s7354767169--fd7507bf15a21b7a109532af26f8fda6ac7112ce5d6b5c4a0ff07342c8c14275.gz";
      r2 = "5w/52/SHA256E-s7551409961--abd03aacb5f416d58af95c791b8be52888600363dd9a5d7ae1106317c311c681.gz/SHA256E-s7551409961--abd03aacb5f416d58af95c791b8be52888600363dd9a5d7ae1106317c311c681.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      date_of_death = "03/2019";
      date_consented = "2018-10-29";
      tumour_type = "Gynae cancer other";
      tumour_details = "Multiple primaries (3) - breast ca 78yo, vaginal ca 78yo (rare), pancreatic ca 80yo";
      case_details = "Metastatic SCC of cervix with right inguinal aortocaval, para-aortic and mediastinal adenopathy. Now deceased\n\n4 cycles of carboplatin/paclitaxel, Avastin, and single cycle of Carboplatin. Ceased due to poor tolerance.\n2nd line Gemcitabine from Oct 2018 - Dec 2018.";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2017 Vaginal SCC tissue requested via email from RWH by Josh on 8 Jun 2020\n\n2017 Vaginal Tissue Block 1A received 07/08/2020 by Josh (for kristy)\n\n2017 Breat tissue requested via email from PMCC by Josh on 8 Jun 2020\n\n2017 Breast Tissue received by Josh 17P1049 1.8 10/07/2020\n\n";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01109";
    predictNeoantigens = true;
  }
