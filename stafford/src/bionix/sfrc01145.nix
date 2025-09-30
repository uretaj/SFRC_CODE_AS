with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "W6/ww/SHA256E-s52881808230--b3944835f10d98fa8ce8e469455fa83f7fbf90078d13f3877c130a9e02e23cd3.gz/SHA256E-s52881808230--b3944835f10d98fa8ce8e469455fa83f7fbf90078d13f3877c130a9e02e23cd3.gz";
      r2 = "gF/xp/SHA256E-s57990295737--fd7bc5f02b49c42dcb5c782ba6ec88cc4b7a21171f43650e41944d682993ea40.gz/SHA256E-s57990295737--fd7bc5f02b49c42dcb5c782ba6ec88cc4b7a21171f43650e41944d682993ea40.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "pw/wg/SHA256E-s96482967580--2845daf9399ef6bd1b4b43229a9c6ccf845a25d6844b2e696f59f7289aded55a.gz/SHA256E-s96482967580--2845daf9399ef6bd1b4b43229a9c6ccf845a25d6844b2e696f59f7289aded55a.gz";
      r2 = "0f/wM/SHA256E-s104954721836--bd939120d6dbb15c24b07f33286fb719d6c22ecc93c5afd96611540e3175d71a.gz/SHA256E-s104954721836--bd939120d6dbb15c24b07f33286fb719d6c22ecc93c5afd96611540e3175d71a.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "W0/MJ/SHA256E-s9581028147--f260718825af6fa80a8e444bed3dda2a272b9733efdeef743b1eb5948a443894.gz/SHA256E-s9581028147--f260718825af6fa80a8e444bed3dda2a272b9733efdeef743b1eb5948a443894.gz";
      r2 = "XP/w6/SHA256E-s9744834624--69df864a99ca03ce6db1226d5a7bb638a7e3ced560d3b50cbe28e1910d6fae8a.gz/SHA256E-s9744834624--69df864a99ca03ce6db1226d5a7bb638a7e3ced560d3b50cbe28e1910d6fae8a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "Meeting notes 05.09.2019\nPlan: Received amended report. RNASeq shows fusion is not expressed, PTPRK-RSPO3 is expressed. Clare to email David Tahn (?) to see if we can get porcupine inhibitor/ suggestions. \n\nMeeting note 08.08.2019:\nWGS discusion: anything known about MYB-UST fusion? \nRob Ramsay at Petermac is MYB expert, could chat to him \nNeed to get all the data - this should happen (Justin) - Clare will send email to get the ball rolling \nAs we receive reports, look at who they might be interesting to.";
      date_of_death = "10/2019";
      date_consented = "2019-03-05";
      tumour_type = "Gynae cancer other";
      tumour_details = "?periurethral adenocarcinoma";
      case_details = "Adenocarcinoma periurethral origin with bilateral inguinal nodes and small volume lung mets\n\nPelvic RT completed April 2018 with concurrent carboplatin\nCommenced carboplatin/paclitaxel in Nov 2018, due to progressive disease. Completed March 2019. Progression in March 2019\nFor palliative care to manage pain";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "L) Inguinal LN Biopsy -Fresh Tissue \n3x cores received fresh 10-Apr-19";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01145";
  }
