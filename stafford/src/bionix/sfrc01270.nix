with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/SFRC/2020-07-14/L2000459_S17";
      suffix = "_001";
      sha256-1 = "43cfcf75232c90fdbc32bcdc09501f2b4f32635bd28051eb1c66b7b927e1c541";
      sha256-2 = "8e5bbeffcd5fa71962842ba9c41c4dbb005e3c3d42096e5d924c63dfb8950b4d";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "grimmond/SFRC/2020-07-14/L2000460_S18";
      suffix = "_001";
      sha256-1 = "644b74cb5b89164d491218f7f968b3e62f52f092282efdd202cc88ae88df6de6";
      sha256-2 = "0ebd314b4ada1a798d77a9ebea87129a5c805938fa8b21c6acd85e1427fbb2b5";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "RC Meeting notes 09.07.2020\nLooks like we might have a PDX - IHC to be confirmed with Gayanie \nPlan: Patient progressed. Report has been sent out. Nothing actionable. If PDX grows try CDK4i (palbociclib) and Beigene Ras/Raf inhibitor. \n\nMeeting notes 02.07.2020\nWGS results came back already. Nothing significant to report. Low tumour burden. Mutation of potential clinical significance in KRAS, uncertain significance in FBXW7, RAD21. Weak BRCA deficient signature. No research need for WES, so will leave for now. \n\nMeeting notes 18.06.2020\nWGS already submitted. Urgent, Clare to email Joep to hurry up (nicely).";
      date_of_death = "07/2020";
      date_consented = "2020-01-28";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Adenosarcoma of the Uterus, with Rhabdomyosarcomatous overgrowth";
      case_details = "FIGO Stage 1B adenocarcinoma of uterus, with rhabdomyosarcomatous overgrowth, treated with TLHBSO with SLNBx on 23/10/2019\n\nRx Adjuvant pelvic RTx completed 19/02/2020\n\nDisease recurrence 04/2020\n\nmodified VAC (Vincristine / Actinomycin-D / Cyclophosphamide) commencing in QLD in April";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2019 Tissue continaing Adenosarcoma requested from QML via email on 17/4/2020 by Josh for Clare\n\nReceived 21/05/2020 by Joshua";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01270";
  }
