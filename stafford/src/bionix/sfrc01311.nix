with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Ff/92/SHA256E-s34511837107--7104230cd2d6e87dc37f45b2c761602acc4dad8e439efee96fea164142ab2652.gz/SHA256E-s34511837107--7104230cd2d6e87dc37f45b2c761602acc4dad8e439efee96fea164142ab2652.gz";
      r2 = "wQ/jw/SHA256E-s37627690443--64dfea0ca9db5b2fb81d0328c7f148cc354caee67253a75177d80f73d0d09123.gz/SHA256E-s37627690443--64dfea0ca9db5b2fb81d0328c7f148cc354caee67253a75177d80f73d0d09123.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "z2/8F/SHA256E-s69183020909--a741c275f6d9bc34b02dab48c1567ba765154867a88eba957528af0e8dc0039e.gz/SHA256E-s69183020909--a741c275f6d9bc34b02dab48c1567ba765154867a88eba957528af0e8dc0039e.gz";
      r2 = "j5/wV/SHA256E-s75677734291--d860229e24c16ed8a0ff55e0a7b3baf3c5de0719fef216e2b991d7babefbc9e5.gz/SHA256E-s75677734291--d860229e24c16ed8a0ff55e0a7b3baf3c5de0719fef216e2b991d7babefbc9e5.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "92/kW/SHA256E-s3723255903--6c9ed63deb9fbc94ca7853dc2918b86cc75d8146192e2200f1cd75049c1aaf10.gz/SHA256E-s3723255903--6c9ed63deb9fbc94ca7853dc2918b86cc75d8146192e2200f1cd75049c1aaf10.gz";
      r2 = "kj/vf/SHA256E-s3778986853--98b7d9d3c2036cbe3333412c75225713d32bff302899a1aff9a8927b91525713.gz/SHA256E-s3778986853--98b7d9d3c2036cbe3333412c75225713d32bff302899a1aff9a8927b91525713.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting notes 12.11.2020\nWGS report discussed. \nRB1 mutation synergistic with AURKA inhibitors - should do some in vitro studies with this inhibitor - we have a RB1 lost model - 01122 \n\nSignatures - 3 (32% - 1800 assigned), 8 (24%) - however HRDetect indicates this tumour is proficient.  CHORD also suggests HR proficient - possible carry over from signature 8 explaining perhaps overcalling of signature 3? \n\nMeeting notes 28.09.2020\nBloods and tissue in long term buffer was couriered on dry ice, all frozen. Review of tissue was 90% tumour so send for WGS (SF piece). Bloods in -80 freezer, can do gDNA but no WBC or plasma.";
      date_of_death = "7/2021";
      date_consented = "2020-06-25";
      tumour_type = "uLMS";
      tumour_details = "High grade retroperitoneal leiomyosarcoma (not uterine) metastatic.   But is SUSPECTED uLMS, ER+";
      case_details = "Dx with retroperitoneal LMS in 2017 from large pelvic mass resection.\n\nPost-op PET showed residual uptake at operation site. Give 4 cycles of adjuvant doxorubicin with complete FDG resolution.\n\n2018 Dx with pulmonary mets, and developed liver mets in 2019 + a recurrent pelvic mass, for which she received palliative chemo with docetaxel and gemcitabine, with partial response. Cease in March 2020 when pulmonary mets showed mild progression.";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "04/11/2022: 2020 block requested from NSW Health pathology (St George) for uLMS ProCan collab study by Devindee. \n01/12/2022: 2020 block received. ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01311";
  }
