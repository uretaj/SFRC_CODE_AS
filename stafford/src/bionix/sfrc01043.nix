with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1V";
      class = "tumours";
      pdx = false;
      r1 = "4P/Pz/SHA256E-s20719789881--60e73c0a1ec2d1303484e63d916d82ab6747e9ce64f9b4484e647fd637c20cd5.gz/SHA256E-s20719789881--60e73c0a1ec2d1303484e63d916d82ab6747e9ce64f9b4484e647fd637c20cd5.gz";
      r2 = "Xz/M9/SHA256E-s21627271154--c8b09920ef24560dbcff063d12c2ac5dc0b8de4a4d8e9a7fa24dd3c076e755e5.gz/SHA256E-s21627271154--c8b09920ef24560dbcff063d12c2ac5dc0b8de4a4d8e9a7fa24dd3c076e755e5.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "96/1q/SHA256E-s5477356422--d746923491eb67df4046381eea9e1991faacc6b9ab19acb8e6a372bc629d9a36.gz/SHA256E-s5477356422--d746923491eb67df4046381eea9e1991faacc6b9ab19acb8e6a372bc629d9a36.gz";
      r2 = "P3/K5/SHA256E-s5898704008--68a0ee9a2c188b4890b94801ff59cab66bcae1d6b2280a200df7c5221784c133.gz/SHA256E-s5898704008--68a0ee9a2c188b4890b94801ff59cab66bcae1d6b2280a200df7c5221784c133.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting notes 2020.03.05\nBroca results discussed, NEIL1 mutation. Predicted disease-causing mutation. Exon 2 frameshift + premature stop (NMD) - Replication associated DNA repair but as not HRD, of uncertain clinical significance; PTEN definitely of uncertain clinical significance; only TP53 mutation is reportable. No other findings of significance. Multiple Primary project will follow up.";
      d_case_summary = "Breast ER , uterine ca; benign thyroid lesion";
      date_consented = "2018-02-15";
      tumour_type = "HGSEC";
      tumour_details = "Breast ER+ (Not Her2 amplified), uterine ca (HGSEC), thyroid  adenoma (benign follicular adenoma)";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01043";
    predictNeoantigens = true;
  }
