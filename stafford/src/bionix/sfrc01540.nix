with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gx/75/SHA256E-s42177417654--0243ecd58057793d65a0993124d93642af8dceb1ae707df59ab5b7de651b5b78.gz/SHA256E-s42177417654--0243ecd58057793d65a0993124d93642af8dceb1ae707df59ab5b7de651b5b78.gz";
      r2 = "VG/ZF/SHA256E-s45010780683--6c9c2213be955343517cb8e0aede84735b1e1a6d2304e49c648c1219bbecfb60.gz/SHA256E-s45010780683--6c9c2213be955343517cb8e0aede84735b1e1a6d2304e49c648c1219bbecfb60.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "9v/qz/SHA256E-s98081195165--73605a98cd76f16d373a7bd5b5b31509e7b2c825e07083162daba739dbeb1171.gz/SHA256E-s98081195165--73605a98cd76f16d373a7bd5b5b31509e7b2c825e07083162daba739dbeb1171.gz";
      r2 = "3g/P9/SHA256E-s105001464961--129d022470272578e2a4d0b8b083cbeff5505634ee25e225c9f729443da44c5e.gz/SHA256E-s105001464961--129d022470272578e2a4d0b8b083cbeff5505634ee25e225c9f729443da44c5e.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "M5/p6/SHA256E-s4740768009--0b9a3b1d6fb7db7d3fe8141ca10b58ef673a4a71fd65005baacf065288809e0b.gz/SHA256E-s4740768009--0b9a3b1d6fb7db7d3fe8141ca10b58ef673a4a71fd65005baacf065288809e0b.gz";
      r2 = "Qm/PZ/SHA256E-s4778982335--079232e1c5a6093760cf746779b6e7b34babd6856a4a584c904851fbec13d6a0.gz/SHA256E-s4778982335--079232e1c5a6093760cf746779b6e7b34babd6856a4a584c904851fbec13d6a0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0093";
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 13.10.2022\nDiscussed WGS report. Also have WES on earlier sample.\nDiscussion: C5 subtype - high amplification of HMGA2 (CN 23). Chromatin binding factor; linked with EMT. Potential for eribulin?? Not clinically reportable; research only. \n\nBorderline MSH2 & MSH6 amplification, but in combination with high TMB not trusted. Patient is HR-P  \n\nRC meeting 05.05.2022\nAsha to do extraction for S1 sooner rather than later. \nFFPE sample - WES (when it's sorted & when blood has arrived) \nBROCA - DNA from FFPE and OCT \nKas to organise methylation \n\nRC meeting 17.03.2022\nMicrodissect S1, Briony/Mandy to organise blood.\nSend for WGS";
      myriad_report = "SFRC01540_MyriadResult_28Oct2022_29_Redacted.pdf";
      date_of_death = "12/2023";
      d_case_summary = "HGSOC";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "64yo woman\n\n2019-05: diagnosis of HGSOC, BRCA1/2 WT\n\n2019-06: TLH/BSO. Fallopian tube tissue 1E fixed and blocked.\n\n2017-07:\nIHC positive: p53 (mutation type), CK7, WT1, PAX8, ER (2-3+ in 50%), PR (1+ in 50%)\nIHC negative: CK20\n\n2019-10: completed 1st line chemo (6x carbo/pacli)\n\n2020-10: completed bevacizumab\n\n2022-03: Fresh tissue S1 of core biopsy of fresh pelvic mass received. Block of tissue 1E received.\n\n2022: 2nd line chemo commenced.";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 29";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "11/03/2022: June 2019 sample block requested from RWH pathology by Devindee.\n23/03/2022: June 2019 slides received from RWH pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01540";
  }
