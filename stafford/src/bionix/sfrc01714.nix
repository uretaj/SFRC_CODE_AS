with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 30;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "21/KM/SHA256E-s51215264374--1d029706f33a2d3e611c78c65609358fad81332a86451ca93ed207f176b1964f.gz/SHA256E-s51215264374--1d029706f33a2d3e611c78c65609358fad81332a86451ca93ed207f176b1964f.gz";
      r2 = "3q/X9/SHA256E-s55181172444--32f6313271bd0fbc0232bd551e94d8d0e721337bc92c9c3c520f6279395043c9.gz/SHA256E-s55181172444--32f6313271bd0fbc0232bd551e94d8d0e721337bc92c9c3c520f6279395043c9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "qQ/pw/SHA256E-s79733937863--20f838aa3ee004a838f36557ceba8af4bba75d5a8e322f7f8fb2e8610f6eae4e.gz/SHA256E-s79733937863--20f838aa3ee004a838f36557ceba8af4bba75d5a8e322f7f8fb2e8610f6eae4e.gz";
      r2 = "p0/Zx/SHA256E-s84848200351--a3af58cfe57c3f6cdaa6f399d9b0d8d34db0d686e0bda1b4fc605a84a79fa6e5.gz/SHA256E-s84848200351--a3af58cfe57c3f6cdaa6f399d9b0d8d34db0d686e0bda1b4fc605a84a79fa6e5.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "0K/w0/SHA256E-s5783164640--275fa0e0861293bd8d5674f194a844166f6284ea56fb816f8c3cf2871b7a6b0b.gz/SHA256E-s5783164640--275fa0e0861293bd8d5674f194a844166f6284ea56fb816f8c3cf2871b7a6b0b.gz";
      r2 = "1P/mV/SHA256E-s6000941032--276d060a01c58622c8ea2ce8db2c025ad1503920b348d4bd2a40f428531e8560.gz/SHA256E-s6000941032--276d060a01c58622c8ea2ce8db2c025ad1503920b348d4bd2a40f428531e8560.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 25.05.2023\nDiscussed WGS report with SFRC data.\n\nClare's Meeting 23.02.2023\nReviewed FFPE of S1: 40% purity entire piece. OCT was from the same region. WGS is the plan. When OCT review back and is consistent, just send urgently.\nPath report came in - is LGSOC, not HGSOC (still send for WGTS).\n";
      d_case_summary = "23yo with LGSOC\nFor expert opinion regarding interpretation of molecular tests and enrollment in relevant trials.\nOn immunohistochemical staining the tumour cells are positive for CK7, WT1 and PAX8. There is also diffuse p16 staining. P53 stains most cells with some variation in intensity, but interpreted as likely mutant. The tumour cells are negative for CK20, GATA3 and CDX2.";
      date_consented = "2023-02-02";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC (was diagnosed HGSOC)  23yo";
      case_details = "23F\n\n2023-01: Dx HGSOC via ascitic tap\nIHC positive: CK7, WT1, PAX8, p16 (diffuse), p53 (likely mutant type)\nIHC negative: CK20, GATA3, CDX2\n\n2023-02: Surgery: Debulking. Fresh tissue S1 received. Blood B1 received.\nHistopath report states is p53 wildtype and LGSOC\n\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01714_ARC_Report_21Feb2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01714";
  }
