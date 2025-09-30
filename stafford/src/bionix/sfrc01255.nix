with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "23";
      class = "tumours";
      pdx = false;
      r1 = "3Z/g8/SHA256E-s18840138002--a104c7b98a4f97065dee67d7fe9bb03dd4c804eb5ca81362c2c94148f7617129.gz/SHA256E-s18840138002--a104c7b98a4f97065dee67d7fe9bb03dd4c804eb5ca81362c2c94148f7617129.gz";
      r2 = "88/wG/SHA256E-s19217233465--a674a328baed1403e78fc1377ba469cd2af3d8058a4fa49580bbfa6ea16de035.gz/SHA256E-s19217233465--a674a328baed1403e78fc1377ba469cd2af3d8058a4fa49580bbfa6ea16de035.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k6/K5/SHA256E-s5031381843--e2cdf0f9f0e3a8c9245a8a63fbde8d3419945578ba606c080ec63b91d7f41e22.gz/SHA256E-s5031381843--e2cdf0f9f0e3a8c9245a8a63fbde8d3419945578ba606c080ec63b91d7f41e22.gz";
      r2 = "1k/J2/SHA256E-s5248032971--fd0d9d5c4301a2b1df3bd87f7e157bfb023360bfd5960aa0ae1dca3ca57f9853.gz/SHA256E-s5248032971--fd0d9d5c4301a2b1df3bd87f7e157bfb023360bfd5960aa0ae1dca3ca57f9853.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "9X/Vz/SHA256E-s30820966808--e35bc00b0549188ba4ec8a09156c638af4eb3812cb222dd8dc5ada5f4ffb62d4.gz/SHA256E-s30820966808--e35bc00b0549188ba4ec8a09156c638af4eb3812cb222dd8dc5ada5f4ffb62d4.gz";
      r2 = "Mv/Ff/SHA256E-s31838739631--385ccd9fa6835fda441304e8466caac63c0e60fd1b4c3908e8b9b33961084f7d.gz/SHA256E-s31838739631--385ccd9fa6835fda441304e8466caac63c0e60fd1b4c3908e8b9b33961084f7d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 15.12.2022\nDiscussed WES report:\nSomatic PMS2 mutation found. Perform MMR IHC on 2017 Block 23, through Women's. \nPatient of Chen Lee. Might be easier to just give our block to Owen Prall (cc Damien) he can invoice us \n\nClare's meeting 30.06.2022\nWES on FFPE block 23 (DNA already extracted) AND OCT S1. Deep WES for both.\n\nClare's meeting 22.10.2021\nBlock 23: Briony to organise blood then WES. ";
      blood_recall_history = "Contacted, recovering from COVID will recontact week starting 18 April \n\nBlood draw expected, 05 may 22";
      date_of_death = "05/2023";
      d_case_summary = "LMS thigh, remote consent, treated at Prince of Wales by Dr Yeh Chen Lee, also in MOST\nUpdate 14Apr22: CT show early signs of progression on pancreatic lesion and soft tissue lesion at hamstring muscle, but other disease burden remain stable. MOST testing has failed due to poor tissue quality and we did not have a safe biopsiable tissue then. remains ECOG 0, despite multiple lines of treatment. She has exhausted most standard of care treatment, and plan is to consider trabectedine which she will have to self-fund.";
      date_consented = "2019-08-21";
      tumour_type = "Other rare";
      tumour_details = "LMS thigh";
      case_details = "53 years old female \n\n2016-11: Initial diagnosis: LMS left thigh, core biopsy \nIHC positive: desmin, calponin1, Sma, CD99 \nIHC negative: cytokeratin, EMA, SOX10, S100, CD34, CD117, myogenin, myoglobulin and \tmyosin. \n\n2016-12:\tEilber neoadjuvant CRT. Doxorubicin+ 30GY \n\n2017-03:\tPancreas surgery, removal of the tail, metastatic LMS (Block 23 fixed and blocked) \nIHC positive: desmin, Sma, P63  \nIHC negative: myogenin, AE1/AE3, CK5/6, CD34, EMA, CD117, SOX10 and HMB 45. \tKI67:60%  \n\n2017-05:\tThigh excision  \nIHC positive: SMA and desmin  \nIHC negative: AE1/AE3, Cam 5.2  \n\n2017-11:\tCompleted Doxorubicin/ifosfamine x4  \n\n2018-12: Stable disease with lung nodules   \n\n2020-03:\tkidney biopsy, metastatic LMS  \nIHC positive: SMA and desmin  \nIHC negative: panCK, myogenin, SOX 10, CD34 and CD117  \n\n2021-12: FFPE block 23 received. \n\n2022-06: Core biopsies received (Tissue S1). Blood B1 received. \n\n2022-10: FFPE Block 23 sent for TSO500:\nNo variants reported\nLow TMB\nStable MSI\n\n2022-12: WES results:\nSomatic PMS2 mutation\nHomozygous focal loss of RB1\nHigh Signature 11\n\nMMR IHC on FFPE Block 23:\nPMS2 (A16-4/aa431-862 at C-terminal) - absent in   tumour cells \nMLH1, MSH2, MSH6 expression retained.\n\n-----------------------------------------------------------------------\nMetastatic LMS of Thigh Dx in Nov 2016 in thigh resection, after which received adjuvant CTx Doxorubicin +30 GY in 20 fractions RT completed in March\n\nSep 2017 imaging showed multiple tiny lung nodules. Sequential imaging in March and dec 2018 and May 2019 show incremental changes";
      patient_information_complete = "Incomplete";
      other_tumour_type = "LMS thigh";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "kidney block requested from RPAH by Warren 5/9/21, unable to provide kidney block but sent pancreas block 4/10/21";
      histology_summary = "LMS:\nThigh biopsy Jan 2017\nPancreas Mar 2017\nThigh excision May 2017\nKidney Mar 2020\n";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01255";
    capture = CREv2;
  }
