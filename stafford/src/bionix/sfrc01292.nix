with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.3";
      class = "tumours";
      pdx = false;
      r1 = "Z3/g5/SHA256E-s4150009627--6b98b12270837e0fb5b05987299914eb4c6062edef47e233ca2007b8949574c3.gz/SHA256E-s4150009627--6b98b12270837e0fb5b05987299914eb4c6062edef47e233ca2007b8949574c3.gz";
      r2 = "MG/54/SHA256E-s4433455223--955bc18386f3ff957e9cc2337bf2f28caff99f72ea114b087cdcfaa53b897b5d.gz/SHA256E-s4433455223--955bc18386f3ff957e9cc2337bf2f28caff99f72ea114b087cdcfaa53b897b5d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4g/xG/SHA256E-s3991483626--263d84b827f8208e6ebd3a211ad16e48d9b32c1991cedad1ed074be118e4e1fa.gz/SHA256E-s3991483626--263d84b827f8208e6ebd3a211ad16e48d9b32c1991cedad1ed074be118e4e1fa.gz";
      r2 = "XV/P5/SHA256E-s4252914585--8b82977d559fe4b00a1819de9f4c300bba0eea914fe6df4db2a4ea0cccd62349.gz/SHA256E-s4252914585--8b82977d559fe4b00a1819de9f4c300bba0eea914fe6df4db2a4ea0cccd62349.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting notes 04.03.2021\nWES already done, have since found a TSO500 clinical report.\nWES - Reports now have a TMB specific field in the stats \nTMB is 15 (not 60) - computing error (used total somatic rather than coding) \n\nRC Meeting notes 15.10.2020 \nWES results discussed - in Analysis_DNA instrument.\n\nMeeting notes 27.08.2020\nMade DNA from the 20% area and on re-review, on the 40% tumour area (tube 1.3_1). Send for WES.\n\nMeeting notes 14.08.2020 (Clare and Ratana)\nUse 10 thick sections to make DNA (tumour area is large but only 25% purity). Put back to RC meeting with Tony to decide what to do. ";
      d_case_summary = "endometrial carcinosarcoma, residual disease in LN, not suitable for RT, too well for chemotherapy; Rob interested in whether there is any other treatment she might be suitable for";
      date_consented = "2020-07-10";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "High grade uterine carcinosarcoma, FIGO Stage 1B";
      case_details = "TLHBSO with ometal Bx Dx FIGO stage 1B carcinosarcoma of the uterus on 30/07/2019\n\nCTx (6 cycles of carbolpatin + paclitaxel) for PET-avid nodal disease found on post op imaging, completed Dec 2019";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2019 Tissue containing Carcinosarcoma requested via fax (by Rosie) from Austin Health on 10062020 by Joshua\n\n2019 Tissue AU19B17761 received 10/07/2020 by Josh";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01292";
    shardOctopus = false;
  }
