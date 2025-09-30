with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vm/g9/SHA256E-s6391996304--7eb0086061d0ba97785c20e6d91728d98953bcd8388697f2eb5bae3257604e4e.gz/SHA256E-s6391996304--7eb0086061d0ba97785c20e6d91728d98953bcd8388697f2eb5bae3257604e4e.gz";
      r2 = "9Z/3K/SHA256E-s6873334220--414ea79c2fe9c29870517fc80a74ede709480618f4781de99a2624d7d44d4760.gz/SHA256E-s6873334220--414ea79c2fe9c29870517fc80a74ede709480618f4781de99a2624d7d44d4760.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "kK/35/SHA256E-s30574696343--fd86d50ca62dfcbbf84505755d551d4bb7ab50bbf8a7cc3e35bbc60cfc5cb508.gz/SHA256E-s30574696343--fd86d50ca62dfcbbf84505755d551d4bb7ab50bbf8a7cc3e35bbc60cfc5cb508.gz";
      r2 = "zk/fP/SHA256E-s32392708895--7c926e516d97de44ffe946063aeea0dac76560197402cc0995bf445186160bd1.gz/SHA256E-s32392708895--7c926e516d97de44ffe946063aeea0dac76560197402cc0995bf445186160bd1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "BROCA meeting 07.04.2022 Amandine/Clare/Rachael \nSend S1 for BROCA\n\nClare's meeting 2021.08.26\nSFRC01413_S1 :Do WES on FFPE \nBriony to ask Trisha if there is any other frozen tissue. Would like to do WGS, rather than WES (but will have to do that, if no choice) \n\nClare's meeting 2021.07.29\nSFRC01413_S1:This is FFPE block, we have OCT that has not been reviewed as not cut yet, should we cut the OCT block and attempt WGS is purity good or stick with WES\nReview OCT block for WGS - DNA and RNA! Need a good TMB \n\nClare's meeting 2021.07.01\nPlan: Initial notes said GCT, but after MDM review, this is high grade clear cell carcinoma of ovary. Ian Collins in Warnambool \nDo WES (find TMB, KRAS maybe). Look at clear cell ASCO abstracts, might make a new Project. Create new tumour type for clear cell? There is only Ovarian Cancer (other). \nAmandine to email Gayanie to circle higher tumour purity regions - extract DNA for WES \n\n ";
      d_case_summary = "65 yo female with stromal cell tumour; granulosa cell tumour. sex cord stromal tumour; granulosa cell tumour. Underwent TLH BSO on 26/5/21 - path summary-- clear cell carcinoma of right ovary - high grade. Negative for ER, PR, inhibin, calretinin, synaptophysin, chromogranin, CK20, p53 and WT1.";
      date_consented = "2021-05-28";
      tumour_type = "Clear cell ovary";
      tumour_details = "high grade clear cell carcinoma of right ovary";
      case_details = "65 yo female  \nMay-2021:\tLaparascopic hysteroctomy, salpingectomy, oopherectomy and omentectomy \nDiagnosis: clear cell carcinoma of right ovary - high grade.  \nNegative: ER, PR, inhibin, calretinin, synaptophysin, chromogranin, CK20, p53 and WT1. \nTreatment: \tAdjuvant chemotherapy  ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01413";
  }
