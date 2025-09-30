with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "K0/vM/SHA256E-s18603842617--1fd99974c9b08c339cd6bb7fcee423ca58a331d68166bd22d5dc6f702257eceb.gz/SHA256E-s18603842617--1fd99974c9b08c339cd6bb7fcee423ca58a331d68166bd22d5dc6f702257eceb.gz";
      r2 = "mW/XM/SHA256E-s18900817028--132a45f79c057732d5b6252e868a5830593ada71221195272623dae483f6b8c0.gz/SHA256E-s18900817028--132a45f79c057732d5b6252e868a5830593ada71221195272623dae483f6b8c0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8Z/vM/SHA256E-s5159357295--c49953a63ec12f1f3886cdf465c77a4b1be23e3b8e4b14579feecfbb2a81daa9.gz/SHA256E-s5159357295--c49953a63ec12f1f3886cdf465c77a4b1be23e3b8e4b14579feecfbb2a81daa9.gz";
      r2 = "3W/x1/SHA256E-s5297934541--46ebd91c517275409973bda94dd06c68a6dee116893bca0302fc90ad9892bd8d.gz/SHA256E-s5297934541--46ebd91c517275409973bda94dd06c68a6dee116893bca0302fc90ad9892bd8d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 22.10.2021\nBlock 1B: Do WES";
      d_case_summary = "uLMS\nDx leimysarcoma uterus 2010. Paraortic node resection and lung resection 2013.\n12Jul2021- large pelvic node resection at RWH.";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "69 years old \n\n2008 \tdiagnosis and hysterectomy \n\n2013\tpara-aortic nodal recurrence \n\n2015\tlung metastasis \n\n2021\tpelvic node resection and fluid collection (FFPE block 1B, 60% tumour purity, and Blood B1 received) \n\nIHC Positive: SMA and caldesmon, focal positivity for desmin. \n\nP53 WT and Ki67 about 15-20% ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07/11/2022: 2021 block requested from RWH by Devindee for uLMS project.\n\nblock received by Warren 4/10/21 from RWH/RCH";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01433";
  }
