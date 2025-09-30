with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "Z3/Pj/SHA256E-s16631240446--847bce53af1a95fa6c612a27924f7c817746a1a543847d6ae01ed16cf4964edf.gz/SHA256E-s16631240446--847bce53af1a95fa6c612a27924f7c817746a1a543847d6ae01ed16cf4964edf.gz";
      r2 = "3v/g6/SHA256E-s17211089118--eb49b247189b3f47414522e6b990fc64a979168b2f06614bfc719daa3709a052.gz/SHA256E-s17211089118--eb49b247189b3f47414522e6b990fc64a979168b2f06614bfc719daa3709a052.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jm/K1/SHA256E-s5565333418--9f194b729ad8c1f8cb3be35340c3bc97d0b96181f3a3997c94099129770563bd.gz/SHA256E-s5565333418--9f194b729ad8c1f8cb3be35340c3bc97d0b96181f3a3997c94099129770563bd.gz";
      r2 = "xV/pf/SHA256E-s5804043824--7acb8e1d29427ac01d04776da29fde76b94bac6bc8c6fccb03413987e8c7f2e9.gz/SHA256E-s5804043824--7acb8e1d29427ac01d04776da29fde76b94bac6bc8c6fccb03413987e8c7f2e9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2021.09.24\nSFRC01359_A3: Do WES\n\n18Oct2021- Note: Patient emailed Briony- she has metastases and any info we can report to oncologist from WES would be useful please. ";
      d_case_summary = "Post-menopausal bleeding. 100x70x52mm uterine leiomyosarcoma. TAH-BSO. Adjuvant EBRT. Nil evidence of disease. For enrolment in Stafford Fox.\n18Oct2021- Note: Patient emailed Briony- she has metastases and any info we can report to oncologist from WES would be useful please.";
      date_consented = "2021-01-03";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "July 2020: diagnosis uLMS, Stage 1B \n\nAug 2020: TAH BSO. Tumours cells are posititve for SMA and h-caldesmon, negative for pancytokeratin AE1/AE3, desmin, CD10, ckit and PAX 8 \n\nSept 2020: adjuvant radiotherapy  \n\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07/11/2022: 2020 block requested from John Hunter Hospital by Devindee for uLMS project.\n28Apr2023: 2020 block requested from John Hunter Hospital by Monica for uLMS project.\n\n2020 block requested by Warren from HMRI 23/08/21, received 14/09/21";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01359";
    capture = CREv2;
  }
