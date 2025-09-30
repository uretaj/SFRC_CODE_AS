with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        gridss.assemble = def gridss.assemble {
          mem = 128;
          heapSize = "128g";
          walltime = "48:00:00";
        };
      })
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/s3/batch2/SFRC01126/L1900207_S34";
      suffix = "_001";
      sha256-1 = "e8d55402f1aae11c903eb49e416c4e0c1fbcf7319028a6ed562d491322ef9b8b";
      sha256-2 = "0fcaabacdffbf99d2364f4308c885e8d0328007b7c006ea1b15e8b9781582291";
    }
    {
      class = "tumours";
      site = "5.1";
      prefix = "grimmond/s3/batch2/SFRC01126/L1900208_S35";
      suffix = "_001";
      sha256-1 = "a1ba83f93412fcaf8d746bebe89baaa18af64c2e6e67b2b87325e77426d97dfd";
      sha256-2 = "cca945e242e2d955f1ce80971858c1e06f3958a6496c90eb3a2be59c62003ab8";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "Meeting notes 2019.11.21\nHolly to thaw another vial of cells \n\nMeeting notes 24.10.2019\nRequest staining on S1 block for PanCK, WT1 and Pax8. Email sent to Kathy to organise staining.\nCharacterise cell line.\nPlan: check cell block - H&E looks good \nAttempt new cell line - thaw and do tumour-cell isolation\n\nMeeting notes 27.06.2019\nWe got ascites: purity for atypical cells is about 10-15%, went into mice, 2D, snap frozen and mince \nReceived 3 fresh tissue on 12.06.2019: Asha to update \nWhat do we need to do?  How should we design primers over PBRM1 rearrangement? \nClare will look at sections from surgery this afternoon and then make decision \n\nMeeting notes 20.06.2019 \nWGS report from Sean (B1 and 5.1), low tumour cellularity (<30%) affecting data analysis \nCopy number variation BAP1 - consistent with mesothelioma \nHigh fibrous content of tumour, doesn't really represent lung cancer  \nDissect more DNA for WES? Make better quality DNA - We do have blocks (plenty of reads but unable to determine CN for PBRM1). Miseq an option? Speak to Matt about this.  \nLiz to follow up if there is anything actionable re PBRM1 \nFurther analysis once we receive fresh tissue.\n\nMeeting notes 23.05.2019\nmaybe receiving more tissue, waiting on a positive selectable marker, more DNA for PBRM1";
      date_of_death = "4/2021";
      date_consented = "2019-01-14";
      tumour_type = "Other rare";
      tumour_details = "peritoneal mesothelioma";
      case_details = "Peritoneal mesothelioma\n\nMay 2018 TAHBSO, appendicectomy, omentectomy, peritoneal biopsies - path r/v found epithelioid diffuse malignant mesothelioma\nOctober 2018 diagnostic laparoscopy\nNovember 2018 Laparotomy, CRA, HIPEC\nSingle agent pembrolizumab afterwards\n \n";
      pre_analysis_mutations = "Original Tumour\n- AE1/3, CK7, WT-1, Calretinin, D2-40 positive\n- CK20, ER, BerEP4, CDX-2, Gata3 negative\n- p53 wild type\n- pax8 mild-mod staining\n- p16 patchy positive staining\nCytoreductive Surgery \n- Loss of BAP-1 expression";
      patient_information_complete = "Incomplete";
      other_tumour_type = "peritoneal mesothelioma";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Histopath number: PM18B09689 - specimen 5\nTissue (slides) received 18-Feb-19\nSubmitted to SG lab 20-Feb-19\nFor WGS";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01126";
    disableGridss = true;
  }
