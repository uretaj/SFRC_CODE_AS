with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {
          walltime = "96:00:00";
          partition = "long";
        };
        samtools.sort = def samtools.sort {
          walltime = "96:00:00";
          partition = "long";
        };
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/s3/batch2/SFRC01108/PRJ180624_SFRC01108-B1N_S14";
      suffix = "_001";
      sha256-1 = "a8fcea44025542649caba930c3bf5bcbb7b843148989d2d2715029836054157e";
      sha256-2 = "40a30ee9965546acaf93206e872df64a93a9892a396e4d0c3f1563870c77ff7d";
    }
    {
      class = "tumours";
      site = "S1";
      prefix = "grimmond/s3/batch2/SFRC01108/PRJ180623_SFRC01108-S1T_S13";
      suffix = "_001";
      sha256-1 = "a0f8f06d2fc3d2099566b04ea58381571f61cfa7e06f5a812af403729ab10952";
      sha256-2 = "0e7199e8477c3fd78b68516cff4e1d09690850f3abc2d193261402b273a4de35";
    }
    {
      site = "S1";
      class = "rna";
      r1 = "Xj/Pg/SHA256E-s4227909688--9706e319e297c52f98bc7d710f580c83b85651529c61762e77caf9ba4fd451fb.gz/SHA256E-s4227909688--9706e319e297c52f98bc7d710f580c83b85651529c61762e77caf9ba4fd451fb.gz";
      r2 = "Wp/JG/SHA256E-s4444735668--db4a55f080989710f55aa8412f823c1e04b2714b1611d238d50603b1d7b01097.gz/SHA256E-s4444735668--db4a55f080989710f55aa8412f823c1e04b2714b1611d238d50603b1d7b01097.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "RC Meeting 06.10.2022\nDiscussed BROCA results.\nPIK3CA is not a hotspot mutation.\n\nBROCA meeting Clare/Amandine 04.03.2022\nSend human baseline matching the PDX.\nS2 to send for BROCA\n\nMeeting notes 19.03.2020\nKristy to take frozen block to histology for sectioning today (01108_S4). Make DNA to give to the patient that she can then send somewhere for sequencing. \n\nMeeting notes 2020.03.12\nNot enough DNA during first OCT extraction on 20xslides S2 plus 20xslides S4. Get both block entirely cut and repeat extraction.\n\nMeeting notes 27.02.2020\nGo ahead with WGS on S2 and S4, patten funding. Gen to choose one vial to try grow organoids from.   ";
      date_of_death = "9/2020";
      date_consented = "2018-10-16";
      tumour_type = "Clear cell ovary";
      tumour_details = "clear cell ovarian ca, stage 4 at diagnosis, perforated bowel post-op, poor prognosis, for WGS aggressive cancers project";
      case_details = "Very aggressive clear cell cancer of the ovary, stage IV with liver mets. \n\nTAHBSO, liver metastectomy, bowel resection. For carboplatin/paclitaxel adjuvant chemo on 22/10/18, followed by rehab. For WGS. Consented for SFRC.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01108";
    disableGridss = true;
  }
