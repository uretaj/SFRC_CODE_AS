with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "x5/J4/SHA256E-s60610251904--700da239374d573f162e1faf5abf34c90ad3484e6dc7873367818881137729dc.gz/SHA256E-s60610251904--700da239374d573f162e1faf5abf34c90ad3484e6dc7873367818881137729dc.gz";
      r2 = "Z6/MV/SHA256E-s62866322293--6cd02d56921ee281ef97729f094326592cca094c4ce52587f9932fc4381d7767.gz/SHA256E-s62866322293--6cd02d56921ee281ef97729f094326592cca094c4ce52587f9932fc4381d7767.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "GF/74/SHA256E-s98743824477--9654836d6385f098bf23ca0a457ae372a1e1864f81cafe1dba72082ad4858411.gz/SHA256E-s98743824477--9654836d6385f098bf23ca0a457ae372a1e1864f81cafe1dba72082ad4858411.gz";
      r2 = "45/vZ/SHA256E-s102066757639--53dbb093e2f72d5213c9591e9ccad12b2fdfbb8563b45517d3b10cc4e67fc049.gz/SHA256E-s102066757639--53dbb093e2f72d5213c9591e9ccad12b2fdfbb8563b45517d3b10cc4e67fc049.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Vw/04/SHA256E-s9188641047--daec85452fd94d9b6b126f755dcab432453f66f5f6026f26c1c500506ad50678.gz/SHA256E-s9188641047--daec85452fd94d9b6b126f755dcab432453f66f5f6026f26c1c500506ad50678.gz";
      r2 = "07/4G/SHA256E-s9038298753--314ca5eb0f2af3a91cae3a7a5d6d7c348ee7e03a131f66284d889f57a08081e5.gz/SHA256E-s9038298753--314ca5eb0f2af3a91cae3a7a5d6d7c348ee7e03a131f66284d889f57a08081e5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "BROCA meeting 18.02.2022\nSend S1 for BROCA\n\nRC Meeting 20.01.2022\nNew Discussion: \nSomatic TP53 mutation (definitely HGSOC) \nKRAS \nReport the PIK3CA (even though only 1) \nARID1A deletion - for ATRi + PARPi trial that is only overseas \nSample for this patient has been sent for Myriad MyChoice. \n\nRC Meeting 16.12.2021\nDiscussed WGS report (no SFRC data yet).\nHad Cyclin E IHC done on S1 - strong, cytoplasmic and nuclear positivity in approximately 60% tumour cells. \n? Methylation - Kas to add to her list? \nWant to come back to this case (after data has been analysed) because of the BRIP1. \nKRAS - Beigene Trial if she progresses \nNeed to send report out \n\nClare's meeting 22.10.2021\nBriony to find germline panel for the BRIP1 report. Damien and Briony to report CCNE over expression.  \n\nClare's meeting 2021.09.24\nS1: OCT-60% in circled area\nmicro dissect WGS DNA and RNA \nDo CCNE1 IHC ";
      myriad_report = "SFRC01448_MyriadResult_2Feb22_Redacted.pdf";
      d_case_summary = "67 yo woman with gBRIP1 mutated HGSOC, first rising CA125. Diagnosed Feb2020. Treated with TLH LSO (previous RSO) May2020, Carboplatin/Paclitaxel completed Jul2020. Recurrent vaginal tumour Aug2021, debulking Sep2021.";
      date_consented = "2021-08-24";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "67 years old woman \n\n04-2020: Laparoscopy, hysterectomy , debulking \n\nThe tumour cells are positive for WT1 and PAX8, p53 is negative \n\nKi67 index is about 40% in the area of STIC \n\n \n\n05-2020: Tested for BRCA1 and 2 no pathogenic variants detected. \n\n07-2020: Adjuvant Carbo Taxol completed \n\n08-2021: recurrence, surgery, fresh tissue received and review here \n\nP53: no staining (mutated pattern/null phenotype)  \n\nAE1/AE3: positive with minor loss of staining seen in the renal cell areas.  \n\nProgesterone receptor protein (PR): 1+ intensity nuclear staining in <5% of tumour cells  \n\nOestrogen receptor protein (ER): 2+ intensity nuclear staining in 30% of tumour cells \n\n ";
      brca_report = "SFRC01448_BRCAReport_17Jun2021_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 34";
      fcc_report = "SFRC01448_FamilialCancerPanel_11-5-2020_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_germline_mutations = "BRIP1";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01448";
  }
