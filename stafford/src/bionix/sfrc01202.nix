with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mv/z0/SHA256E-s2502865210--979c0a449b3b106f5ff1dc8c0a91b6ed8da3c4a27c8d2c1f9d6852b4f1e95f04.gz/SHA256E-s2502865210--979c0a449b3b106f5ff1dc8c0a91b6ed8da3c4a27c8d2c1f9d6852b4f1e95f04.gz";
      r2 = "Jz/0K/SHA256E-s2677242094--b292f6724a4663421b3ebae8b65e59a445dc954e6fba0297513e8106c22b832e.gz/SHA256E-s2677242094--b292f6724a4663421b3ebae8b65e59a445dc954e6fba0297513e8106c22b832e.gz";
    }
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "qP/W9/SHA256E-s3274606279--e22dfe10388ce1b2dbb3020a6285d51543a2742ced50367d01a98e6986dc49c2.gz/SHA256E-s3274606279--e22dfe10388ce1b2dbb3020a6285d51543a2742ced50367d01a98e6986dc49c2.gz";
      r2 = "vM/xm/SHA256E-s3593036465--5dbd7c70f0731d197db9deff321e4f0e8a60d5873d3c3ad651866be6938a37fb.gz/SHA256E-s3593036465--5dbd7c70f0731d197db9deff321e4f0e8a60d5873d3c3ad651866be6938a37fb.gz";
    }
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "Jq/gZ/SHA256E-s3381761882--395329efca2be1feba9f950136992dbc6f682456b7bc5127a9836d0f2024cc4b.gz/SHA256E-s3381761882--395329efca2be1feba9f950136992dbc6f682456b7bc5127a9836d0f2024cc4b.gz";
      r2 = "m6/M7/SHA256E-s3442355034--c491e0371c12ae782bba1156ca38286bbc43fe74e202b2b798db47ba5ef2a15a.gz/SHA256E-s3442355034--c491e0371c12ae782bba1156ca38286bbc43fe74e202b2b798db47ba5ef2a15a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting notes 15.10.2020\nDiscussed WES results (in Analysis instrument).\nOptions: PARPi, MEKi? \n\nNeed to get trial investigators to analyze this data more thoroughly to identify possible resistance mechanisms. \n\nMeeting notes 27.08.2020\nWant to send samples for WES (patient did not respond on the Ipi+Nivo rare cancer trial). Damien to organise germline.\n\nMeeting notes 13.08.2020\nPatient on THINC-Rare trial - possible high TMB but no response to immuno (they have germline DNA from patient) - Damien will email Andreas for germline and discuss WES. \nDNA has been extracted and sent for BROCA 10.8.20 \n\nMeeting notes 27.02.2020 \nDiscussing sequencing for Jonathan Cebone and whether to do WGS or WES.\nClare to email patient to get blood. Possible candidate for WGS/WES. Clare and Holly to decide.  ";
      date_of_death = "04/2020";
      date_consented = "2019-06-25";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "ovarian/fallopian tube carcinosarcoma";
      case_details = "Dx 2016, known to CS\n\nDiagnosed 06/2016 (59yo)\n-\tHigh grade Ovarian Carcinosarcoma\n-\tSurgical resection (Block 1F)\n\n6-11/2016 Chemotherapy (6 cycles Carbo/Paclitaxel)\n\n03/2017 Relapse treated with Caelyx\n\n2017 3rd line, Rare cancer trial (CTLA-1 and PD-1) \n-\tCeased due to progression and concomitant illness requiring steroids\n-\tProlonged PFS2 - some response?\n\nFourth line (2018?) - Chemo + Radiotherapy\n\nFifth line (2018-01/2019) - metronomic cyclophosphamide\n-\tProgressed on treatment\n-\tBiopsy showed High TMB\n\n01/2019 - Bev bevacizumab plus weekly paclitaxel \n-\tCeased paclitaxel in 04/2019\n-\tContinued on maintenance Bev until 01/2020\n\n2020 - 10 fractions of Radiotherapy right peritoneal deposits\n\n01/2020 - received block 1F\n\n04/2020 - Deceased\n\n09/2020 - received Germline DNA\n";
      pre_analysis_mutations = "High TMB";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01202";
  }
