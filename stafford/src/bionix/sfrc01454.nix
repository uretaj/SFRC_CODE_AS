with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "X9/zV/SHA256E-s14536624598--146676381f9502206d7665d7a839a09473ef2aadfd3e32ad4b2c0781175034fa.gz/SHA256E-s14536624598--146676381f9502206d7665d7a839a09473ef2aadfd3e32ad4b2c0781175034fa.gz";
      r2 = "1w/4Z/SHA256E-s15224272145--80cb71643de9760dc158e93fd34a34cc55a750f5c5606bef60977003f1a889fd.gz/SHA256E-s15224272145--80cb71643de9760dc158e93fd34a34cc55a750f5c5606bef60977003f1a889fd.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6v/9f/SHA256E-s4514509939--af9ca8c46f52a0a0b6fc78c02469da618f70cca8ef4e80547733fd3feaa98ed1.gz/SHA256E-s4514509939--af9ca8c46f52a0a0b6fc78c02469da618f70cca8ef4e80547733fd3feaa98ed1.gz";
      r2 = "K3/M8/SHA256E-s4652953280--7fb4c861663eecde384f330df6a1927c9e188979a08198d2f113672d0dfbe683.gz/SHA256E-s4652953280--7fb4c861663eecde384f330df6a1927c9e188979a08198d2f113672d0dfbe683.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 22.10.2021\nBlock 2C: Briony to organise blood collection and then do WES";
      d_case_summary = "17 year old female diagnosed in October 2020 with spindle cell sarcoma right mandible\nTreated with induction radiotherapy then resection 13 Jan 2021.\nR0 resection.\nunder follow up with clinical examination and imaging. \nLung nodule identified and resected 7 June 2021 confirming solitary metastasis (thus far) to lung.\nFamily wish to consider systemic therapy and if immunotherapy may be available";
      date_consented = "2021-07-13";
      tumour_type = "Other rare";
      tumour_details = "spindle cell sarcoma right mandible (high grade myofibroblastic sarcoma)";
      case_details = "17 year old female  \n\n2020 Oct: biopsy and diagnostic. Treated with induction radiotherapy  \nIHC Positive: SMA, moderate nuclear staining for SatB2, weak and focal reaction with EMA, P63 \nIHC Negative: CD34 (vessels only), STAT6, S100, Sox10, AE1/AE3, CD31, ERG, Desmin, caldesmon, MyoD1, Batacatenin, ALK1, P40, CK5/6, TLE1, MUC4, PAN-TRK. \nSYT-FISH: pending  \nMDM2_FISH:? \n\n2021 Jan: resection. R0 resection. under follow up with clinical examination and imaging. (Block 2C received, 80% tumour purity)\n\n2021 Jun: Lung nodule identified and resected, confirming solitary metastasis (thus far) to lung. \nIHC Positive: SMA \nIHC Negative: AE1/AE3, CK8/18, CD31, S100, CK5/6, CK34, SOX10, p40.  \nAberrant staining for desmin  \nKi67 about 45% \n\n2012-12: SFRC blood B1 received";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      other_tumour_type = "spindle cell sarcoma right mandible";
      portal_letter = "SFRC01454_ARCPortal_13Jul2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Block received by Warren from RB&WH 4/10/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01454";
  }
