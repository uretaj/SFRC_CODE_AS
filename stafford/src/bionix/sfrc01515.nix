with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "q8/xm/SHA256E-s20869996558--894ae2fba596ce9b063daf1e870486e651011bf14c1182bbdc28998a7874a157.gz/SHA256E-s20869996558--894ae2fba596ce9b063daf1e870486e651011bf14c1182bbdc28998a7874a157.gz";
      r2 = "pp/QW/SHA256E-s21417481411--8ce65bc7985a3f77f67f6387d232b66ea3e06f16cc3a42b9d0cc3c480da6fba5.gz/SHA256E-s21417481411--8ce65bc7985a3f77f67f6387d232b66ea3e06f16cc3a42b9d0cc3c480da6fba5.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jj/w7/SHA256E-s4901262520--532779a191a2d1d5cc321196c879f01655cf28ae12be95710b07633aafed72ff.gz/SHA256E-s4901262520--532779a191a2d1d5cc321196c879f01655cf28ae12be95710b07633aafed72ff.gz";
      r2 = "k5/Mm/SHA256E-s5178718970--5dcfc3d56eecdb999f662a21b981e620eec68490fc3aa3a01bee1a422968ad96.gz/SHA256E-s5178718970--5dcfc3d56eecdb999f662a21b981e620eec68490fc3aa3a01bee1a422968ad96.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 27.10.2022\nDiscussed WES report.\nSomatic TP53, but nothing else reportable.\n\nClare's meeting 10.03.2022\nBlock 1Q: organise WES\nBriony/Mandy to organise blood collection ";
      d_case_summary = "72yo female with myxoid leiomyosarcoma";
      date_consented = "2022-01-10";
      tumour_type = "uLMS";
      tumour_details = "Uterine myxoid leiomyosarcoma (uLMS)";
      case_details = "71 years old female  \n\n2021-10:\tDx Resected Stage 1B uLMS\nSurgery: hysterectomy & BSO. Fibroid fixed and blocked (Block 1Q) \nIHC positive: SMA, desmin \nIHC negative: CD10, ALK \nKi67 high \n\n2021-11: Post operative PET scan: No nodal or distant metastatic disease. On 3 monthly surveillance.\n\n2022-02: FFPE Block 1Q received\n\n2022-04: Blood B1 received\n\n2022-08: DNA from FFPE Block 1Q and Blood B1 sent for WES: \nSomatic variant: TP53\nNothing else reportable\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01515_ARCPortalReport_21Jan2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "14/02/2022: Oct 2021 sample tissue requested from NSW Government Pathology (Royal Prince Alfred Hospital) by Devindee. \n17/02/2022: Oct 2021 sample block 1Q received by Devindee.";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01515";
  }
