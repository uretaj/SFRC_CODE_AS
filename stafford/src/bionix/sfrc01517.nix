with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G6/ZV/SHA256E-s42823185534--a2a6d7fbfd3f932421efa19be83a5a298fe92a43e3151f47be7ec6f4331dd814.gz/SHA256E-s42823185534--a2a6d7fbfd3f932421efa19be83a5a298fe92a43e3151f47be7ec6f4331dd814.gz";
      r2 = "30/3X/SHA256E-s45176688666--606d71c7195a385160cedd08898eabfbbac6ee38835e2da42006ff643c186690.gz/SHA256E-s45176688666--606d71c7195a385160cedd08898eabfbbac6ee38835e2da42006ff643c186690.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "08/G0/SHA256E-s92670159082--dabf81effa5ab0a6219c2b362481e8066087ac35cbf43b67eb453df113c73b2e.gz/SHA256E-s92670159082--dabf81effa5ab0a6219c2b362481e8066087ac35cbf43b67eb453df113c73b2e.gz";
      r2 = "FW/66/SHA256E-s98237431873--231145f275896bd4fdb2444790ed544644c32e3a979f23389e760c0647c7e8ab.gz/SHA256E-s98237431873--231145f275896bd4fdb2444790ed544644c32e3a979f23389e760c0647c7e8ab.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "xW/Vq/SHA256E-s4883270788--60b426a0f36a8c6509745de43466e1f5038062b47bb1a87d85ac2eb06c1194b9.gz/SHA256E-s4883270788--60b426a0f36a8c6509745de43466e1f5038062b47bb1a87d85ac2eb06c1194b9.gz";
      r2 = "98/9G/SHA256E-s4879278065--265fa2bda57910948253b71681850d1d4e99a1daa3e60de6afa43fc42e3d1832.gz/SHA256E-s4879278065--265fa2bda57910948253b71681850d1d4e99a1daa3e60de6afa43fc42e3d1832.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "Clare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block P\n\nRC Meeting 04.08.2022\nDiscussed SFRC WGS report, as have a fast-growing PDX.\nOnly noted that SFRC report has TMB of 10.\nSame findings as Grimmond report.\nPDX is vimentin positive = sarcomatous. \nFGFR2 - can get Pamiparib. Two other endometrioid cases have it. \n\nRC Meeting 28.04.2022\nDiscussed WGS report.\nThis looks to be high grade endometrioid carcinoma. \nBring to attention for Cass, Holly, Gen. \nAfter T3, can do more sequencing. \nCIRCOS plot surprisingly stable. There are a lot of drivers, not many rearrangements. \nVery aggressive tumour to have PDX come up so fast. Can do Hu vs Mu PCR now, PDX IHC is being reviewed soon and STR profiling submitted. \n\nClare's meeting 10.03.2022\nPatient recently deceased, still go ahead with WGS as a PDX might come up.\n\nClare's meeting 24.02.2022\nFresh tissue S1-S2: microdissect only viable tumour, both for DNA and RNA. Send for WGS";
      date_of_death = "3/2022";
      d_case_summary = "Female genital tract malignancy unknown \n46 year old nulliparous, premenopausal woman from Mauritius with an endometrial tumour (high grade, not a carcinoma, possibly a sarcoma, awaiting IHC), bilateral large ovarian masses, enlarged para-aortic node, pelvic peritoneal disease, elevated LDH, anaemia and hypercalcaemia. Epithelial tumour markers (Ca-125, Ca-19.9 and CEA all in the normal range).";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Female genital tract malignancy unknown (high grade, not carcinoma, could be sarcoma - awaiting IHC)    After WGS and clinical discussion, this is high grade endometrioid endometrial carcinoma";
      case_details = "46 years old female \n\n2021-12: Diagnosed female genital tract malignancy.\n\n2022-01: Histopath on endometrial curettings\nIHC positive: Vimentin, AE1/AE3, Cam5.2, CD99\nIHC negative: CK7, CK20, Chromogranin, Synaptophysin, ER, S100, SOX-10, Melan-A, CD20, Desmin, Myo-D1 and Myogenin\n\nCD45 and CD3 highlight small lymphocytes in the background\n\nA small amount of glycogen appears to be present within the tumour cells (as demonstrated by PAS and PAS-D stains)\n\n2022-02: Differentiated high grade endometrial carcinoma, FIGO Grade 1, with involvement of myometrium, uterine serosa, parametria, right fallopian tube, right ovary, cervical stroma, vaginal cuff tissues. \n-Extensive lymphovascular invasion present.\n-Invasive carcinoma involving cervical radial stromal margin and vaginal cuff margin\n-Undifferentiated carcinoma seen within omentum, bladder, peritoneum, pericolic fat of rectosigmoid colon, appendiceal mesentery, caecum, right pelvic side wall, left pelvic side wall and small bowel.\n-Secondary carcinoma present in 3 out of 4 total lymph nodes, extranodal extension present.\n-Pathologic stage pT3b N1 M1 - Stage IVB.\n\n2022-02: Blood B1 received. Fresh tissue received: Uterine tissue S1 and omental tumour S2. Uterine tumour fixed and blocked (Block P)\n\n2022-03: Deceased.\n\n2022-05: Block P (uterine tumour) received.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Kristy Requested to recall a uterine Block (P1-4) from 3/2/22 surgery for imaging (2/5/22) - patient deceased, no need to discuss in meetings.  \n\n04/05/2022: Block P from 03/02/2022 requested from Royal Darwin Hospital Pathology from Devindee. \n23/05/2022: block P from 03/02/2022 sample received from RDH pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01517";
    predictNeoantigens = true;
  }
