with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0f/Z5/SHA256E-s5404435195--caf69a203a1cff6ed002fd69e714cb0e4194dd3a43c15573ddf0f881c5079d9e.gz/SHA256E-s5404435195--caf69a203a1cff6ed002fd69e714cb0e4194dd3a43c15573ddf0f881c5079d9e.gz";
      r2 = "z1/pw/SHA256E-s5830452615--bfb1b459130e4dd5534ca75bb3b7b3d93dc3483d5fe2c30e66116ee5b3b5177a.gz/SHA256E-s5830452615--bfb1b459130e4dd5534ca75bb3b7b3d93dc3483d5fe2c30e66116ee5b3b5177a.gz";
    }
    {
      site = "C6";
      class = "tumours";
      pdx = false;
      r1 = "0M/3P/SHA256E-s28169368740--a1181156e9a0b21ae32128398d803a41f38c76848fd680f34cac3d98fdde0139.gz/SHA256E-s28169368740--a1181156e9a0b21ae32128398d803a41f38c76848fd680f34cac3d98fdde0139.gz";
      r2 = "fP/5P/SHA256E-s29664119294--c44addbac2dcfaf8e6b2a29d16d2184496ab55b4da18a8671b86919762e6f3c7.gz/SHA256E-s29664119294--c44addbac2dcfaf8e6b2a29d16d2184496ab55b4da18a8671b86919762e6f3c7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting with Clare 20.12.2021\nC6: Extract DNA, if enough organise BROCA and WES, if not maybe do TSO 500.\n\nBROCA meeting with Clare 04.11.2021\nask Warren a follow up. Have any blocks been recalled for this case? Either C6 or C8 will be good.\nOnce received and reviewed organise BROCA and WES. ";
      d_case_summary = "Stage 1a serous endometrial carcinoma. HER2 IHC negative. MMR proficient. \nTAH-BSO. Followed by 4 x adjuvant carboplatin / paclitaxel. Followed by 4 x vault brachytherapy.";
      tumour_type = "HGSEC";
      tumour_details = "Stage 1a high grade serous endometrial carcinoma. HER2 IHC negative";
      case_details = "62 years old female \n\n2020-04   Hysterectomy (Block C6 received, 20% within circled area)\n                 MLH1, PMS2, MSH2, MSH6 all show preserved nuclear staining\n                 Her2 negative \n\n2020-07: carbo/pacli x4\n\n2020-09: vaginal vault brachytherapy\n\n2021-06  Blood B1 received ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = " 2020 specimen block (C6) received by Warren 09/12/2021. ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01363";
  }
