with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "39/j7/SHA256E-s29000423150--c1970ca688ef2aaf98462e15f1ed18358bdd91f8a904beb8a86c887db9ade2c1.gz/SHA256E-s29000423150--c1970ca688ef2aaf98462e15f1ed18358bdd91f8a904beb8a86c887db9ade2c1.gz";
      r2 = "GW/kq/SHA256E-s30046416926--baa03ef2a840644bbb8d04e8256ed4733af14c6700cc59854e0a1d1529ce68c6.gz/SHA256E-s30046416926--baa03ef2a840644bbb8d04e8256ed4733af14c6700cc59854e0a1d1529ce68c6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j2/xG/SHA256E-s7428410381--a706148cbd04db681cfcde227d5c47a8e43156644d302ebe9e9e1ade3a9a4432.gz/SHA256E-s7428410381--a706148cbd04db681cfcde227d5c47a8e43156644d302ebe9e9e1ade3a9a4432.gz";
      r2 = "XQ/Jz/SHA256E-s7631923676--051a296328d9a0c3dc13e51251bcb0ce6a4c25cbb47b7d4ffaa429f018dbc773.gz/SHA256E-s7631923676--051a296328d9a0c3dc13e51251bcb0ce6a4c25cbb47b7d4ffaa429f018dbc773.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 06.07.2023\nDiscussed WES report for Block 1A:\n-Germline SDHA - Clare and Mandy to discuss further. Contact FCC/Paul James. \n-Somatic EZH2 - reportable, not actionable.\n-TSC2 het deletion - reportable, not actionable.\n-Comparing WES to TSO500: \n -PIK3CA and TFRC amplifications in large region \n  (30.9Mbp) in WES: \n  -PIK3CA/TFRC CN12: spider plot looks okay, CN \n   plots reasonable, so there is confidence in our \n   WES. However, in a large region so not actionable. \n   Can report CN for PIK3CA only, not TFRC. \n  -Andrew confirmed TP53 and TP63 VUS\n\nClare's meeting 2023.05.18\ndiscussed Her2 ISH-IHC\nHER2 IHC: 2+ Equivocal  \nHER2 ISH:   Tumour is classified as negative/not amplified for HER2  \nPlan: Briony to send report to Dr. \n\nClare's meeting 23.03.2023\n-To do urgent WES on FFPE Block A1 (sectioning block right now)\n-Do HER2 IHC on Block A1\n-Patient is having chemo. Ask Damien to email the ARC Portal fellows about getting a new biopsy (current tissue is 2019). Is currently on Carbo/Taxol, meant to have started Carbo/Gem in June 2022. (have emailed Damien). ";
      d_case_summary = "46yo Met Cervical Adenocarcinoma stage IV, was verbally reported as SqCC, but amended to adenocarcinoma. \n- She has done better than average with this cancer. \n    - Presented after ultrasound in July, showing a large cervical mass on the background of four years of heavy bleeding\n    - Complicated admission early July 2019, presented with PV bleeding complicated by large volume pulmonary emboli, moderate to severe dilated RV with right heart strain. Developed large volume PV blood loss of 2 L on 3 July while undergoing low-dose anticoagulation with IVC filter inserted. Urgent radiotherapy quad shots performed at that time and ICU admission.\n- For consideration of ureteric stent once stable due to obstructed left ureter (subsequently decided not to pursue this given stable renal function and response to treatment)\n- IVC filter inserted 5/7/19 (removed 18/10/19)\n- Carboplatin and paclitaxel chemotherapy - completed 6 cycles of treatment - 23/7/19 to 5/11/19 - not for Bevacizumab given thrombotic and bleeding risks\n - Consolidation RT to primary lesion given only residual uptake on PET scan at completion of chemotherapy\n - CT CAP - 16/6 - no measurable disease at this time, Phase I team aware of updates\n - Mutation panel testing on tumour (PMCC) - high TMB, MSI stable, no clear actionable mutations.\n - Dec 2020 - rising CA-125 for several months, but measurable diseaes at this time and some constituional symptoms\n - Feb 2021 - Phase 1 clinical trial at PMCC - commenced 1/2/21 - Tisleliizumab and OX40 inhibitor; good response - then progressive disease March 2022 \n- Initially treated with Carboplatin/Paclitaxel for 6 cycles to near CR, then consolidate RT to primary. \n- At progression had been on Tislelizumab/OX40 trial at PMCC until about 2 months ago. \n- will potentially be treated with Carboplatin/Gemcitabine (and save weekly paclitaxel to next line) ";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Cervical adenocarcinoma, metastatic Stage IV";
      case_details = "46F\n\n2019-07: Dx cervical adenocarcinoma Stage IV, metastases in abdomen, mediastinum and neck. \nChemotherapy: carboplatin/paclitaxel x6, completed 11-2019\nSurgery: cervial biopsy (FFPE Block A1)\nIHC positive: p16, CEA, \nIHC negative: p40, p63, ER, PR\npMMR: stains for MMR proteins retained\n\n2019-07 - 2020-01: Radiation\n\n2020-12: TSO500 via Precision Oncology on 2019-07 sample:\nPIK3CA - CN 5\nTFRC - CN 6\nTP53 and TP63 VUS\n\n2021-02: Clinical Trial: PD-1 and OX40 immunotherapy (Tislelizumab + BGB-A445)\n\n2022-02: Off immunotherapy trial due to progressive disease in lymph nodes\n\n2022-08: In letters:\n-Restarted palliative chemotherapy due to rapidly rising CA125 despite radiological stability\n-Tried carboplatin/paclitaxel but developed DVT, then anaphylactic reaction to carboplatin\n-Commenced 3x weekly pemetrexed\n-Awaiting ER/PR status\n\n2022-08: Blood B1 received\n\n2023-03: FFPE Block A1 received\n\n2023-04: HER2 IHC and ISH on Block A1 tissue: Negative/not amplified for HER2.\n\n2023-05: DNA from FFPE Block A1 sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "18/07/2022: July 2019 sample requested from Australian Clinical Labs by Devindee\n27Feb23: July 2019 sample re-requested from Australian Clinical Labs by Monica\n09Mar23: Jul 2019 sample received by Monica.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01597";
    capture = CREv2;
  }
