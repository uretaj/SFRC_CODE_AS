with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "8K/kx/SHA256E-s4542264963--4742477bfea0da485b875a8152c6537a15f99da081e65ce8e93266013985eb9d.gz/SHA256E-s4542264963--4742477bfea0da485b875a8152c6537a15f99da081e65ce8e93266013985eb9d.gz";
      r2 = "J9/00/SHA256E-s4552275690--300b6d95fc6e05cd22b5625c3bd707a757189f03f4d326e36e836ef41ffebdcf.gz/SHA256E-s4552275690--300b6d95fc6e05cd22b5625c3bd707a757189f03f4d326e36e836ef41ffebdcf.gz";
    }
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "Vw/24/SHA256E-s2481659330--60d48572e9baf9b9aa58e96decd0c8e247f6dc9a737783c94c3ef7bd1bb97c64.gz/SHA256E-s2481659330--60d48572e9baf9b9aa58e96decd0c8e247f6dc9a737783c94c3ef7bd1bb97c64.gz";
      r2 = "Q2/gM/SHA256E-s2497066104--09d7d6008063ea357a9a2ccc72ab12a6137b7e861276d7e350ff55da64302897.gz/SHA256E-s2497066104--09d7d6008063ea357a9a2ccc72ab12a6137b7e861276d7e350ff55da64302897.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "NOMINATOR (NOM01022); for Her2";
      meeting_discussions_follow_up = "Broca meeting Clare/Amandine 07/07/2021Send SFRC01093_1D for Broca, priority cat 1.\nShe had 2 lines of her2 therapy. Is there any HR lead?\n\nRC Meeting 01.04.2021\nWES results discussion:  High TMB (23), coverage is a bit low at 60X \nGermline - nothing pathogenic. Some conflicting pathogenicity. \nSomatic: FBXW7 pathogenic, PIK3CA (is a hotspot) \nNSD1 - probably subclonal \nARID1A - 0.13. Most of the listed genes are less than 10% \nWES report on the diagnostic sample, ERBB2 is only 4 copies. She was HER2 amplified by ISH. \nCCNE1 amplified (4 copies), but large region deleted. \nSignature 6, but not many mutations assigned to it. \n\n23.03.2020 Redcap meeting Clare/Amandine\nAsk Josh to recall a block. Once received and H&E reviewed organise WES.\nDamien has been emailed and requested to add Nominator report. \n(There is no NOM report)\n\nMeeting notes 2019.06.20\nHER2 staining - give sections/images to Emily/Gayanie for review \nInterested in 6 specific cases - Emily to retrieve PICF ";
      date_of_death = "03/2020";
      date_consented = "2018-06-26";
      tumour_type = "HGSEC";
      tumour_details = "Clare S patient HGSEC - for HER2 amplification project";
      case_details = "diagnosed 2017\n13aug19\nIf tolerating capecitabine 75% ok after one week then start Herceptin\nIf unsure wait till beginning of C2 to start Herceptin according to Metastatic breast cancer regimen (dosing for docetaxel/Herceptin regimen) - Self-funded via Healthsmart pharmacy\nStafford Fox bloods today pre change to new HER2 targeted regimen";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2017 Tissue containing HGSEC requested from RWH on 10/09/2020 by Josh\n\n2017 HGSEC Block 1D received 13/10/2020";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01093";
  }
