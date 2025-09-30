with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "7p/XG/SHA256E-s3569703100--40f01e610774142ede0137ccdd564776bce139d463f20f893805f535d711bcf8.gz/SHA256E-s3569703100--40f01e610774142ede0137ccdd564776bce139d463f20f893805f535d711bcf8.gz";
      r2 = "kW/2K/SHA256E-s3837240073--fe24e8e0a2acc5510717a371cdcd02e2844157555e8129adeece65497f7f34c7.gz/SHA256E-s3837240073--fe24e8e0a2acc5510717a371cdcd02e2844157555e8129adeece65497f7f34c7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "24/f6/SHA256E-s2782201612--468263e76bc57935a4736d91f52bcdefb766c5ba34db104c6fa133f694960a52.gz/SHA256E-s2782201612--468263e76bc57935a4736d91f52bcdefb766c5ba34db104c6fa133f694960a52.gz";
      r2 = "XJ/ww/SHA256E-s3018260425--d599fa0db31c9a3cc07c5d7e7fce4104a5ed593f8d0c116d5d9f7f9d1a563825.gz/SHA256E-s3018260425--d599fa0db31c9a3cc07c5d7e7fce4104a5ed593f8d0c116d5d9f7f9d1a563825.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting notes 17.08.2020 (Clare and Ratana)\nPatient deceased, like to do WES (carcinosarcoma project) dependent on funding of whole project - talk with Holly and Gen if this sample would be helpful. Could await BROCA results. Holly says yes for WES.\n\n15.05.20 Lab meeting\nAmount sent over is under 1ug required for BROCA- Holly to check if this is ok but need to find out if from fresh or FFPE (Clare to find out). We would like to do BROCA on this sample to investigate/confirm absence of HR deficiencies (assuming iPredict report found nothing - Clare to chase up report and upload to REDCap). \n\n27.03.2020 Redcap meeting with Clare\nThis patient was enrolled in iPredict  and TP53 mutation.\nRequest some DNA from iPredict through Damien and organise BROCA.\nAlso ask Josh to recall a block.";
      date_of_death = "03/2019";
      date_consented = "2018-07-31";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Uterine carcinosarcoma";
      case_details = "metastatic";
      pre_analysis_mutations = "TP53 and BCL2L1 amplification";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2016 Tissue containing uterine carcinosarcoma recalled from RWH via email on 31/03/2020 by Josh\n\n2016 Tissue received 16972069FSG 1F 10/07/2020 by Josh";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01100";
  }
