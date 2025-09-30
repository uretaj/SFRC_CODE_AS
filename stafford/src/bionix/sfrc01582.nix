with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "wv/x7/SHA256E-s17310232561--f073660b5fa987804e0d4a393beffd5472e440a3ea2b46d90868363d3330c0c2.gz/SHA256E-s17310232561--f073660b5fa987804e0d4a393beffd5472e440a3ea2b46d90868363d3330c0c2.gz";
      r2 = "W3/q9/SHA256E-s17618090038--43d746b1f4282b78a938194d0a2e12a634107d009b37a504a7e7485489d46b98.gz/SHA256E-s17618090038--43d746b1f4282b78a938194d0a2e12a634107d009b37a504a7e7485489d46b98.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "QJ/pz/SHA256E-s8854151587--db25ebfb6b70ce73b9f98fc0a5ebdc410a31e1aeab7e73608da2774c827f1a35.gz/SHA256E-s8854151587--db25ebfb6b70ce73b9f98fc0a5ebdc410a31e1aeab7e73608da2774c827f1a35.gz";
      r2 = "03/93/SHA256E-s9109480697--056d97a436b9a88d54548ec0ff4f0cccdd4575ddb03fd215c5fcbeff5d5bf93b.gz/SHA256E-s9109480697--056d97a436b9a88d54548ec0ff4f0cccdd4575ddb03fd215c5fcbeff5d5bf93b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 03.08.2023\nDiscussed WES report:\n-No reportable germline variants. \n-Reportable PPP2R1A and ARID1A somatic variants. \n-Lots of focal deletions but facets model has lots of warnings. Potentially oversegmented. Cannot call CNV; not reliable. \n-Enough drivers in tumour that CNV calls not needed. \n\nClare's Meeting 23.02.2023\nDo WES on Block 1D, Cat 2 case. ";
      d_case_summary = "61yo female with Stage ICI Clear Cell Carcinoma of the Ovary with Subserosal deposit of clear cell\nin myometrium.\n\n- Lap BSO, endometrial curettage and omental biopsy 13/4/22\n- Starting chemo May22";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell carcinoma of the ovary, Stage IC1";
      case_details = "61F\n\n2021-07: Discovery of ovarian cyst. CA125 - 274 and CA19.9 - 186, however both normalised without intervention\n\n2022-04: Dx clear cell carcinoma of the ovary, Stage 1C1\nSurgery: Lap BSO, endometrial curretage, omental biopsy (FFPE Block 1D), converted to laparotomy, hysterectomy, infracolc omentectomy with no visible disease.\nIHC positive: Napsin A, \nIHC negative: ER, PR, WT1, p16 (patchy)\np53: wild type\n\n2022-05: Blood B1 received.\n\n2023-02: FFPE block 1D received.\n\n2023-05: 1D and B1 DNA sent for WES\n\n";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01582_FCPanel_26Aug2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "21/06/2022: Apr 2022 sample requested from Melbourne Pathology by Devindee. \n1/02/2023: Apr 2022 sample received from Melbourne Pathology by Monica.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01582";
    capture = CREv2;
  }
