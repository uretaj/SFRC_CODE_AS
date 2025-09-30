with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1AA";
      class = "tumours";
      pdx = false;
      r1 = "wm/gk/SHA256E-s9753099032--f2e1cd2ef6e50cb1639609d4227c2c1fd1c2f95b6c10d0ad844072de1b628cf5.gz/SHA256E-s9753099032--f2e1cd2ef6e50cb1639609d4227c2c1fd1c2f95b6c10d0ad844072de1b628cf5.gz";
      r2 = "jQ/Wk/SHA256E-s9770337121--0c27eb732f0fdbae8a43e1330850b060d5438b2cb88b8367f2973ea4d98f4c55.gz/SHA256E-s9770337121--0c27eb732f0fdbae8a43e1330850b060d5438b2cb88b8367f2973ea4d98f4c55.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jx/3j/SHA256E-s2707851284--328bcac60e9d76c4e7e9470a1a1829e3393a1d1d56b7d58a99ee7cbb0bde450c.gz/SHA256E-s2707851284--328bcac60e9d76c4e7e9470a1a1829e3393a1d1d56b7d58a99ee7cbb0bde450c.gz";
      r2 = "wj/4k/SHA256E-s2790554095--0dd68e4f00c2dcb5cb737b5d7d6c6c301a605a81736c3e9446ec5124cb6b75ff.gz/SHA256E-s2790554095--0dd68e4f00c2dcb5cb737b5d7d6c6c301a605a81736c3e9446ec5124cb6b75ff.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nBrought up WES report again. Looking at the 2 RUNX1 variants, they are probably a single variant. WES report to be issued urgently (MYC amp).\n(Mandy emailed 27.07.2023 - Rae)\n\nRC meeting 28.10.2021\nPatient to be referred for familial cancer clinic consultation, recommendation from Paul James\n\nRC meeting 2021.09.02\nFollowing up on the germline mutations with Paul James (Clare to do).\n\nClare's meeting 2021.06.03\n Do WES on block 1AA with increased depth., Justin to analyse. Looking for HRD genes. And for BROCA ";
      d_case_summary = "recurrent metastatic serous endometrial cancer. ER  and HER2 negative. MMR status unknown. Stage 2 disease 2019, surgical resection followed by adjuvant carboplatin and paclitaxel, no adjuvant radiation. Recurrence in early 2020, treated with carboplatin and caelyx, completed 5 cycles with biochemical and radiological response. Referred for genetic testing.";
      tumour_type = "HGSEC";
      tumour_details = "Serous endometrial carcinoma";
      case_details = "64 years old female with recurrent metastatic serous endometrial cancer. \n\nMay 2019: (Block sample used for WES) Surgical resection of stage 2 serous endometrial cancer. \n\nER positive, HER2 negative, P53 above 90% \n\nOestrogen receptor 10% positive, Progesterone receptor 5% positive  \n\nMMR and BRCA status unknown \n\nJun 2019: Commenced adjuvant carboplatin and paclitaxel, no adjuvant radiation.  \n\nOct2019: Completed carboplatin and paclitaxel.  \n\nSep 2020: Recurrence.  \n\nOct 2020: Commenced carboplatin and pegylated liposomal doxorubicin (Caelyx).  \n\nMar 2021: Completed 5 cycles. Biochemical and radiological complete response. Ongoing treatment.  \n\nApr 2021: Referred to ARC Portal for advice regarding genetic testing ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 Block received by Warren 5/5/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01399";
    capture = CREv2;
  }
