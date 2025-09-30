with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "0X/Jx/SHA256E-s4208263055--cefb0b6ebf0636a821329d4c479821f8f054b94976beaf4aa1cec3c64bb7713c.gz/SHA256E-s4208263055--cefb0b6ebf0636a821329d4c479821f8f054b94976beaf4aa1cec3c64bb7713c.gz";
      r2 = "Gz/pz/SHA256E-s4169081458--f1d0b5271ea43b49df4cc66b405415a5c8d1ab497284c9b19c7886596d15a4a4.gz/SHA256E-s4169081458--f1d0b5271ea43b49df4cc66b405415a5c8d1ab497284c9b19c7886596d15a4a4.gz";
    }
    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "6K/z7/SHA256E-s4229581461--3eea6cebfa9c6cc9bc29a4eff2daff74635592ded9c0273511c92f0d6e9a691c.gz/SHA256E-s4229581461--3eea6cebfa9c6cc9bc29a4eff2daff74635592ded9c0273511c92f0d6e9a691c.gz";
      r2 = "1K/1j/SHA256E-s4195419671--93e292f3b7b0da929d0f715dd7c1101c2bacac0945f0b3d8bde23a36b511ab88.gz/SHA256E-s4195419671--93e292f3b7b0da929d0f715dd7c1101c2bacac0945f0b3d8bde23a36b511ab88.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4M/gF/SHA256E-s880731004--6c485b782b16e50797d8be73602a36e040bd3ed103cc4e1aca77314d14340945.gz/SHA256E-s880731004--6c485b782b16e50797d8be73602a36e040bd3ed103cc4e1aca77314d14340945.gz";
      r2 = "FG/F6/SHA256E-s890259019--778086cf99f65797129656238fc20425bfd38f800e9772f19957f7b122da844b.gz/SHA256E-s890259019--778086cf99f65797129656238fc20425bfd38f800e9772f19957f7b122da844b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gK/w9/SHA256E-s873236632--c7d19db58bb0792860b1c296c160aeba392347eb73e0f3efbf036146314acf55.gz/SHA256E-s873236632--c7d19db58bb0792860b1c296c160aeba392347eb73e0f3efbf036146314acf55.gz";
      r2 = "V9/2P/SHA256E-s884212081--23c3603c08029504a95f68d2f4b5c8918f73e1b09576e15b80d3292674dcda49.gz/SHA256E-s884212081--23c3603c08029504a95f68d2f4b5c8918f73e1b09576e15b80d3292674dcda49.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 23.4.25\"\nThis sample is not as obviously bad as LGSOC case (HRD Sum score in this case is better and calls likely to be made). \n38X coverage \nMSH2 - artefact in this location. Matt to look into across the cohort so far. \nQuality is ok, this is a desert case. \nKristy to contact AGRF to do extra reads on samples. \n\nEmail from Ratana 07.09.2023\nTo do WES on this uLMS case. There is DNA for block 2.1.\n\nMeeting notes 08.02.2021\nBlock 2.1 reviewed. Make DNA from 3 thick slides. Will be for Gen, as well as BRCA testing.\n\nMeeting notes 12.12.2019\nBlock has been requested. Briony to follow up. \n\nMeeting notes 2019.09.27\nBriony to let clinician know there was no tumour in any of the samples, check if other blocks made elsewhere from that surgery and recall and check if anything else is ongoing with this patient \n\n ";
      d_case_summary = "Anne Hamilton pt; PMCCUR 8112727; uLMS diagnosed RW hospital; ";
      date_consented = "2019-03-19";
      tumour_type = "uLMS";
      tumour_details = "Uterine Leiomyosarcoma";
      case_details = "Metastatic Uterine LMS, ER/PR+++, first diagnosed in May 2016\n\nZOL started in Aug 2016, ANA since  Sep2016\n\nMDM 26/02/19: \nindolent uterine LMS\nSlow PD, but significant volume of pelvic disease \nconsider resection\nHas now seen Orla McNally / David Gyorki re surgery\nResection would include R/O peritoneal disease, TAHBSO +/- bowel resection / stoma +/- ureteric stenting\nPET 16/05/19: enlarging pelvic masses (non-FDG avid)\nHas decided to proceed in late August";
      brca_report = "SFRC01153_BRCA_19Mar2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "03/11/2022: 2021 block requested from PMCC pathology by Devindee for uLMS study. \n21/11/2022: 2021 block received.\n\n------------\nEpithelioid leiomyosarcoma-Pelvic Bx- RWH \nLab number 16975533HISTG\nCollected 23/06/2016\nRequested 16Apr19 (BM)\nNOTE: not enough tissue left in the block for the request \n______________________\nMyomectomy 2010 - RWH Pathology\nAccession no: 10977660 HISTG; \nCollected: 02-Sep-10\nNOTE: reported as leiomyoma (confirmed on peer review)\n-------------\n2019 Block requested by Warren from PMCC on 12/1/21\n2019 block received 25/1/21 by Warren";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01153";
  }
