with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Mq/v6/SHA256E-s2782678617--752554c04e174165a9c58d37c958fac3c01f17ec7bb727dade860c9f024b147e.gz/SHA256E-s2782678617--752554c04e174165a9c58d37c958fac3c01f17ec7bb727dade860c9f024b147e.gz";
      r2 = "7m/PP/SHA256E-s2999999298--9ab35165e69a903f829fc16eb5477f13f6fb8394f20be8ed72c9aaa29dc91873.gz/SHA256E-s2999999298--9ab35165e69a903f829fc16eb5477f13f6fb8394f20be8ed72c9aaa29dc91873.gz";
    }
    {
      site = "3D";
      class = "tumours";
      pdx = false;
      r1 = "M9/8p/SHA256E-s3437660594--3fee8d0dd8c1ee28cbe240829ab71c9aca5245e3fffe547f20f80b9db5b205e4.gz/SHA256E-s3437660594--3fee8d0dd8c1ee28cbe240829ab71c9aca5245e3fffe547f20f80b9db5b205e4.gz";
      r2 = "GJ/Xz/SHA256E-s3662989134--dd660934c63fd179a331002c964bcefa24d3f4a8921ef7b13211f05f2172caf9.gz/SHA256E-s3662989134--dd660934c63fd179a331002c964bcefa24d3f4a8921ef7b13211f05f2172caf9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting notes 12.11.2020\nDiscussed WES results (see Analysis instrument), but will need to check back. Clare to check with her chemo and Justin to look at low depth. \n\nMeeting notes 14.08.2020\nTo do WES. Extract DNA from the sections (use 5 thick).";
      date_of_death = "03/2021";
      date_consented = "2020-04-05";
      tumour_type = "Cervical SCC (Squamous Cell Cancer)";
      tumour_details = "Metastatic mod diff SCC cervical ca";
      case_details = "Metastatic mod diff SCC cervical ca 34y; for germline DNA and WES on cone biopsy deposit. Aggressive recurrence. C6 carbo/pacli May 2020. Josh to recall sections from RWH/RCH asap; will have blood on 24/6 with bevacizumab. Process everything asap as likely to relapse within 3 months";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2018 tissue containing SCC requested from RWH via email on 10 Jun 2020 by Josh\n\n2018 Tissue Block 3D containing SCC received 30/07/2020 by Josh";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01293";
  }
