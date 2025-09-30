with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KQ/79/SHA256E-s49751532585--0877b6a24770c30f5df8e7614ce2f2991d998443e1e2daaa2dbdf7f15449381c.gz/SHA256E-s49751532585--0877b6a24770c30f5df8e7614ce2f2991d998443e1e2daaa2dbdf7f15449381c.gz";
      r2 = "VK/gg/SHA256E-s54036964661--4ae775ccbffc0c5ac3afeb3a055da9be54ff36887f9231e0f91c16f21f97236d.gz/SHA256E-s54036964661--4ae775ccbffc0c5ac3afeb3a055da9be54ff36887f9231e0f91c16f21f97236d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "qj/85/SHA256E-s93111612822--6d1a6e981e12c4fcff086ec98c18f70f2453cf550bfc17d8ef8aced58eed2939.gz/SHA256E-s93111612822--6d1a6e981e12c4fcff086ec98c18f70f2453cf550bfc17d8ef8aced58eed2939.gz";
      r2 = "zX/QZ/SHA256E-s98688607778--b4bcffcb565c35cd3a21e47a92e5adcb2fae388b5ca948c10ca35b411ca77645.gz/SHA256E-s98688607778--b4bcffcb565c35cd3a21e47a92e5adcb2fae388b5ca948c10ca35b411ca77645.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "M6/g0/SHA256E-s7595315271--06002979716d6effac9d8f7d1e5b027048d1e8e1729c3a5ab65a32c8ed7377c1.gz/SHA256E-s7595315271--06002979716d6effac9d8f7d1e5b027048d1e8e1729c3a5ab65a32c8ed7377c1.gz";
      r2 = "qW/jZ/SHA256E-s7533843468--2b64baf9a5557633ee16c7a0e7e8811695d5e33f06565ac8be6f304b5e88e61c.gz/SHA256E-s7533843468--2b64baf9a5557633ee16c7a0e7e8811695d5e33f06565ac8be6f304b5e88e61c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 02.11.2023\nDiscussed WGS report with SFRC data.\n\nClare sample meeting 14.07.2023\nPlan for fresh tissue S1: Send for WGS\nPeritoneal LMS. Rare";
      blood_recall_history = "Was planned for 14.04.2023, but the collection did not happen.";
      d_case_summary = "recurrent LMS (?uterine?peritoneal)";
      date_consented = "2023-08-28";
      tumour_type = "Gynae cancer other";
      tumour_details = "Omental LMS";
      case_details = "44 years old female  \n\n2019-01: \tInitial diagnosis, surgery, leiomyosarcoma, FNCLCC grade 2 \nIHC positive: SMA and Desmin and CD10 \nIHC negative: DOG1, c-kit \n\n2023-05: \tSuperficial biopsy \nIHC positive: desmin  in some cells, weak actin  \nIHC negative: calretinin \n\n2023-07: \tSurgery, fresh tissue S1 received ";
      brca_report = "SFRC01780_BRCAPanel_19Sep2023_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01780";
  }
