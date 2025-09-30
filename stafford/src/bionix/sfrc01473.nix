with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "1Z/KK/SHA256E-s19337330444--8f2e893b0ddda70298aa393dcf751bb5c76a6b18023e5f69ac8b55b9c97c7c40.gz/SHA256E-s19337330444--8f2e893b0ddda70298aa393dcf751bb5c76a6b18023e5f69ac8b55b9c97c7c40.gz";
      r2 = "76/X5/SHA256E-s19796828165--5b9122ad1370cf527203bae91449254ae5364b958912f52ca4c3646c26814917.gz/SHA256E-s19796828165--5b9122ad1370cf527203bae91449254ae5364b958912f52ca4c3646c26814917.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Gq/WQ/SHA256E-s5949244427--62882fcc3c9952deb5baba119f8fc92a602f634ae44ee73ab254806ad84bcd4e.gz/SHA256E-s5949244427--62882fcc3c9952deb5baba119f8fc92a602f634ae44ee73ab254806ad84bcd4e.gz";
      r2 = "zz/4w/SHA256E-s6343475541--4e2434510b5f3309a2c29d8455829660608ecca2dc2a89946bc2119c36e197d4.gz/SHA256E-s6343475541--4e2434510b5f3309a2c29d8455829660608ecca2dc2a89946bc2119c36e197d4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting with Clare 16.12.2021\nBlock A1: Send for WES only not BRCA";
      d_case_summary = "Metstatic uLMS\nInitial diagnosis of uterine LMS in 6/2018 treated with TAH BSO. Lung metastatectomy in 3/2010. Progression with nodal disease (hilum, mediastium, left pelvic side wall, right SCLN- biopsy confirmed LMS). Doxorubicin 6 cycles 10/2020- 1/2020. partial response with persistent left pelvic side wall mass/node. Pazopanib 6/2021. Latest imaging isolated enlargement left pelvic side wall mass. Previously referred to MoST but sample failed for molecular testing.";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "61 years old female  \n\n2018-06:\tTAHBSO, initial diagnosis uLMS \n\n2020-03:\tLung metastatectomy, Progression with nodal disease (hilum, mediastium, left pelvic side wall, right SCLN- biopsy confirmed LMS). (Tumour tissue fixed and blocked: Block A1) \n\nIHC positive: caldesmon and desmin \n\n2020-10 -> 2021-01 Doxorubicin 6 cycles. Partial response \n\n2021-06:\t        Pazopanib  \n\n2021-08: \tReferred to MoST but sample failed for molecular testing. \n\n2021-11: \tBlood B1 received. FFPE Block A1 \n                        received.\n\nReferred to SFRCP for somatic BRCA testing and access to PARP inhibitor \n\n2022-02:       B1 and A1 DNA sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01473_ARCPortal_uLMS.docx_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07/11/2022: 2020 block requested from ACT pathology by Devindee for uLMS study. \n21/11/2022: 2020 block received.\n\n2020 block received by Warren from ACT Pathology 16/11/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01473";
  }
