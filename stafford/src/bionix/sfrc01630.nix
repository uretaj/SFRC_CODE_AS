with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "23H";
      class = "tumours";
      pdx = false;
      r1 = "v2/Fq/SHA256E-s32146407322--abbd907c6b2e91be28b4a8f8a4de48e4b891c69f6bc120988b2bf0526bc1e1b0.gz/SHA256E-s32146407322--abbd907c6b2e91be28b4a8f8a4de48e4b891c69f6bc120988b2bf0526bc1e1b0.gz";
      r2 = "7q/1p/SHA256E-s33778994292--0e49e3c0432598a018b7cc1f79477134ce87320a1e224cb1f94fa08161832609.gz/SHA256E-s33778994292--0e49e3c0432598a018b7cc1f79477134ce87320a1e224cb1f94fa08161832609.gz";
    }
    {
      site = "A";
      class = "tumours";
      pdx = false;
      r1 = "K8/Gz/SHA256E-s28626032727--06a902eb12e1e9f5a2f9c78ee99a1fb7cb7d7cfdf240108f68897119f73630a6.gz/SHA256E-s28626032727--06a902eb12e1e9f5a2f9c78ee99a1fb7cb7d7cfdf240108f68897119f73630a6.gz";
      r2 = "55/q7/SHA256E-s29500803988--d523d46591a78608c72138d3c32a91385bb67f13c73042313df0c1010176e694.gz/SHA256E-s29500803988--d523d46591a78608c72138d3c32a91385bb67f13c73042313df0c1010176e694.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fM/F5/SHA256E-s7789129481--8753f3bcd7f4fdda52147299e902161b49845a05c1bbf5036c727e4b7667059a.gz/SHA256E-s7789129481--8753f3bcd7f4fdda52147299e902161b49845a05c1bbf5036c727e4b7667059a.gz";
      r2 = "zW/K1/SHA256E-s8171310047--ed1f7241fb8643e4a061d321d6f8f6fb847bbf8aa9f86f63a038e6725a315738.gz/SHA256E-s8171310047--ed1f7241fb8643e4a061d321d6f8f6fb847bbf8aa9f86f63a038e6725a315738.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.03.2023\nDiscussed WES report: Discussion: \n-KRAS mutation - BGB283 trial! Unsure if cervical is included; Clare/Damien to check\n-MoST TSO500 report done; Clare to check if this is available. \n\nClare's Meeting 09.03.2023\nReviewed FFPE Block 23H - colon mass. 20 - 25% purity, to do WES if enough DNA. \n\nClare's Meeting 22.12.2022\nDiscussed HER2 result: 2+ positive is interesting, might have low level amplification in some cells. Rachael to send HER2 report to Clare/Briony, to send to Christina\n\nEmail from Mandy 16.12.2022\nPatient has progressed, send for urgent WES.\n\nClare's Meeting 01.11.2022\nClare to email Christina RE biopsy for WGS. MoST to do TSO500.\nHER2 IHC, ISH if positive, on FFPE Block A.";
      blood_recall_history = "20Feb23: Jan23 sample requested from Hobart Pathology by Monica \n1Mar23: Jan23 sample received from Hobart Pathology by Monica ";
      date_of_death = "06/2023";
      d_case_summary = "64yo female stage IIB cervical adenocarcinoma diagnosed August 2020.\n    - Recurrent/metastatic p16-positive cervical cancer, presentation with small-bowel mesenteric nodules identified on surgery for resection of right pararectal nodule avid on posttreatment PET.\n    - Nov 2020 - carboplatin, weekly AUC2 and radiation secondary to significant hearing impairment.  Complicated by neutropenia (no infections) and thrombocytopenia. \n    - 23 November 2020 -  Brachytherapy\n    - 6 April (2020?) excision of omental deposits and right pararectal nodule. Histopathology - adenocarcinoma consistent with metastatic cervical cancer.  Immunohistochemistry positive for CK7 and p16, PAX8 negative.\n    - 1 June 2021 PET shows PD\n    - 16 June 2021- Cycle one palliative carboplatin, paclitaxel and bevacizumab  with dose reduction to 80%.\n    - 18 August 2021 three cycles of carboplatin, paclitaxel and bevacizumab showing complete metabolic remission.  \n    - 20 October 2021 with Cycle six carboplatin, paclitaxel and bevacizumab carboplatin at 50% of the dose, paclitaxel at 75% of the dose.\n    - ?date? Planned for ongoing Bevacizumab maintenance treatment.\n    - February 2021 demonstrating recurrent disease with two lesions.  \n    - Now post another 6 cycles Carbo/Pac with sign DR due to BM suppression/ cytopenias. Ongoing Bev. Good PR on PET.";
      date_consented = "2022-07-19";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Cervical adenocarcinoma, Stage IIB";
      case_details = "64F. Deceased\n\n2020-08: Dx Stage IIB cervical adenocarcinoma following cervical biopsy. Tissue fixed and blocked (Block A)\nIHC positive: p16, CEA\nIHC negative: ER, vimentin.\n\n2020-11: Completed weekly carboplatin and radiation. Commenced brachytherapy\n\n2021-02: PET scan showing lymph node in peritoneal cavity\n\n2021-04: Dx metastasis: adenocarcinoma consistent with cervical cancer. \nSurgery: Laparoscopic excision of omental deposits and right pararectal nodule. \nIHC positive: CK7, p16\nIHC negative: PAX8\n\n2021-06: Progressive disease;. PET showing pelvic and peritoneal metastases, several pulmonary metastases, possible rib and supraclavicular fossa lesions. \nChemo: 1x cycle palliative carboplatin, paclitaxel and bevacizumab; dose reduction to 80%\n\n2021-08: Post 3x cycles carboplatin, paclitaxel and bevacizumab: PET shows complete metabolic remission.\n\n2021-10: Completed carboplatin, paclitaxel and bevacizumab cycle 6.\n\n2021-11: PET demonstrating ongoing complete metabolic remission. Planned ongoing bevacizumab maintenance.\n\n2022-02: Recurrent disease.\n\n2022-03: Commenced carboplatin and paclitaxel \n\n2022-05: PET demonstrating good partial response.\n\n2022-09: Sections from Block A received.\n\n2022-10: Blood B1 received.\n\n2022-11: Block a sent for HER2 IHC & ISH:\nIHC: 2+ Equivocal\nISH: Negative.\n\n2023-01: B1 and Block A (cervical) DNA sent for WES:\nSomatic TP53, KRAS G12D, High Sig6, CCNB1IP1 himozygous deletion.\n\n2023-01: Metastasis - colon mass (Block 23H)\nIHC positive: CK7, CK20, CDX2\nIHC negative: p16\n\n2023-03: Sections from FFPE Block 23H received - colon mass.\n\n2023-06: 23H (colon met) DNA sent for WES\n\n2023-06: Deceased";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2022-08-01";
      portal_letter = "SFRC01630_PortalLetter_21Jul2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "02/09/2022: 2020 sample requested from Hobart Pathology by Devindee.\n28/09/2022: slides received from Hobart Pathology.";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01630";
  }
