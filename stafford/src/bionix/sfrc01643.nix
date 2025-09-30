with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M8/Zf/SHA256E-s47929913279--e4ad8dddee84e0c976ebab8814680899c067d0925042b5db703ab26cf373e224.gz/SHA256E-s47929913279--e4ad8dddee84e0c976ebab8814680899c067d0925042b5db703ab26cf373e224.gz";
      r2 = "2Q/Kj/SHA256E-s51020269498--3bb2df45bfb0dc81e2a0b17c20a0be79b96a88833821231704efc8e0e3e62221.gz/SHA256E-s51020269498--3bb2df45bfb0dc81e2a0b17c20a0be79b96a88833821231704efc8e0e3e62221.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "pq/9P/SHA256E-s91967469237--8d6bfe377ef98b57da1070b81cfa7db23fd818180bf5ee43811ed5819a9770ae.gz/SHA256E-s91967469237--8d6bfe377ef98b57da1070b81cfa7db23fd818180bf5ee43811ed5819a9770ae.gz";
      r2 = "10/Pj/SHA256E-s97806682080--8d531ffbc95842937b3d3da6defeac1f97b0a383a69c11fce0141333d6c83a3a.gz/SHA256E-s97806682080--8d531ffbc95842937b3d3da6defeac1f97b0a383a69c11fce0141333d6c83a3a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's Meeting 23.03.2023\n-FFPE block A2 is from same surgery as S1 - for B7H4 and Cyclin E IHC.\n-2 primary case - Kristy to investigate.\n\nRC Meeting 08.12.2022\nDiscussed WGS report with SFRC data.\nOnly other HGSOC case MSI-hi was 01022 (PALB2 reversion). \nCN plots over fragmented.\nBRCA2 deletion too big to be called in germline table. Shown as LOH in CN, but not reliable. \n\nClare Meeting 03.10.2022\nOnly have 170 ng DNA from OCT, no other available tissue. Bring up at next bioinf meeting to ask what to do with it. There is time for the patient.\n\nClare Meeting 19.09.2022\nMicrodissect the OCT for WGS, RNA if possible.";
      d_case_summary = "71 y female with Ovarian HGSOC recurrent PSR, BRCA2 germline carrier, Breast cancer in 1993, multifocal, likely TNBC, LN neg\n\n31st Aug 22 - To start carboplatin and caelyx (still has PN in feet from previous chemo)";
      date_consented = "2022-08-22";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "72F\n\n1993: Dx breast cancer\n-Multifocal, likely TBNC, LN negative\n-Surgery, adjuvant chemotherapy\n\n2016-09: Germline BRCA test: BRCA2 deletion of exon 3 detected\nBRCA2 c.[68-?_316+?del];[=]\n\n2017: Dx serous papillary carcinoma of the ovary, Stage 1B\nSurgery: RRSO\nIHC positive: p53 (foci)\n\n2020-10: Dx HGSOC\n\n2022-08: Recurrence HGSOC\nSurgery: Biopsy omental tumour. Fresh tissue S1 received. Blood B1 received. FFPE Block A2\nIHC positive: CK7, WT1, p16, p53 (diffuse strong nuclear), PAX8, ER (focal), PR (weak)\nIHC negative: TTF-1, CDX-2, CK20\nKi67: 40 - 50%\n\n2022-08 - 2023-02: Chemotherapy: Doxorubicin/carboplatin\n\n2022-10: B1 and S1 DNA sent for WGS: \n-germline BRCA1, TP53 VUS.\n\n2022-11: CTCAP: resolution of ascites, reduction in omental/peritoneal/serosal disease\n\n2022-03: FFPE Block A2 (Supraumbilical core biopsy) received. ";
      brca_report = "SFRC01643_BRCA_20Sep2016_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "17/10/2022: Aug 2022 sample requested from PMC pathology by Devindee. \n09/01/2023: request not received by PMCC so re-requested.\n01Mar23: re-requested Aug 2022 sample from PMCC by Monica \n01Mar23: received Aug 2022 sample from PMCC by Monica ";
      patient_germline_mutations = "BRCA2";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01643";
  }
