with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "x5/KK/SHA256E-s21316441380--1131ed04999b40c1f63485f4e06d20a66e7eb46144ed4a55a574681a846036f4.gz/SHA256E-s21316441380--1131ed04999b40c1f63485f4e06d20a66e7eb46144ed4a55a574681a846036f4.gz";
      r2 = "3v/j8/SHA256E-s22517002214--7245d970fca4033c4431a5a61517625618efe80a7e41984490f609429f25aefa.gz/SHA256E-s22517002214--7245d970fca4033c4431a5a61517625618efe80a7e41984490f609429f25aefa.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "75/PX/SHA256E-s4910167026--1b4b33a4544ff253735682c3a9ab273d1452a8353115af7422d7af2c0c968cf1.gz/SHA256E-s4910167026--1b4b33a4544ff253735682c3a9ab273d1452a8353115af7422d7af2c0c968cf1.gz";
      r2 = "pJ/g6/SHA256E-s5318714947--823473fd78221f4269d4717bdee5c837a4af6ae985fbccaf032ff9bc14538a74.gz/SHA256E-s5318714947--823473fd78221f4269d4717bdee5c837a4af6ae985fbccaf032ff9bc14538a74.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "BROCA meeting Rachael/Clare/Amandine\n07.04.2022\nOrganise Broca on block 2D\n\nClare's meeting 20.12.2021\nBlock 2D: send for WES and BROCA";
      d_case_summary = "Metastatic clear cell carcinoma of ovary\n46 year old female who underwent R salpingo-oophorectomy in November 2020. There were a lot of adhesions from endometriosis and the cystic lesion was spilled during removal. Final histological diagnosis clear cell carcinoma of the ovary arising in endometriosis. Stage IC. Completion formal gynae onc staging did not show any other disease. She recieved 4 cycles of carboplatin/paclitaxel completing in April 2021. September 2021 CA125 rose to 36. PET/CT scan shows R external iliac node, 24mm nodule adjacent to rectosigmoid junction and peritoneal disease in the left upper quadrant consistent with recurrent disease.";
      date_consented = "2021-10-08";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell ovarian carcinoma";
      case_details = "46 years old female \n\n2020-11: Initial diagnosis, Stage IC clear cell carcinoma, surgery\nnormal pattern staining for MSH2, MSH6, MLH1, PMS2\nBlock 2D received:  Purity - 50-60%. WES organised on this sample. \n\n2021-03: 4xcarboplatin/ paclitaxel completed\n\n2021-09: recurrence, started Caelyx\n\n2021-11: Blood B1 received \n\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "ARID1A, PIK3CA (MoST)";
      portal_letter = "SFRC01477_ARCPortal_Oct2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2020 slides received by Warren 07/12/2021. ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01477";
  }
