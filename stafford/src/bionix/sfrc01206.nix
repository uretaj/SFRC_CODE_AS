with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 80;};})];
}; let
  samples = [
    {
      site = "2B";
      class = "normals";
      pdx = false;
      r1 = "wj/vf/SHA256E-s13043455309--10dee8e3ac80b08ce1b0c7915bbf877bf34ad2aa961064ff1c015b02d1661539.gz/SHA256E-s13043455309--10dee8e3ac80b08ce1b0c7915bbf877bf34ad2aa961064ff1c015b02d1661539.gz";
      r2 = "GQ/qf/SHA256E-s13775151728--bc7bf55025d100bfe690317469e0c2cc76afcc4a9213fca96b5de05ffe8bfec2.gz/SHA256E-s13775151728--bc7bf55025d100bfe690317469e0c2cc76afcc4a9213fca96b5de05ffe8bfec2.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "58/Z3/SHA256E-s13172566390--628f33b5a7368436751f574e9c80fa27d4637f3c5bd3489300c44caa1f270cb9.gz/SHA256E-s13172566390--628f33b5a7368436751f574e9c80fa27d4637f3c5bd3489300c44caa1f270cb9.gz";
      r2 = "qq/f7/SHA256E-s13196417973--50a672522238d755978d7cbafa751d15c41afa3ec11bec09520dcce1654d3e2b.gz/SHA256E-s13196417973--50a672522238d755978d7cbafa751d15c41afa3ec11bec09520dcce1654d3e2b.gz";
    }
    {
      site = "B1";
      class = "normals";
      disable = true;
      pdx = false;
      r1 = "J7/MQ/SHA256E-s5570576001--8f88d44fd24054e51b851ff268108cbb28aae251e733f08fa41e7642d1782441.gz/SHA256E-s5570576001--8f88d44fd24054e51b851ff268108cbb28aae251e733f08fa41e7642d1782441.gz";
      r2 = "wF/0w/SHA256E-s5755381575--f123e6ad80df992d50176261fae351501a009d92828d7fe09ecd7e225db9dcb4.gz/SHA256E-s5755381575--f123e6ad80df992d50176261fae351501a009d92828d7fe09ecd7e225db9dcb4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 11.05.2023\nDiscussed WES report with germline FFPE\nDiscussion: Validation through FCC (MSH2, SDHA) Paul James, and Piers Blombery. Flagging Mandy, Briony, Clare.\n\nRC Meeting 15.09.2022\nDiscussed new BROCA results, compared to WES.\nMSH2 looks germline, ask FCC (Mandy).\nSomatic FANCC not called in Clinvar as pathogenic.\nStill make germline from normal tissue block.\n\nClare's Meeting 06.09.2022\nPlan: WES for normal tissue only. Already in a manuscript. Make germline DNA from the normal tissue. Leave lymphocyte block.\n\nWES Meeting 28.07.2022\nGayanie to re-review S1 submandibular biopsy now it is identified as B-cell lymphoma for tumour regions and % purity for future WES.\n- need to source alternative germline DNA as blood looks like it contains circulating lymphoma cells (25% by pathogenic TP53mut)\n\nMeeting with Clare 18.11.2021\n1E: Organise Broca and WES on this block.  Positive control for Asha and Cass\n\nMeeting with Clare discussing BROCA list 2021.08.27\nThis case was written up in a manuscript and study well so we are questioning if we need to do anything on our side.\nWe have established that she is a super responder, so we can recall a block from her surgery in 2012 (HGSOC) get it review, try to extract DNA, send for Broca to assess DNA quality and then discuss if good canditate for WES.\n\nMeeting note 2019.09.26\nClare will find someone to pass this to, went into mice so may get a PDX too that can be passed on. \n\nEmailed Briony for path report 29.08.2019";
      date_of_death = "02/2021";
      date_consented = "2019-07-30";
      tumour_type = "HGSOC";
      tumour_details = "Submandibular ACUP  gBRCA1, HGSOC 5yr PARPi. New submandibular mass 7/2019. CUP  After Gayanie's review this case is B cell lymphoma";
      case_details = "70 years old, BRCA1 mutation carrier, Plat sensitive Met HG serous ovarian cancer, NED \n\n2012-12:\tTAHBSO, metastatic HGSOC (block 1E) \n\n2013-03: \trelapse \n\n2013-07: \tcompleted carbo/taxol\n \n2014-12: \trelapse treated carbo/taxol and tamoxifen, with Olaparib maintenance \n\n2019-07:\tBiopsy, high grade lymphoma (Received fresh tissue S1and blood B1) \nMYC FISH rearranged, BCL2 and BCL6 not mutated \nIHC positive: CD45, CD10, CD79a, CD19, BCL6 and  MYC 50%, CD20 focally \nIHC negativeC: D38, TdT, MUM1, HHV8, BCL2, BCL6, CD3, CD1a, EBER, cyclin, CD1, SOX11, CD34, PAX5, CD138, CD5, myeloperoxidase, cytokeratin \t\t\tAE1/AE3, SD100 and CD56. \nKi67:100%, EBER ISH negative \n\n2019-11:\tCompleted E-POCH \n\n2021-02: Deceased\n\n2021-10: Sections from FFPE block 1E received\n\n2021-12: B1 and 1E DNA sent for WES: \nGermline BRCA1, SDHA, TP53. \nSomatic TP53, NCOR, FANCC. \nCNV: NRAS (17 copies), 3:0 BRCA1, 1:0 BRCA2. Suspected that b-lymphocytes were circulating in blood leading to high number of germline mutations.\n\n2022-01: 1E DNA sent for BROCA: \nGermline: BRCA1 100%.\nSomatic: MSH2 51.7% (no evidence of MSI), TP53 97.5%.\nCNV: CCNE1 - CN5, MYC - CN6.\n\n2022-08: Sections from Block 2B received (normal tissue) to run S1 b-cell lymphocytes for WES.\n---------------------------------------------------------------------------\nPlat sensitive Met HG serous ovarian cancer, NED\ngBRCA1 mutation carrier\nNow new right submandibular / right cervical neck mass FI\nHigh SUV on PET, no mets; additional LN suggestive of cancer\nDDx lymphoma; likely malignant\nAwaiting tissue diagnosis before informing patient and family of definitive diagnosis\nHad been managed by outside Faciomaxillary surgeon, , Assoc Prof Dragan Grubor, plus RMH\nNow being managed by Petermac H+N team including Danny Rischin";
      pre_analysis_mutations = "germline BRCA1 mutation carrier";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2012 block received by Warren from Melbourne Health 18/10/21\n\nKristy asked Devindee to request a normal block from the 2012 TAH-BSO to use for germline 28/7/2022\n\n02/08/2022: Normal block from 2012 sample requested from MH pathology by Devindee. \n08/08/2022: normal tissue slides (2B) from 2012 sample received by Devindee.";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_germline_mutations = "BRCA1";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01206";
    predictNeoantigens = true;
  }
