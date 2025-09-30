with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/wes/2020-08-03/SFRC01277-1A_S4";
      suffix = "_001";
      sha256-1 = "7f4e353b10490f14d93ee2885a9db4f79f1cfdc2b0a2404416dd9900a92987d7";
      sha256-2 = "992772e54c5b063245c02df98eb3c28d630e3a9d474f586b99aa4efe8b76c772";
    }
    {
      site = "1A";
      class = "tumours";
      prefix = "fastqs/pmcc/wes/2020-08-03/SFRC01277-B1_S3";
      suffix = "_001";
      sha256-1 = "70a29674dd42d3e927ca90012282a78608e32595935e335e072b40bda004b208";
      sha256-2 = "caf44d0a6872d159a45f15779c1899f4a36ff7ae3ad7f7da2cc6d08c5b63e684";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting with Clare 12.11.2021\nBriony to get a follow up letter from Kym Reid.\n\nRC Meeting notes 20.08.2020\nATM frameshift is worth considering.\nLack of somatic mutations could result from viral insertion - more likely to see amplifications, etc.\nLoss of p53 by viral proteins E6/E7.\nThe full html report is finished - CNVs not in the summary report (as of this week they will be included in summary reports even if there's no findings) .\nNeed to have some negative details in reports to show things are actually not present rather than just not reported.\nGeneration of clinical reports is still a work in progress. There are no CNVs in this case meeting criteria to include in summary. \n\nMeeting notes 16.07.2020\nSend for WES\n\nClare Meeting 07.05.2020\nMacrodissect slides for tumour DNA.\nNeed to get blood - ask Marita to ask if patient is having chemo, organise courier. Will do WES when have blood.";
      date_consented = "2020-02-14";
      tumour_type = "Clear cell cervix";
      tumour_details = "Clear cell carcinoma cervix";
      case_details = "Bx of cervical lesions showed clear cell carcinoma of ?cervical origin. PET and MRI showed literal disease on EUA\n\nIn the post-DES era, the prevalence of CCAC was found to be approximately 4-9% of the cases of adenocarcinoma of the cervix (Reich et al., 2000). There are clearly separated peaks of incidence in young and advanced aged women who have been exposed to DES in utero.Feb 22, 2017";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Clear Cell Carcinoma of the Cervix tissue requested from Melbourne Pathology  to on 28/02/2020 by Joshua\n\nReceived on 6/3/2020 by Josh";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01277";
    capture = CREv2;
  }
