with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "20T";
      class = "tumours";
      pdx = false;
      r1 = "4q/X1/SHA256E-s11141495775--d11a907d0f2de1c39350927d71b4ca236a2f394eacbd753a75a528b961de73b3.gz/SHA256E-s11141495775--d11a907d0f2de1c39350927d71b4ca236a2f394eacbd753a75a528b961de73b3.gz";
      r2 = "qW/96/SHA256E-s11235765753--4c49ba6b5c5af90b066c4ea3b67acb83717fe76e3b33fa3d3fb1ce4c2c353ac1.gz/SHA256E-s11235765753--4c49ba6b5c5af90b066c4ea3b67acb83717fe76e3b33fa3d3fb1ce4c2c353ac1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3K/Vq/SHA256E-s3477340827--669ab9bb83d5258b216a17576596d5363eda4d1e3008832ef34af01ce12db38f.gz/SHA256E-s3477340827--669ab9bb83d5258b216a17576596d5363eda4d1e3008832ef34af01ce12db38f.gz";
      r2 = "Vz/XJ/SHA256E-s3511344704--f499d3d357f13a98e2f720c1be32d838fee782625d69b7a9543647ab7bd74fd5.gz/SHA256E-s3511344704--f499d3d357f13a98e2f720c1be32d838fee782625d69b7a9543647ab7bd74fd5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0095";
      meeting_discussions_follow_up = "RC Meeting 2023.02.02\nHave WGS on PDX sample. Discussed the methylation testing already performed.\nNo more sections/block for sample 20T.\nAsha has block 1R from 08-09-2020? DNA already extracted, just need to re-do germline. Do we submit this for WES as well? \nAnother block available (to replace 20T, original block)? If not, use the 1R sample from Asha. For methylation. \nPatient deceased, but still need answers \n\nRC Meeting 2021.12.16\nDiscussed methylation results of S1.\n    Looks like the S1 has lost methylation completely (strange given 2 copies of BRCA1 predicted from WES... should discuss further) \nWe discussed 25 Nov: local analysis done, BRCA1 CN {2,0} BRCA2 {4,2}.   \nLarge scale aneuploidy? Wrong copy number? \nJocelyn to check copy number plots. \n\n\nClare's meeting 2021.07.29\n SFRC01305_S1: Not CCNE1 over-expressed. Lots of pleural fluid vials. To put into mice (if not already) \n\nRC Meeting 22.07.2021\nDiscussed WES results.\nPurity 0.49, TMB 15 - this is below threshold of 20 that is considered high. \nPOLQ is germline, not somatic.\nTP53 somatic (same as BROCA) \nMYC - frequency too low \nLTZR1 - unlikely to be significant as some level in the population and not an activating mutation.\nKas to add to her methylation list.  \nARID1A and EZH2 are of note. \n\nClare's meeting 2021.06.03:\nDiscussing Cyclin E staining. Is now on SOLACE2. Is not Cyclin E high (good!). \nFollow up WES results \n\nClare's meeting 20.05.2021\nPatient is now on SOLACE2 (recent). Not 3+ CyclinE.  \nWES coming. \n\nMeeting notes 11.09.2020\nBlock 20T reviewed - 35% tumour in small areas.\nMake DNA and send for BROCA (new list!) This is clinically urgent. 4th cycle July 2020, 6th cycle Sept 13th -need result by end of November! To give her 1st line maintenance.  \nIf sending BROCA next week, need results in 2 months! Have about 5 cases for priority. \n\nMeeting notes 22.04.2021\nSFRC01305_20T \n35% in small circled regions - Ratana isolated regions for DNA extraction. Send for WES \n\nDo CCNE1 IHC - Cass has organised optimisation here at WEHI (could go on Ignite trial later if high) ";
      date_of_death = "01/2023";
      d_case_summary = "ovarian ca - high grade serous for BROCA testing";
      date_consented = "2020-05-15";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC  BRCA1 methylated (Kas result)";
      case_details = "ovarian ca - high grade serous for BROCA testing\n66years old \n\n18-06-2021: Right Pleural fluid effusion, post PARPI (positive for PAX8_WT1_P53_P16 and ER 3+) \n\n04-2020 Ovarian cancer (Extensive omental/peritoneal disease, R pleural fluid) Omentum biopsies (Adenocarcinoma consistent with tubo-ovarian origin, Ki67%) \n\nStage IV (Rpleural effusion) HG serous carcinoma ovary  \n\nChemo: 1 carbo/taxol/Avastin  \n\n2- 3-4 : carbo/taxol ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "27Feb23: Block 1R received from PMCC by Monica \n\n17Feb23: Block 1R requested from PMCC by Monica\n\n2020 HGSEC recalled from Melbourne Path for Clare via fax on 04/08/2020 by Josh\n\n2020 HGSEC tissue receive on 16/082/020 by Josh";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01305";
  }
