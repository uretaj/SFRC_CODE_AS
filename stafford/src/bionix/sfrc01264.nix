with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9W/xM/SHA256E-s33298037206--550fc0315621b6fc59026be124f05561ac4493042dd093d60f99f88f92b4fe77.gz/SHA256E-s33298037206--550fc0315621b6fc59026be124f05561ac4493042dd093d60f99f88f92b4fe77.gz";
      r2 = "W9/Jm/SHA256E-s34969876977--c501b3951e964f754297f0154b4a06b2acd305f71c8bebb93a7dca69ebcd46ab.gz/SHA256E-s34969876977--c501b3951e964f754297f0154b4a06b2acd305f71c8bebb93a7dca69ebcd46ab.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "x0/46/SHA256E-s21068628875--3c9d1694edfc3ac4aa695f7f0069369e8f2cf0f68888c9640b7ad338b4c9dcc3.gz/SHA256E-s21068628875--3c9d1694edfc3ac4aa695f7f0069369e8f2cf0f68888c9640b7ad338b4c9dcc3.gz";
      r2 = "zW/j3/SHA256E-s22030117049--62ca8cd656a939665fb58eec2b8ce00e3623b343cadd11bc72d19508547c329e.gz/SHA256E-s22030117049--62ca8cd656a939665fb58eec2b8ce00e3623b343cadd11bc72d19508547c329e.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "v1/mv/SHA256E-s21424492533--a7e0d50e84a7ba3995d723a351c76dd027b36b12dafe175eed131a4f61cd4c35.gz/SHA256E-s21424492533--a7e0d50e84a7ba3995d723a351c76dd027b36b12dafe175eed131a4f61cd4c35.gz";
      r2 = "15/Wm/SHA256E-s22437922991--f40fd02c0888b58432ee6a03e815c8c80efa7566792aeb41d1396d6bb986197b.gz/SHA256E-s22437922991--f40fd02c0888b58432ee6a03e815c8c80efa7566792aeb41d1396d6bb986197b.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "5q/GM/SHA256E-s20589480090--3dc5ad493931f37fd8edbf4be60cb4366ea241ee978a259aa8bd36790fa6ed11.gz/SHA256E-s20589480090--3dc5ad493931f37fd8edbf4be60cb4366ea241ee978a259aa8bd36790fa6ed11.gz";
      r2 = "8m/Q7/SHA256E-s21432285563--06b3af24f2b96d9e7be998b59520ff600389c4367d42732d41a3824571d9c66f.gz/SHA256E-s21432285563--06b3af24f2b96d9e7be998b59520ff600389c4367d42732d41a3824571d9c66f.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "28/4X/SHA256E-s20846891151--b90d8be74fcffd43bf439284c8098f9639b78362c50fe1f120a06bcf445be781.gz/SHA256E-s20846891151--b90d8be74fcffd43bf439284c8098f9639b78362c50fe1f120a06bcf445be781.gz";
      r2 = "v4/fQ/SHA256E-s21378633459--f1b2288161c65fce16952781562de8c0e6495bee868ea74c3290ce36b4513345.gz/SHA256E-s21378633459--f1b2288161c65fce16952781562de8c0e6495bee868ea74c3290ce36b4513345.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.09.2022\nDiscussed WGS report on PDX sample. \nDiscussion: d11q case with no secondary mutation.\nCNN LOH for NF1 (2 copies on the same allele, like 1 copy is gone).\nEZH2 (1,0) \nA lot of LOH \nThe 2x NF1 mutations were in the WES (FFPE sample, low quality) \n\nRC Meeting 12.11.2020\nDiscussed WES results (in Analysis DNA instrument)\n\nMeeting notes 17.08.2020\nMake DNA from 3H sections. To send for WES.\n\nMeeting notes 16.07.2020\nFoundation medicine update from molecular tumour board meeting \nLiquid biopsy: BRCA1 germline (0.46%), PALB2 at 0.067%, no TP53 mutation (even though p53 IHC is clearly mutant) - SGZ algorithm for determining germline variants in ctDNA \nMSAF = 0 = not coming from tumour \nMSAF = 1 = all coming from tumour \nTherefore, PALB2 = 0.67 is most likely coming from tumour. \nWait for the next report before considering making DNA from this sample. Also wait for PDX.\nRatana is chasing up FFPE block from Josh and Kristy will make DNA from the block. \n\nMeeting notes 18.06.2020\nFFPE from Peter Mac sent to Boston for Foundation Med. Re-embed more snap frozen in OCT and re-submit to histology. \n\nClare's email to Josh 03.03.2020\nDear Josh,can you tell me if you have ordered in the block for this lady's carcinosarcoma from Feb 2013?\nIf so, can we order ER/PR staining on it?";
      date_of_death = "11/2020";
      d_case_summary = "BRCA1 ovarian carcinosarcoma post PARPi FM liquid biopsy plus solid tumour biopsy. Deceased 11/11/2020.";
      date_consented = "2019-12-31";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "gBRCA1 Multiple primary (2 Breast, ovarian carcinosarcoma and melanoma)";
      case_details = "Dx with Stage 3c ovarian carcinosarcoma in Feb 2013. Surgical resection considered optimal. The received 6 cycles of carboplatin/paclitaxel\n\nRecurrence in pelvis in October 2014, after which fcarboplatin/taxotere was given. Allergy developed to carbo, so changed to cisplatin. FOllowed by RTx\n\nAnother recurrence in Oct 2016, and received more Cisplatin. Interval debulking surgery was performed after 2 cycles.\n\nCommenced Lynparza in May 2017.\n\nPET then showed recurrencei n abdomen.\n\nBloods and biopsy received 28/5/2020\nstarted low dose oral cyclophosphamide (post PARPi) 1/06/2020\ngBRCA1";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2013 Tissue containing carcinosarcoma recalled from Melbourne Pathology via fax on 17/03/2020 by Joshua\n\nMelbourne Pathology reported that tissue was depleted. Tissue from 23778-13T block 3H was re-requested on advice of Melbourne Pathology on 23/03/2020\n\n23778-13T block 3H followed up on 22/06/2020 by Josh\n\n2013 Tissue received 23778-13T (to drop off in lab week starting 27th July)\n\n2014 Tissue containing carcinosarcoma requested from Melbourne Path on 22/06/2020 via fax by Josh for Kirsty, re-requested on 9/10/2020\n\n2014 carcinosarcoma block 1A received 14/10 by Josh";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_germline_mutations = "BRCA1";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01264";
    predictNeoantigens = true;
  }
