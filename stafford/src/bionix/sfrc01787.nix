with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "4q/Km/SHA256E-s2537986991--1740ec35760b699d335724e7cc571715be76152746d1462ca94c8de9123a43fd.gz/SHA256E-s2537986991--1740ec35760b699d335724e7cc571715be76152746d1462ca94c8de9123a43fd.gz";
      r2 = "fW/z0/SHA256E-s2503789215--94a5def1522c863136dd0cd7c9253be0f99e90ead7ce72c2f3928460987e22b8.gz/SHA256E-s2503789215--94a5def1522c863136dd0cd7c9253be0f99e90ead7ce72c2f3928460987e22b8.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "6v/vf/SHA256E-s2535355364--55491afaf598fd1582b01a86df3cb558260980e532fbca09d2a5b9b3311a7449.gz/SHA256E-s2535355364--55491afaf598fd1582b01a86df3cb558260980e532fbca09d2a5b9b3311a7449.gz";
      r2 = "Kf/kX/SHA256E-s2515184614--0696e65633614b8e4c64353e97926a6577b898016a4e56d749cfeeea322e4ffa.gz/SHA256E-s2515184614--0696e65633614b8e4c64353e97926a6577b898016a4e56d749cfeeea322e4ffa.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "4g/Q6/SHA256E-s2516277410--655c621b6eec5c0786e769c83920e502ab3e5669fbface0325a1a4a6907bfbf4.gz/SHA256E-s2516277410--655c621b6eec5c0786e769c83920e502ab3e5669fbface0325a1a4a6907bfbf4.gz";
      r2 = "m3/Kf/SHA256E-s2489378765--eea94d20c59acbfc6074fe08431a03beb151655bddb48ea5b624d0ed77748dc9.gz/SHA256E-s2489378765--eea94d20c59acbfc6074fe08431a03beb151655bddb48ea5b624d0ed77748dc9.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "17/0G/SHA256E-s2564544299--66cb64ad78e9aa063b6ba50337ed9a27607f5eb3287c052c08e1e962f796b45e.gz/SHA256E-s2564544299--66cb64ad78e9aa063b6ba50337ed9a27607f5eb3287c052c08e1e962f796b45e.gz";
      r2 = "Xk/zV/SHA256E-s2549829347--14cb792163abfa58c5eea2358e207cda448423501a3b4b96e8ef3b96069908e4.gz/SHA256E-s2549829347--14cb792163abfa58c5eea2358e207cda448423501a3b4b96e8ef3b96069908e4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m2/gF/SHA256E-s772104645--3a5485425df055713843e594ed61cd074918b5f642ae4233fd45eb886d24eb3c.gz/SHA256E-s772104645--3a5485425df055713843e594ed61cd074918b5f642ae4233fd45eb886d24eb3c.gz";
      r2 = "19/8q/SHA256E-s777225168--2fcdb26f070beed03399a1f064cbf09ae9ba3d925bb99408707c736a8d70b19b.gz/SHA256E-s777225168--2fcdb26f070beed03399a1f064cbf09ae9ba3d925bb99408707c736a8d70b19b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q4/vF/SHA256E-s777481590--14576cd4eb2ac4e3b636e92ed0542f3aa033e21b86faee5e9d8559ffe461c885.gz/SHA256E-s777481590--14576cd4eb2ac4e3b636e92ed0542f3aa033e21b86faee5e9d8559ffe461c885.gz";
      r2 = "Pw/3p/SHA256E-s787650847--e451c0e8abe4e9a7086cedafb016919ffcb944b9dafe7db5802dc4a452d017b6.gz/SHA256E-s787650847--e451c0e8abe4e9a7086cedafb016919ffcb944b9dafe7db5802dc4a452d017b6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "63/Wf/SHA256E-s766380515--8be2ab3bab550c15660255af6dbb8d251a903e9891491d62c4c2502374766960.gz/SHA256E-s766380515--8be2ab3bab550c15660255af6dbb8d251a903e9891491d62c4c2502374766960.gz";
      r2 = "4g/0w/SHA256E-s774289279--2f5685e3a2abc05cec31c22023f337f3d8059272b0605ef18966c857c841d8b1.gz/SHA256E-s774289279--2f5685e3a2abc05cec31c22023f337f3d8059272b0605ef18966c857c841d8b1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X2/2Q/SHA256E-s828277736--691cc996f1e39934a737015b5348e1f11d9c439b910612446f5bce143ce9c068.gz/SHA256E-s828277736--691cc996f1e39934a737015b5348e1f11d9c439b910612446f5bce143ce9c068.gz";
      r2 = "Z3/83/SHA256E-s842650417--c91a2a709ff5ccbb76e7254cbb792be955fc2f3c60854cc87182d867c6652e93.gz/SHA256E-s842650417--c91a2a709ff5ccbb76e7254cbb792be955fc2f3c60854cc87182d867c6652e93.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 15.02.2024:\nAsk Damien to check about the KIT amp in the context of this cancer. TSO500 lists no trials for this. \n\nClare sample meeting 2023.09.21\nPlan: Ask if Clare has checked with Med Onc for TSO500? WES on block 1D, recurrence 2022 (65-70% tumour purity) \nHas already been submitted for TSO500!! 15/09/2023. \n\n15.09.2023 - sample submitted for urgent TSO500 (after emails from Clare).\n\nClare's sample meeting 2023.09.04\nPlan on FFPE block I and 1D: Although ffpe nephrectomy block (I) is pending review, ffpe thoracic resection block(1D) looks good. Processed with WES Twist? If Gayanie comes back with a better tumour purity % for the nephrectomy block , then just send nephrectomy? As this ca\nse is urgent would you like to send it for TSO500 instead? \n\nWould be good for TWIST WES and too late to ask Dr now to order CaSP. Check with Med Onc re need for TSO500 prior to TWIST WES.";
      blood_recall_history = "04Aug23 -  Text sent";
      urgency_details = "As per Clare and referring clinician";
      d_case_summary = "Urgent- cutaneous adenoid cystic primary tumour";
      tso500_external = "SFRC01787_TSO500Report_09Oct2023_Redacted.pdf";
      tumour_type = "Other rare";
      tumour_details = "adenoid cystic carcinoma";
      case_details = "Female, 64 years old  \n\n2005\t\tInitial diagnosis on left thigh \n\n2017-11\tMetastasis, lobectomy (left upper lobe) \nIHC positive: AE1/3, P63, SMM \nIHC negative: S100, CK7, TTF1 \n\n2022-04\tThoracic resection of recurrent pulmonary parenchymal disease, FFPE block 1D \t\t\treceived (65-70% tumour purity) \n\n2022-07\tProgressive disease (left shoulder, upper chest and renal mass), nephrectomy, FFPE block I received (pending review) \nIHC positive: AE1/3, P63, SMA, Myosin, CK7 (small number), c-kit \n\n2023-06:\tBiopsy, more progression (left illiac blade) \nIHC positive: P63, c-kit \t\t \n\nStarting radiation \n\n2023-08: \tBlood B1 received \n";
      patient_information_complete = "Incomplete";
      other_tumour_type = "adenoid cystic carcinoma";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "25Jul23: Apr22 sample requested from Australian Clinical Labs by Monica\n27Jul23: Apr22 sample received from Australian Clinical Labs by Monica\n01Aug23: Jul22 sample (kidney) requested from Anathpath by Monica\n07Aug23: Jun23 (left iliac bone biopsy) requested from Melbourne pathology by Monica - Update from Melbourne path: not enough tissue to process the request\n15Aug23: Jul22 sample (kidney) received from Anatpath by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    name = "SFRC01787";
    capture = TwistV2HR;
  }
