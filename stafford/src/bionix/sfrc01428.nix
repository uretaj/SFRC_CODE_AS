with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fk/M9/SHA256E-s39986171285--0825ea72d8fc44232129b1c06e5f84350acc935bc4c3b537d9fbe18feb918fa0.gz/SHA256E-s39986171285--0825ea72d8fc44232129b1c06e5f84350acc935bc4c3b537d9fbe18feb918fa0.gz";
      r2 = "wq/vZ/SHA256E-s42266927328--cdf4978d442db90172ed3312653c962630d4412655f5a471b56b5d41963f22e1.gz/SHA256E-s42266927328--cdf4978d442db90172ed3312653c962630d4412655f5a471b56b5d41963f22e1.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "KP/kq/SHA256E-s67097031739--bc0b1d319bf3d6480c801f72368c63927c4a5faf29f655cb3f4caceba6891dff.gz/SHA256E-s67097031739--bc0b1d319bf3d6480c801f72368c63927c4a5faf29f655cb3f4caceba6891dff.gz";
      r2 = "jf/Jp/SHA256E-s69537183070--6b41fc1207b4a62d90581c37d42b6cc1348d9f82862ecfbcdd6a1cea2471c035.gz/SHA256E-s69537183070--6b41fc1207b4a62d90581c37d42b6cc1348d9f82862ecfbcdd6a1cea2471c035.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0044";
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 06.10.2022\nDiscussed BROCA results (compare to WGS).\nPTEN is on the BROCA list, but not picked up. The three other rearrangements not detected is understandable. \nSPRTN is in the WGS report (GRIDSS) .\n\nBROCA meeting with Clare 04.11.2021\nSend S1 for BROCA\n\nClare's meeting 2021.09.24\nSFRC01428_S1: cyclinE not overexpressed\n\nRC Meeting 02.09.2021\nDiscussed WGS report (without SFRC data analysis).\nPatient could be treated with eribulin.\nCCNE1 not overexpressed, but still need IHC expression.\nTopotecan might be a treatment option.\n\nClare and Ratana Meeting 30.08.2021\nDo Cyclin E IHC and methylation assays\n\nClare's meeting 2021.08.12\nS2 which was received frozen in MACS media floating in -80. Thaw it and put into OCT, FFPE and SF if possible - look at H&E to check quality \n\nClare's meeting 2021.07.15\nPlan for S1: From the OCT sections (highest purity) extract both DNA and RNA and send for WGS \n\nS2 to be assessed later. Was on SOLACE2  ";
      date_of_death = "04/2023";
      d_case_summary = "49 yo female \nPlatinum refractory HGSOC BRCAl/2 wildtype \nDx June 2019 with oc stage 4 oc: bilateral pelvis masses   extensive iliac and retroperitoneal , left axillary land cervical ymphadenopathy   large mases in the descending colon anterior to the spleen, ca12s 1961 \nJune 2019: started Neoadjuvant chemo. CA125 normalised post C3 \nAug 2019: IDB TAH, BSO and splenectomy \nOctober 2019: Completed adjuvant chemotherapy \nMay 2020: Rising CA125 enrolled on SOLACE 2 -off study November 2020 \nNov 2020: commenced second line carbo  caelyx \nPET post 3 cycles-PD \nMarch 2021: Referred for clinical trials";
      date_consented = "2021-06-28";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC  50% BRCA1 methylation";
      case_details = "49 yo female  \n06-2019 diagnosed stage IV disease. NACT Carboplatin/Paclitaxel 3 cycles, surgery. Complete metabolic remission. Surgery sample was BRCA WT, no germline pathogenic mutations. -   \n11-2020 PD, came off trial. Caelyx, PD in Feb 2021. \n 03-2021 Trial carboplatin + Wee-1 inhibitor (ZN-c3). After 2 cycles, CA125 dropped from 600 to 179. \n07-2021: Went for WGS  ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01428";
  }
