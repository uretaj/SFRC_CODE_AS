with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1";
      class = "tumours";
      pdx = false;
      r1 = "Xx/Wj/SHA256E-s14541525029--9db269aab37213ae622a1c38e6e3f21bc6b11da733fadeb816e71a5fea0d0aec.gz/SHA256E-s14541525029--9db269aab37213ae622a1c38e6e3f21bc6b11da733fadeb816e71a5fea0d0aec.gz";
      r2 = "zj/ZX/SHA256E-s15355867554--7c8391b18a1422e03640ec8470b32237e1e370fd8287b51a47bac48a9eaf447b.gz/SHA256E-s15355867554--7c8391b18a1422e03640ec8470b32237e1e370fd8287b51a47bac48a9eaf447b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "80/FM/SHA256E-s5124669527--a212f3797c7a0de02cc14a0d325df4b648c2cb0e621798b84fd939095afdcba5.gz/SHA256E-s5124669527--a212f3797c7a0de02cc14a0d325df4b648c2cb0e621798b84fd939095afdcba5.gz";
      r2 = "j1/Pv/SHA256E-s5203557905--ac6d2a0e3ffd97d8af5fc4acdfb6d271dead93e043763f6b4210d133aed98ed2.gz/SHA256E-s5203557905--ac6d2a0e3ffd97d8af5fc4acdfb6d271dead93e043763f6b4210d133aed98ed2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 23.02.2023\nDiscussed FFPE Block 1 WES Report: \n-Noisy FFPE sample  \n-CIN and mutational activation of KIT, RAS/RAF and AKT pathways https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5342399/ - CNS germinomas often have global demethylation,  \n-Can report KIT amplification, quality issue from FFPE \n\nClare's Meeting 06.09.2022\nIs ARCPortal case, is on the list for getting blood. Mandy will request. \n\nNeed Portal Letter. Ask Damien about patient. If urgent, do TSO. If not, do WES. ";
      blood_recall_history = "09Sep22 - Planning for collection on 15Sep22";
      d_case_summary = "Recurrent advanced stage germinoma dx 29Oct2018\n     - 03Dec2018 to 08Feb2019 Carbo/Etop\n     - IHC - tumour cells are positive for C-kit. No immunoexpression for AE 1/3 and CD30. Immunohistochemical stain PLAP \n       TBC";
      tumour_type = "CNS cancer";
      tumour_details = "Germinoma in the cerebellopontine angle, recurrent";
      case_details = "2018-10: Diagnosed germinoma of the left CP angle. \n-Surgery: Sub-occipital retrosigmoid craniotomy & resection of CP angle tumour. Germinoma fixed and blocked (Blocks 1 & 2)\n-Histopath:\n-IHC positive: C-kit, PLAP, CD117, OCT3/4\n-IHC negative: AE1/3, CD30\n-PDL-1: Low expression (1 - 49%)\n\n2018-12 - 2019-02: Treatments: Adjuvant carboplatin etoposide. Whole ventricular radiation.\n\n2020-07: MRI - no recurrent disease.\n\n2021-11: Left occipital craniotomy--no recurrent soft tissue in the left CP angle. Normal appearances of brain. No evidence of recurrent disease.\n\n2022-05: MRI B+S: Likely recurrence of disease. \n\n2022-08: FFPE blocks 1 & 2 from 2018 Dx received.\n\n2022-09: Blood B1 received\n\n2022-11: B1 and Block 1 DNA sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01609_ARCPortalLetter_06Jul2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "25/07/22: 2018 tissue requested from Territory pathology by Devindee. \n06/08/2022: 2x blocks from 2018 sample received from Territory pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01609";
    capture = CREv2;
  }
