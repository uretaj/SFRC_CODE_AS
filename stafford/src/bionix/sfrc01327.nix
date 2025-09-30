with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q3/Kv/SHA256E-s32665131605--497d5b933daf8d1960d31d28ae699b851fd7f61a0a59ae8f8187366c34943b91.gz/SHA256E-s32665131605--497d5b933daf8d1960d31d28ae699b851fd7f61a0a59ae8f8187366c34943b91.gz";
      r2 = "K3/j9/SHA256E-s34888133756--c53405b53f6ed0662c57ef6af0ad98ec6fef10e4bf34003493e61ad4c472eea7.gz/SHA256E-s34888133756--c53405b53f6ed0662c57ef6af0ad98ec6fef10e4bf34003493e61ad4c472eea7.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "4z/kq/SHA256E-s69077912382--baa3f749b24210330efcd9d73fc408bf3bc208b1e25786e5b3563a95a2ed2fff.gz/SHA256E-s69077912382--baa3f749b24210330efcd9d73fc408bf3bc208b1e25786e5b3563a95a2ed2fff.gz";
      r2 = "fw/FF/SHA256E-s74149221359--543fb3b0b402bfe004d2e920a01cafb5f467a55df1026a8d8a0b7e58cda2f1f7.gz/SHA256E-s74149221359--543fb3b0b402bfe004d2e920a01cafb5f467a55df1026a8d8a0b7e58cda2f1f7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "RC Meeting notes 04.02.2021\nWGS report - nothing to discuss.\n\nMeeting notes 16.10.2020\nMacrodissect as many sections as possible to make DNA. Depending on quantity, can do TSO or WES. \n21.10.20 - Got 650 ng DNA - send for WGS.\n\nMeeting notes 28.09.2020\nGayanie's review of S1 - no GCT, only ovarian stroma. Have asked Trisha for another piece of tissue. Would be for WGS.";
      d_case_summary = "29 yo woman; 8.5 cm right adnexal mass; frozen section favour sex cord stromal tissue - most likely granulosa cell tumour";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "GCT";
      case_details = "FIGO Stage 1A GCT of ovary";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01327";
  }
