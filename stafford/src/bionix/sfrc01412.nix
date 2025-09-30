with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A05";
      class = "tumours";
      pdx = false;
      r1 = "Jf/1p/SHA256E-s23339786923--34c858f323c150ccea4de4f478db75f5c7821e3b1de26a684cd4825a27a5bb1a.gz/SHA256E-s23339786923--34c858f323c150ccea4de4f478db75f5c7821e3b1de26a684cd4825a27a5bb1a.gz";
      r2 = "kV/z8/SHA256E-s24048938169--3b54dd40192125c34d5ea7f375dedf763c381986ce8b27aa913df41de4660d70.gz/SHA256E-s24048938169--3b54dd40192125c34d5ea7f375dedf763c381986ce8b27aa913df41de4660d70.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M9/4k/SHA256E-s6494328191--72b9c7d4d5d33936fa954e6aff0ba9539827050cda218c785318e2b0adf4f551.gz/SHA256E-s6494328191--72b9c7d4d5d33936fa954e6aff0ba9539827050cda218c785318e2b0adf4f551.gz";
      r2 = "PK/0F/SHA256E-s7004857943--63578489ddc287783ddfde4cd0cff20c6783a6f300485576f3c6428095765718.gz/SHA256E-s7004857943--63578489ddc287783ddfde4cd0cff20c6783a6f300485576f3c6428095765718.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2021.11.25\nKristy comment - Suggested to be included as a 'Never Responder' case as suspected disruption of HLA-A from WES Have selected Rapid progressor project for this reason\n\nRC Meeting 2021.09.02\nHave NGS report, but proceed with WES (rare gynae case).\n\nMeeting 2021.08.12\nSFRC01412_A05: Plan: do WES, case for Warren ";
      d_case_summary = "Advanced clear cell cervical adenocarcinoma. Diagnosed 2019\nEnrolled for research only.\nCT guided Biopsy (19/03/21)\n- Metastatic adenocarcinoma, in keeping with metastatic clear cell carcinoma.\n- Pankeratin AE1/3, PAX8 and Napsin A Pos\n- WT1, ER Neg\n- PR weak pos\n- p53 wild type\n- MMR normal";
      date_consented = "2021-04-26";
      tumour_type = "Clear cell cervix";
      tumour_details = "Cervical clear cell carcinoma";
      pre_analysis_mutations = "NGS finding:\nPPP2R1A   p.R183W\nARID1A     p.Q944\nARID1A     p.R693\n\nERB3        p.L11771\nMSH2      p.M6062 /p.M6222/p.M672L\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 block received by Warren 20/7/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01412";
    predictNeoantigens = true;
  }
