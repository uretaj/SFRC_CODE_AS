with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "MX/JQ/SHA256E-s2927359138--771fa8eea46e73de9fd2c61cc99863594f0fcb73fdc854f48cee363f412e5fd1.gz/SHA256E-s2927359138--771fa8eea46e73de9fd2c61cc99863594f0fcb73fdc854f48cee363f412e5fd1.gz";
      r2 = "Xf/2p/SHA256E-s3143825737--764d452dd397e80b143b78e052072b486a214bd8971e2715ec8fd55fccfafdd0.gz/SHA256E-s3143825737--764d452dd397e80b143b78e052072b486a214bd8971e2715ec8fd55fccfafdd0.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "8p/5x/SHA256E-s4903780099--073c044a377b6aa9f265347162d68f5fd5eaf78a05e8efb1fe04b076517845cb.gz/SHA256E-s4903780099--073c044a377b6aa9f265347162d68f5fd5eaf78a05e8efb1fe04b076517845cb.gz";
      r2 = "kw/kp/SHA256E-s5220812096--c35f5e43e8e57ee41246b79af5f0c7d24bcd5fdb719bff4e56df06363a1c1633.gz/SHA256E-s5220812096--c35f5e43e8e57ee41246b79af5f0c7d24bcd5fdb719bff4e56df06363a1c1633.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting note (Clare and Ratana) 26.06.2020\nUrgent for Cass: for PDX, want to see/comment on effect of PARPi on the BRIP1 mutation. Would use all 3 PARPis (rucaprib, niraparib, olaparib) + Cisplatin.\nBROCA to confirm BRIP1 and get HRD on whole PDX\n\nMeeting notes 19.03.2020\nUnfortunately patient is deceased.  Was on olaparib at the time.  Unclear how responsive BRIP1 mutant tumours are to PARPi \n\nPlan: Come up with molecular rationale for combination therapy to test in PDX ";
      myriad_report = "SFRC01164_MyriadResult_31Jan22_Redacted.pdf";
      date_of_death = "12/2019";
      date_consented = "2019-04-29";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, BRIP1 mutation";
      case_details = "High Grade Serous ovarian with BRIP1 mutation; need to prove LOH for PARPi access";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 35";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01164";
    capture = CREv2;
  }
