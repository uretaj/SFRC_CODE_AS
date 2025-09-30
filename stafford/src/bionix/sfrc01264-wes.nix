with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qf/GP/SHA256E-s2389459739--e39e4fb267155292e69fb66f0b2aa07a7bf315f3ee9fac528597b0e313991b61.gz/SHA256E-s2389459739--e39e4fb267155292e69fb66f0b2aa07a7bf315f3ee9fac528597b0e313991b61.gz";
      r2 = "3P/VM/SHA256E-s2701351138--ac76d3d09666195aad7d3333df6645ed66ed3b1cfb2d496b7a3b3b1bb993b559.gz/SHA256E-s2701351138--ac76d3d09666195aad7d3333df6645ed66ed3b1cfb2d496b7a3b3b1bb993b559.gz";
    }
    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "WX/M3/SHA256E-s3251489940--d411e4fb8160e8d53f6950dc58bb1df330b1fe662d09afd2539d6e07ade940c4.gz/SHA256E-s3251489940--d411e4fb8160e8d53f6950dc58bb1df330b1fe662d09afd2539d6e07ade940c4.gz";
      r2 = "Qf/24/SHA256E-s3505312651--efae0503fed5b59cf28e5d56c4e00dd162a2ec06b3b2b12ef600763ff2b313b8.gz/SHA256E-s3505312651--efae0503fed5b59cf28e5d56c4e00dd162a2ec06b3b2b12ef600763ff2b313b8.gz";
    }
    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "VG/8W/SHA256E-s5272471956--a3d6d419697415fe44e301f23baeebfc9a97e3550cf4cf1b6932d3528e34582a.gz/SHA256E-s5272471956--a3d6d419697415fe44e301f23baeebfc9a97e3550cf4cf1b6932d3528e34582a.gz";
      r2 = "Gk/29/SHA256E-s5339359918--33d6831a4708a8ce9f22861dee89489ba8beaa1ba18967d9dc0a483ea830fafd.gz/SHA256E-s5339359918--33d6831a4708a8ce9f22861dee89489ba8beaa1ba18967d9dc0a483ea830fafd.gz";
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
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01264";
  }
