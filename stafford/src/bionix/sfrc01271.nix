with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2p/M9/SHA256E-s16145060005--8beffbaa07d866e081ba994e26a7f00e173c4eefe32528f2b424708c91f2f6fa.gz/SHA256E-s16145060005--8beffbaa07d866e081ba994e26a7f00e173c4eefe32528f2b424708c91f2f6fa.gz";
      r2 = "pk/35/SHA256E-s16883368988--0e41ba3b5c263e9abed2de5cc734c8f3d437bfeddc1282c14f4ba2ea1012ef6f.gz/SHA256E-s16883368988--0e41ba3b5c263e9abed2de5cc734c8f3d437bfeddc1282c14f4ba2ea1012ef6f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "74/mV/SHA256E-s16082304966--fd30a1f865112f652b7c49ff095dee5e6150bee2b45cf99cd66e00711914c7bc.gz/SHA256E-s16082304966--fd30a1f865112f652b7c49ff095dee5e6150bee2b45cf99cd66e00711914c7bc.gz";
      r2 = "Wg/2G/SHA256E-s16814782199--47cebe7c71a826a52516d2ef3cc1e6175105d808311e20b86846639e39a409ce.gz/SHA256E-s16814782199--47cebe7c71a826a52516d2ef3cc1e6175105d808311e20b86846639e39a409ce.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "2X/Wm/SHA256E-s32094058585--fb04fa8fedab8d53f87b43eace36bf2ea2aa11c13034fc828c725a54a64a9c34.gz/SHA256E-s32094058585--fb04fa8fedab8d53f87b43eace36bf2ea2aa11c13034fc828c725a54a64a9c34.gz";
      r2 = "xK/7z/SHA256E-s33456644190--2178fa49d202283bc010b25d3c61da059c6584c538c5813061868a05c5e1f325.gz/SHA256E-s33456644190--2178fa49d202283bc010b25d3c61da059c6584c538c5813061868a05c5e1f325.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "3v/7J/SHA256E-s31917987821--4aab7d75afc2ee0d78b698a141932daad0c09a7e509b0134329a4db263011eb3.gz/SHA256E-s31917987821--4aab7d75afc2ee0d78b698a141932daad0c09a7e509b0134329a4db263011eb3.gz";
      r2 = "xQ/zq/SHA256E-s33271957495--e750117f34521e97c38c4bdb7740556addad1e78a3cb32691a63e64b8564a5a3.gz/SHA256E-s33271957495--e750117f34521e97c38c4bdb7740556addad1e78a3cb32691a63e64b8564a5a3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.02.2024\nIs included in the SCC project. Discussed the WGS (PDX) report, if it matches the Foundation One report.\nTP53 and FBXW7 match. Also found RHOA (not actionable in a clinical setting).\n\nMeeting notes 09.04.2020\nPDX has small bump, Clare updating foundation medicine report, FBXW7 and TP53 mutations, MS stable, low TMB, will have ipi/nivo \nVery aggressive tumour, hopefully can WGS PDX when it comes up, this will be urgent when it happens ";
      date_consented = "2020-01-31";
      tumour_type = "Cervical SCC (Squamous Cell Cancer)";
      tumour_details = "stage 4 cervical SCC  Foundation Medicine report from the previous biopsy from July 2019 has been reviewed: Lymph node 26 July 2019 FBXW7 R479G; TP53 R342* MS stable TMB low";
      case_details = "Surgery in 2018 (elective hysterectomy), Dx metastatic cervix SCC. Underwent CTx + RTx completed 9/11/2018, 4x carbo.taxol completed 21/2/2019\n July 2019 PET/cT showed uptake of mediastinal/hilar nodes\n\nSeptember 2018 commenced carbo/taxol/avastin, 6 cycles completed 16/12/2019 \n\nApril 2020 commenced nivolumab, ipilimumab, 3 doses completed 3/6/2020, complicated by small bowel enteritis/pericarditis\n\nCurrently in CR going into nivo therapy";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01271";
  }
