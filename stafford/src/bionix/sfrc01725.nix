with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wf/9P/SHA256E-s54714054578--5c4155eac691969bef9b7f12c559bc29272defa67ef009586fbf75d5a494f31c.gz/SHA256E-s54714054578--5c4155eac691969bef9b7f12c559bc29272defa67ef009586fbf75d5a494f31c.gz";
      r2 = "PG/q8/SHA256E-s60693990331--751dd6f90ce4acc895fd3d4354b3e4025b4d99550def878792f37dcb7416a29c.gz/SHA256E-s60693990331--751dd6f90ce4acc895fd3d4354b3e4025b4d99550def878792f37dcb7416a29c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "j4/41/SHA256E-s54504415585--63c14d27891861d3f06169e6d6117d1355f03ecf88ce01d3b5383557d08c1499.gz/SHA256E-s54504415585--63c14d27891861d3f06169e6d6117d1355f03ecf88ce01d3b5383557d08c1499.gz";
      r2 = "mw/Wg/SHA256E-s60493775913--4120f09eb027894b93d98ff96a723895d4909050a129c6bc6dec2d890aa96c7c.gz/SHA256E-s60493775913--4120f09eb027894b93d98ff96a723895d4909050a129c6bc6dec2d890aa96c7c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "qg/1f/SHA256E-s74577461824--e8797f7f01f47299103c2ebb14ff67786e5c63ce1d04753354b6de969cbc639f.gz/SHA256E-s74577461824--e8797f7f01f47299103c2ebb14ff67786e5c63ce1d04753354b6de969cbc639f.gz";
      r2 = "1Z/w3/SHA256E-s82833962430--27a1ea0dadebca2fd40b6a07893a29c79bb4d8c94de267b747ba80164d231c72.gz/SHA256E-s82833962430--27a1ea0dadebca2fd40b6a07893a29c79bb4d8c94de267b747ba80164d231c72.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "8P/G8/SHA256E-s4724667963--0c0913e8eb45a2ce0320eff91d42ce1c26b1ca6003b59bcf562d55f5cebeaf41.gz/SHA256E-s4724667963--0c0913e8eb45a2ce0320eff91d42ce1c26b1ca6003b59bcf562d55f5cebeaf41.gz";
      r2 = "kF/X1/SHA256E-s4729831356--ed9521b29f1ef748a15bce67a9c851da5bb725e62d4244bebcffc930864fc0b7.gz/SHA256E-s4729831356--ed9521b29f1ef748a15bce67a9c851da5bb725e62d4244bebcffc930864fc0b7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 25.05.2023\nDiscussed WGS report with SFRC data.\n\nClare's Meeting 23.03.2023\nTo do WGTS on S1 OCT tissue";
      d_case_summary = "36 yo woman with LGSOC, now recurrent";
      date_consented = "2023-02-24";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "36F\n\n2019-09: Dx LGSOC Stage IVB\nSurgery: TAH/BSO\nChemotherapy: carboplatin/paclitaxel, then maintenance avastin\n\n2021-02: Anastrozole\n\n2023-02: Recurrence\nSurgery: Laparoscopic excision. Fresh Tissue S1 received - left pelvic lymph node. Blood B1 received. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-02-27";
      portal_letter = "SFRC01725_ARCPortal_27Mar23_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01725";
  }
