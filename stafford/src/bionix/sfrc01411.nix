with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qG/JZ/SHA256E-s42502602254--6c9c0e7068574f584b6182b796cfb1b85b4938dc79669d1dd1d8c5ab20854cbb.gz/SHA256E-s42502602254--6c9c0e7068574f584b6182b796cfb1b85b4938dc79669d1dd1d8c5ab20854cbb.gz";
      r2 = "K0/gv/SHA256E-s44933184329--27ca0920d56f118a91cdf013f598b6f69f962e0d36460aae3e399e4ab76c0fda.gz/SHA256E-s44933184329--27ca0920d56f118a91cdf013f598b6f69f962e0d36460aae3e399e4ab76c0fda.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "v2/m0/SHA256E-s102858228272--dc94abcc74c076eab5a6c96c13ba28a65a986e3eb5cae464239781676c3f5df8.gz/SHA256E-s102858228272--dc94abcc74c076eab5a6c96c13ba28a65a986e3eb5cae464239781676c3f5df8.gz";
      r2 = "2K/2j/SHA256E-s108864251661--5b57ccd85c4fe1bc265af960589ad849ac100f03cd68915a97c0cf415943d70f.gz/SHA256E-s108864251661--5b57ccd85c4fe1bc265af960589ad849ac100f03cd68915a97c0cf415943d70f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "7F/vM/SHA256E-s6400108741--469c96ec84a2cd3366075a001d987c9341d2b567ef3289437b45ef9d0e9763a5.gz/SHA256E-s6400108741--469c96ec84a2cd3366075a001d987c9341d2b567ef3289437b45ef9d0e9763a5.gz";
      r2 = "MJ/Jv/SHA256E-s6114937421--2ba34a2a18204ed5ca16640370e85417fcb16e4c2bd3cc0442c7e8586c6482bd.gz/SHA256E-s6114937421--2ba34a2a18204ed5ca16640370e85417fcb16e4c2bd3cc0442c7e8586c6482bd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "RC meeting 2021.09.02\nDiscussed WGS results (without SFRC data).\nReport TP53 mutation and CCNE1 and AKT2.\namplifications. \nIs HR Proficient\nBIM (BCL2L11) knockout, but only 1/3 copies.\nWould be eligible for Ignite.\nKas to do methylation assay.\n\nClare's meeting 2021.07.15\nBriony to follow up if we can get snap frozen tissue from Trisha. Update: yes she has, Amandine to organise collection and send for WGS.\n\nClare's meeting notes 2021.07.01\nPlan: Briony to check if there is frozen tissue at RWH. How did it get to us? \nWant WGS if possible (need fresh) or WES (check with Clare first?) on block if can't get fresh tissue.";
      date_of_death = "3/2022";
      d_case_summary = "Stage II B ovarian carcinoma (85% epithelial /15% sarcoma) - diagnosed Dec 2020.\nGermline OVCA panel wild type\nSomatic BRCA wild type\nTreatment TAHBSO - Carbo / Taxol x6";
      date_consented = "2021-05-14";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "Ovarian Carcinosarcoma";
      brca_report = "SFRC01411_BRCA_29122020_Redacted.pdf";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01411_FCC_panelreport_18122020_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2020 block recalled from RCH/RWH by Warren on 18/5/21, received 6/6/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01411";
  }
