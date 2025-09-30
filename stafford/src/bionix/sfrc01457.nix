with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2m/Pq/SHA256E-s5281101452--08d8c189490f25b880e9ca59b63c05ef83fda61bb8ffa6bc1ecacaf763246fa2.gz/SHA256E-s5281101452--08d8c189490f25b880e9ca59b63c05ef83fda61bb8ffa6bc1ecacaf763246fa2.gz";
      r2 = "8V/VM/SHA256E-s5576848983--ce31601b6729736151f9665211b09f69946f0f0165a720209da58af2cfe2d2cd.gz/SHA256E-s5576848983--ce31601b6729736151f9665211b09f69946f0f0165a720209da58af2cfe2d2cd.gz";
    }
    {
      site = "C";
      class = "tumours";
      pdx = false;
      r1 = "Pw/mk/SHA256E-s13456720893--5f42087c60188acb64f48bd91c8aa63ee7208747cabc3c3bb649dbacc7199308.gz/SHA256E-s13456720893--5f42087c60188acb64f48bd91c8aa63ee7208747cabc3c3bb649dbacc7199308.gz";
      r2 = "0v/92/SHA256E-s13862672296--0f5aa950c13e1c0ffa826a1250337fdc8f83578aa04865f46c10df8a94ed7537.gz/SHA256E-s13862672296--0f5aa950c13e1c0ffa826a1250337fdc8f83578aa04865f46c10df8a94ed7537.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting with Clare 22.10.2021\nBlock B and  C: Briony to organise blood  and then do WES. ";
      d_case_summary = "Uterine squamous cell carcinoma, metastatic stage IV\nMRI- 62x27mm pelvic mass consisting of an infiltrating lesion involving myometrium and endometrium, with extension to cervico-uterine junction but majority of cervix spared. Baseline PET staging showed bilateral pelvic and left supraclavicular lymphadenopathy. \nLeft inguinal lymph node biopsy, and D";
      date_consented = "2021-08-25";
      tumour_type = "Gynae cancer other";
      tumour_details = "Uterine SCC Stage IV";
      case_details = "2021-04: \tlymph node biopsy (Block B, tumour purity 65-75% and C, tumour purity 70% within circled area  received) Block C only sent for WES \n\nIHC Positive: CK5 and p63, GATA3 weak \n\nIHC Negative: Sox 10 and P16 \n\n2021-04 :\tcuretting \nIHC Positive: p40  \nIHC Negative: P16 \nNot HPV associated \n\nCarboplatin/paclitaxel/bevacizumab \n\n2021-11: Blood B1 received \n\nReferred to SFRC for molecular testing. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01457_ARCPortalSummary_22Aug2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2021 Blocks B and C received from Capital Pathology by Warren 26/9/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01457";
  }
