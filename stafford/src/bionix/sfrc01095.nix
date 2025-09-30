with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "XQ/g8/SHA256E-s3859464036--4423cada147fc84098a716e5a0fe2a6571203798cb08c4f3d3c60287febcbcce.gz/SHA256E-s3859464036--4423cada147fc84098a716e5a0fe2a6571203798cb08c4f3d3c60287febcbcce.gz";
      r2 = "gj/g0/SHA256E-s3860913615--3604673c8a75aa9cca700aa7e7d238eec24f448c3503ba0aa3eff2745bce9e23.gz/SHA256E-s3860913615--3604673c8a75aa9cca700aa7e7d238eec24f448c3503ba0aa3eff2745bce9e23.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "q9/Fz/SHA256E-s3037684950--bc72ad568115a4b13693627861be7f4f328d3e3eda9e4e75d0a4b51f32450c1d.gz/SHA256E-s3037684950--bc72ad568115a4b13693627861be7f4f328d3e3eda9e4e75d0a4b51f32450c1d.gz";
      r2 = "11/MZ/SHA256E-s3357109643--dc811df5519c91c95006d2b8945ee7fc443105174fcec7acfe524684993b6584.gz/SHA256E-s3357109643--dc811df5519c91c95006d2b8945ee7fc443105174fcec7acfe524684993b6584.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G9/z4/SHA256E-s2126943410--030a16c9098096d0a1c66927f854a057505051b2b353d484c7a2f5cf7ed89a1d.gz/SHA256E-s2126943410--030a16c9098096d0a1c66927f854a057505051b2b353d484c7a2f5cf7ed89a1d.gz";
      r2 = "Xq/kK/SHA256E-s2277639390--7a7ff06008bd54f1c54ced462fbf58ea0f90bb21eac38ab686fc40cfe6bc9b84.gz/SHA256E-s2277639390--7a7ff06008bd54f1c54ced462fbf58ea0f90bb21eac38ab686fc40cfe6bc9b84.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "4g/2V/SHA256E-s7387957137--a197bc20bd8b2292c38f255b2568c32d0953c019fa8821dbb6b5f589611a60fa.gz/SHA256E-s7387957137--a197bc20bd8b2292c38f255b2568c32d0953c019fa8821dbb6b5f589611a60fa.gz";
      r2 = "JW/2q/SHA256E-s8014181473--ffe6b6a89f0b9f41e59e0bf5f45cba408a7e97c43ab92c9ee041f7cf8b24936b.gz/SHA256E-s8014181473--ffe6b6a89f0b9f41e59e0bf5f45cba408a7e97c43ab92c9ee041f7cf8b24936b.gz";
    }
    {
      site = "S2_T1";
      class = "tumours";
      pdx = true;
      r1 = "5J/xP/SHA256E-s5800752478--46038903733f82af6bfe45ad3a3bcf1c07801004a988d1d29d8500c8655616ac.gz/SHA256E-s5800752478--46038903733f82af6bfe45ad3a3bcf1c07801004a988d1d29d8500c8655616ac.gz";
      r2 = "ZW/9k/SHA256E-s6159428161--58a9f6b4a1773c5a0de3425ee4edeced387b0ce1afe6d94ce303da65fb15fae1.gz/SHA256E-s6159428161--58a9f6b4a1773c5a0de3425ee4edeced387b0ce1afe6d94ce303da65fb15fae1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "CASCADE CA0102";
      meeting_discussions_follow_up = "RC Meeting notes 01.10.2020\nDiscussed BROCA results.\nDon't know the significance of RAD50 mutation.\n\nMeeting notes 20.06.2019\nFresh: Ov, melanoma, lymphoma\nAncestral analysis. DNA. \nCT post mortem was performed \nCass received warm autopsy - perforated bowel pre-mortem therefore samples not used  \n5 samples collected previously and S2 and S3 grew as PDX \n\n ";
      date_of_death = "04/2019";
      date_consented = "2018-07-05";
      tumour_type = "HGSOC";
      tumour_details = "multiple primaries (7): melanoma x4, marginal cell lymphoma,  pancreatic ca, HGSOC";
      case_details = "Cascade case on 7th of April 2019. See below document in Biopsy reports for further details.  Perforated bowel during autopsy so no tissue for processing in the lab (tissue list attached below)";
      pre_analysis_mutations = "BRCA2 germline mutation; ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      histology_summary = "2016 histology\nAdenocarcinoma is strongly P53 and CK7 positive\nnegative for WT1, CK20, CDX2 negative for p16\nOvarian Carcinoma is negative for p53 and positive for p16";
      patient_germline_mutations = "BRCA2";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01095";
    capture = CREv2;
  }
