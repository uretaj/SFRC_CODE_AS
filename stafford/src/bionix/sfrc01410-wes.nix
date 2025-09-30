with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "qQ/9x/SHA256E-s2673969612--d8311bad50591ff9bbf4b56192bb1afa6e9434a3cbf7439e2e99c711efa2e385.gz/SHA256E-s2673969612--d8311bad50591ff9bbf4b56192bb1afa6e9434a3cbf7439e2e99c711efa2e385.gz";
      r2 = "w1/0k/SHA256E-s2697269606--6ca74836ac1e0825537ba4512485d2adb33ea03859f2b7c7168a812af3a61665.gz/SHA256E-s2697269606--6ca74836ac1e0825537ba4512485d2adb33ea03859f2b7c7168a812af3a61665.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "pf/1j/SHA256E-s51620940862--41e9243b35a828ae4255bc963ea762f1756ec4c4fcc33fea5c3412c22cc7fef6.gz/SHA256E-s51620940862--41e9243b35a828ae4255bc963ea762f1756ec4c4fcc33fea5c3412c22cc7fef6.gz";
      r2 = "3f/mZ/SHA256E-s55592433952--6f14ceb80f48a4640b12d3e6fcecd82c673c53bc6051a7eaa2c99f11adc3f41c.gz/SHA256E-s55592433952--6f14ceb80f48a4640b12d3e6fcecd82c673c53bc6051a7eaa2c99f11adc3f41c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC meeting 08.09.2022\nDiscussed BROCA results.\nThis case potentially mixed endometrioid and serous. Gayanie to review PDX.\n\nBROCA meeting with Clare 04.11.2021\nSend both PDX and Fresh tissue for BROCA\n\nRC Meeting 2021.08.05\nDiscussed WGS report.\nColorectal panel performed 2015 found KRAS Exon 2: c.35G>A: p.Gly12Asp (G12D) on sample from 29-11-2012  \nSample for WGS collected 14-05-2021. KRAS c.38G>A:exon2:p.G13D \nThe two KRAS mutations are independent events. It is c.37T>G that can be ambiguous in alignment. \n\nClare's notes from Variant Meeting:  \nPIK3CA not good enough (need a second mutation for TAPISTRY trial)  \nKRAS mutation - good enough for the Beigene trial confirmed at the meeting if she progresses \nP53 with LOH  \nFOXA2 mutation c/w endometrial cancer  \nRearrangement in RB1 - not actionable \nAll consistent with endometrial cancer \nNo underlying cause of predisposition for multiple cancers found on her WGS \nData from Grimmond lab not available yet. Need to revisit when available. \n\n\nClare's meeting 2021.07.29\nSFRC01410_1F, Kristy will send block for WES\n\nClare's meeting 2021.06.03\nOrganise WGS\n\nHistopath does not mention serous. But is p53. MDM says endometrioid and serous. Is Grade 3 carcinoma with p53 positivity. Chemo now with Terry Hayes (country). Need more treatment notes from Angela. ";
      date_of_death = "11/2021";
      d_case_summary = "3 primary malignancies: \n1. High grade carcinoma of endometrium, at least part of which is EAC, favoured grade 3 (MMR proficient) but possibility of minor high grade serous component - diagnosed 16/3/2021\n2. Metastatic rectal adenocarcinoma - initial diagnosis 2013\n3. Breast cancer - diagnosed 1997";
      tumour_type = "HGSEC";
      tumour_details = "Multiple primary: high grade endometrial cancer with some serous component, metastatic rectal adenocarcinoma, breast cancer";
      case_details = "73F\n\n2020-11: Colorectal panel:\nKRAS mutated: Exon 2: c.35G>A, Gly12Asp (G12D). NRAS and BRAF not performed. \n\n2021-03: \n-----------------------------------------------------------------------\nFemale in her 70s. 3 primary malignancies:  \n\n03/2021 High grade carcinoma of endometrium, at least part of which is EAC, favoured grade 3 (MMR proficient) but possibility of minor high grade serous component  \n\n2019-Lobectomy \n\n2015- Lung metastases, treated with chemotherapy initially and RUL lobectomy and L VATS 2019  \n\n2013 Metastatic rectal adenocarcinoma - initial diagnosis (neoadj chemoRT  followed by AP resection and stoma) KRAS mutated \n\nBreast cancer - diagnosed 1997, - R mastectomy and R axillary dissection followed by adj chemotherapy - No adj radiotherapy/endocrine therapy. ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 lung block received from Australian Clinical Labs by Warren 2/7/21";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = false;
    name = "SFRC01410";
    capture = CREv2;
  }
