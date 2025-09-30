with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "gw/VJ/SHA256E-s28714167399--b6df1c1ec8c9a44184a947af54c4344200495b6f45c9114225d0db5bde9a1bd8.gz/SHA256E-s28714167399--b6df1c1ec8c9a44184a947af54c4344200495b6f45c9114225d0db5bde9a1bd8.gz";
      r2 = "7z/V6/SHA256E-s29832626129--27aab497ffc63d22c02afd2adad1dcdc38cb16ad0559d7efb1506bfa10671826.gz/SHA256E-s29832626129--27aab497ffc63d22c02afd2adad1dcdc38cb16ad0559d7efb1506bfa10671826.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "F1/W7/SHA256E-s7573908820--4939aee58632387893f0f10139f01d7d5285a15d87d3666f621c151265ceaa3b.gz/SHA256E-s7573908820--4939aee58632387893f0f10139f01d7d5285a15d87d3666f621c151265ceaa3b.gz";
      r2 = "v2/m4/SHA256E-s8112556781--fc53224402a59c04f5bb114feb2b79d13fe68dd4c0a11b4f5659ca302b9d127e.gz/SHA256E-s8112556781--fc53224402a59c04f5bb114feb2b79d13fe68dd4c0a11b4f5659ca302b9d127e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's sample meeting 2023.10.05\nPlan on FFPE block 1E: WES twist \n\n2020.12.03\nBlock 1C reviewed. Plan: (2 primary) Kristy will send with the next batch as soon as the WES pipeline is confirmed \nDamien consented 2 years ago, needs to check patient status. \nStill alive from Sept 2020. Slowly progressive disease (lung team at Peter Mac). No germline variants by FCC? Damien to email Clare so she can find out which panel. \n\n2020.06.01 Meeting with Clare\nFamily history suggests Lynch Syndrome in connection with MSI-high colorectal cancer in Probrand. Alert to Kristy: do WES on Thymic or colon and germline WES (ensure MMR IHC performed on endometrial cancer - but no report). Father had bowel cancer in his 70s. Clare to follow up Peter Mac file.";
      blood_recall_history = "09Aug23: Aug16 sample requested from Melbourne Health Pathology by Monica \n18Aug23: Aug16 sample received from Melbourne Health Pathology by Monica ";
      d_case_summary = "71M with thymic ca, colon adeno (MSI); sister with endometrial\nAlive with slowly progressive disease 9/2020\nFCC - no pathogenic variants (germline testing PMCC 1/3/2019)";
      date_consented = "2018-11-08";
      tumour_type = "Other rare";
      tumour_details = "71M with thymic carcinoma, colon adenocarcinoma (MSI); sister with endometrial carcinoma  Incidence of thymic carcinoma: 0.05/100,000 per annum";
      case_details = "Stage IV Thymic Squamous Cell Carcinoma, found incidentally on CT (routine scope).\n\nResection of SCC August 2016, completed adjuvant chemotherapy October 2016, Right Hemicolectomy of moderately differentiated adenocarcinoma in March 2018, with complicated recovery and no adjuvant chemo.\n\nEmailed consent for SFRC.\n\n";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Thymic carcinoma";
      fcc_report = "SFRC01111_FCPR_01Mar2019_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2016 Block recalled from MH via email on 07/07/2020 for Kristy by Josh\n\n2016 Block 1C (slides) received on 27/10/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01111";
    capture = CREv2;
    predictNeoantigens = true;
  }
