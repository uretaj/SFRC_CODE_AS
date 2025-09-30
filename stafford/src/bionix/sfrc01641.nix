with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "fg/fZ/SHA256E-s22531261402--13853a4731ba5ce0487165ad9f2119081d6751b73f0b5b0d4d7ac86c12298651.gz/SHA256E-s22531261402--13853a4731ba5ce0487165ad9f2119081d6751b73f0b5b0d4d7ac86c12298651.gz";
      r2 = "P6/7g/SHA256E-s22509584527--81477d75fd7e2f92cf7504972181f5860f9417a718669b7834c04d4bcb440270.gz/SHA256E-s22509584527--81477d75fd7e2f92cf7504972181f5860f9417a718669b7834c04d4bcb440270.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xF/kv/SHA256E-s5340140298--d771c5aa6fe33d02f13d4d661fa44af9bc59ba0c169d77d24b8224d31e7af06f.gz/SHA256E-s5340140298--d771c5aa6fe33d02f13d4d661fa44af9bc59ba0c169d77d24b8224d31e7af06f.gz";
      r2 = "jv/0v/SHA256E-s5392643347--ad200a575a9fb4b8458aadd48fa5102ccec39607eda79f9d2147924326e384bb.gz/SHA256E-s5392643347--ad200a575a9fb4b8458aadd48fa5102ccec39607eda79f9d2147924326e384bb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "2023.09.14\nWES discussion on FFPE block 1P (Diagnosis): \nRefer to Paul James for germline (Clare) make sure this patient is referred to a germline program  \nIssue report urgently (TP53 and KRAS) \n\nClare's Meeting 27.02.2023\nFamily history MLH1(?) \nDo WES (48h digest) on Block 1P.";
      d_case_summary = "mucinous ovarian ca at 67y, family history includes rare cancers incl. melanoma, pancreatic ca, 2x AML";
      date_consented = "2022-08-19";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Mucinous ovarian cancer";
      case_details = "67F, extensive family history of cancer.\n\n2021-12: Dx FIGO 1C3 mucinous carcinoma of the left ovary\nSurgery:  Hysterectomy/BSO, Laparotomy, omentectomy (Block 1P)\nIHC positive: CK20, CDX2\nIHC negative: PAX8, CK7, SATB2 (equovical)\npMMR: lmmunostaining for mismatch repair proteins has shown intact (normal) expression of\nMLH1, PMS2, MSH2 and MSH6.\n\n2022-09: Blood B1 received\n\n2023-02: Sections from FFPE Block 1P (ovary) received.\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "02/01/2023: Dec 2021 sample requested from Epworth pathology by Devindee.\n02Feb23: Dec 2021 sample received by Monica ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01641";
  }
