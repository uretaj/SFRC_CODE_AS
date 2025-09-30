with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/2020-05-29/SFRC01256-B1_S2";
      suffix = "_001";
      sha256-1 = "3418f55b67df266b5bd3b2adb51c29298af7631a8b3b725bb7fb05ffe72f3b18";
      sha256-2 = "3e5ac77269d5c8ddaccaf215bf8ca89d7a176c7b4b0e8b220aa0f11a18682324";
    }
    {
      site = "S2";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-05-29/SFRC01256-S2_S1";
      suffix = "_001";
      sha256-1 = "1d6b2cb9f7d3ecf3facc2b7e62199ebebe453825fb803ae7089f843b133bc0ab";
      sha256-2 = "5ee9bb82f336f3e4339392379e8253d13bde4a9ca5343768a611a431fa079da7";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 08.12.2022\nDiscussed WGS report on PDX sample.\nSame TP53 and PIK3CA detected by BROCA-GO.\nVWF is recurrent in HGSEC, but very common.\nFBLN2 amplification (x54 copies)\nCDK12, IKZF3, ERBB2 - amplification (x19 copies) \nERBB4 homozygous deletion \nNo fusions detected.\n\nRC meeting 06.10.2022\nDiscussed new BROCA results (compared to all other results).\nNothing new to note.\n\nMeeting notes 27.08.2020\nS4 ascites block has had IHC done. Want to do HER2 IHC, alongside S2 sample, as well as patient and PDX samples for SFRC01069 (another HER2 model).\n\nRC Meeting notes 09.07.2020\nSummary report: 30% tumour purity - need to update as some pathogenic mutations have been missed in summary report (Justin and Jocelyn will work on filtering) \n\nGermline mutations: RB1, NPAT, TSC1, PTPN13, COL7A1, CBL, RUNX1 of varying levels of pathogenicity (APC and POLE missed from this summary list) \n\nSomatic variants: TP53 (PIK3CA missing from summary list) 2 variants are on opposite alleles - other variants with highest frequency but uncertain clinical significance are KAT7, ATP2B3 and MYH11 \n\nERBB2 amplification (10 copies) \n\nIs PIK3CA driver - actionable? \n\nPIK3CA is also in an amplified region (3 copies) \n\nSignature 3 is highest - but low number of mutations assigned - possibly not actionable \n\nThaw cells, expand, do tumour cell isolation and then transplant into mice and make DNA (Holly/Ratana) \n\nCan also test some drugs on the cells - relevant to PIK3CA mutation (Holly/Ratana) \n\nPDX - small tumour measured this week for the first time - S2 from Nov 2019 sample which is before Trastuzumab/Pertuzumab therapy \n\nMeeting notes 09.04.2020\nWe have been given approval from RWH to access the frozen tissue. Do we want to access now or after COVID restrictions are lifted? Briony to organise with Trisha. \n\nPlan: Holly can collect when collecting GCT sample on Wed 15.4.20 - take more long term buffer and streck tubes to Trisha for backup \n\nMeeting notes 26.03.2020\nExtract DNA, do TP53 miSeq, if tumour more than 60% send for WGS, if not, do WES. This ok?\nHas been having treatment since December and tolerating well \nVery important case \nGo back to Trisha and request additional tissue (Briony) because really want to be able to do WGS - if can't get anything then will have to do WES on S2 (20-30%) \n\nMeeting notes 30.01.2020\nGet S2 snap frozen pieces from both tubes blocked in OCT and sectioned, macrodissect for DNA, do TP53 assay to check tumour purity. If tumour purity more than 60% go ahead with WGS if not do WES. \nSend picture of H&E to Clare to inform clinician, Briony emailed Trishia to find out if more tissue available. Trishia got back yes there is more tissue available but we can't have it. \nBriony to check HER2 report ";
      date_of_death = "08/2020";
      date_consented = "2020-06-23";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "FIGO Stage II HGSEC Dx 10/12/2018 on TAHBSO and omental biopsy. Post op PET showed no evidence of metabolically active disease\n\nCompleted PORTEC3-style CRT + Carbo/taxol 17/7/2019\nCommence trastuzumab/pertuzumab/paclitaxel Dec 2019, responded well, initially, however suddenly started accumulating ascites\n\nUrgent precision oncology 8 April 2020 re COVID-19\nHER2 positive";
      pre_analysis_mutations = "HER2 positive";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01256";
  }
