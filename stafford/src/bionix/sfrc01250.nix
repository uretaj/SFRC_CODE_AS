with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        samtools.sort = def sambamba.sort {
          ppn = 10;
          walltime = "48:00:00";
          mem = 42;
          flags = "-m 32G";
        };
        quip.unquip = def quip.unquip {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j9/0q/SHA256E-s7464216682--59d8ffd25200728c612d7089a28117b6fb93c22e15b46c6137d7d4ec9e60f784.gz/SHA256E-s7464216682--59d8ffd25200728c612d7089a28117b6fb93c22e15b46c6137d7d4ec9e60f784.gz";
      r2 = "xj/V2/SHA256E-s7912160653--7759252b1cd51ec8a177641b9bbd39127f67b4c0c1cc13d8d36f1d73b1839f89.gz/SHA256E-s7912160653--7759252b1cd51ec8a177641b9bbd39127f67b4c0c1cc13d8d36f1d73b1839f89.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wx/xf/SHA256E-s31888991863--9cae798252746ef0b35bf613113d5b706ee9203322690906ae1ae0acb6e6b8db.gz/SHA256E-s31888991863--9cae798252746ef0b35bf613113d5b706ee9203322690906ae1ae0acb6e6b8db.gz";
      r2 = "P9/J5/SHA256E-s34657569094--bc1f39250fd415db0c7520144e956e0baa6a640cbae7110403a586eb5cc9eb59.gz/SHA256E-s34657569094--bc1f39250fd415db0c7520144e956e0baa6a640cbae7110403a586eb5cc9eb59.gz";
    }
    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "wQ/16/SHA256E-s178171541057--f479afee6c943de8de381d260a484b0bf6086afd147c91526f3d682fc5cef3b2.gz/SHA256E-s178171541057--f479afee6c943de8de381d260a484b0bf6086afd147c91526f3d682fc5cef3b2.gz";
      r2 = "0g/Q0/SHA256E-s198263729389--d05c60aa04db61f51f2a3efc9c039903814096a30a070f33ab1fea7752011f17.gz/SHA256E-s198263729389--d05c60aa04db61f51f2a3efc9c039903814096a30a070f33ab1fea7752011f17.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "RC Meeting 10.12.2020\nMucinous type. HER2 amp, consistent with the GAS phenotype. \n3 rounds of pembro - potentially stable disease. \nPotentially eligible for TDM-1 trial (single arm of the MOST study - no prior anti-HER2 targeted therapy) \n\nMeeting notes 28.09.2020\nS3 FFPE block taken by Clare to Peter Mac for PD-L1 staining 8/9/20. S3 sample (OCT) - microdissect slides, to send for WGS.\n\nMeeting notes 27.02.2020\nWait for tumour to recur \n\n17 Dec 2019. Amandine and Clare discussion. Melb Path report of biopsy from recent surgery shows tumour therefore worth looking in our other fresh frozen tissue to see if any tumour. And could Josh recall the block from Melbourne Pathology (Clare has the report in Verdi scanned under investigations)";
      date_of_death = "01/2022";
      d_case_summary = "Adenocarcinoma Cervix\nRecurrent after 4.5 years, pelvic recurrence, no distant metastases, for attempted fresh biopsy plus WGS if successful\nChemotherapy in the meantime";
      date_consented = "2019-11-29";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Adenocarcinoma of the Cervix, GAS-type  HER2 amplified";
      case_details = "Recurrent adenocarcinoma of Cervix, FIGO Stage IIB Dx on TAHBSO in April 2015\n\nFollowed by adjuvant RTx until july 2015\n\nPresented with pelvic recurrence in Oct 2019, and PET at this time showed recurrence in vaginal vault posterior to bladder base with L distal ureter involvement\n\nNo role for surgery, and not feasible for RTx as HDR brachytherapy would be inadequate and technically difficult\n\nCommenced weekly carboplatin 10/12/19, paclitaxel added 7/1/20. Completed 4 cycles on 17/3/20. Ceased due to covid-19";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2019 Tissue containing adenocarcinoma requested via fax from Melbourne Pathology on 13/03/2020 by Josh\n\nRe-requested on 9/10/2020 by Josh";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01250";
    disableGridss = true;
  }
