with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "j9/Zk/SHA256E-s26524037131--1f655290c5358cfa1d926d8d1b039d58097c112f46a18ba510b085447a60ad1e.gz/SHA256E-s26524037131--1f655290c5358cfa1d926d8d1b039d58097c112f46a18ba510b085447a60ad1e.gz";
      r2 = "9x/Qj/SHA256E-s26596873490--bcac6f8ecf20e3d23eeb8c86603c343e3964f179a07be49e74e5ab73eb21510b.gz/SHA256E-s26596873490--bcac6f8ecf20e3d23eeb8c86603c343e3964f179a07be49e74e5ab73eb21510b.gz";
    }
    {
      site = "2S";
      class = "tumours";
      pdx = false;
      r1 = "QG/G3/SHA256E-s23986016086--2cb7ffc6c0c88ad3d0b7a843e514f00ff631b08420b2beafd10b4b70bc793839.gz/SHA256E-s23986016086--2cb7ffc6c0c88ad3d0b7a843e514f00ff631b08420b2beafd10b4b70bc793839.gz";
      r2 = "2X/6X/SHA256E-s25014732295--a484ca6284749bd4d69712bfcae2af9382790b26c934c3dadaa18c29b768d30a.gz/SHA256E-s25014732295--a484ca6284749bd4d69712bfcae2af9382790b26c934c3dadaa18c29b768d30a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FJ/Vf/SHA256E-s6922284311--425817757bdde012e2dcbd00ce75b2830403db0e466a81417e34d5bad6adba6f.gz/SHA256E-s6922284311--425817757bdde012e2dcbd00ce75b2830403db0e466a81417e34d5bad6adba6f.gz";
      r2 = "1P/MQ/SHA256E-s7145306351--6ad16a29de38eb15b353a36f8f45dfdfbfb7f6cf4041a7a4a215b0572d76109f.gz/SHA256E-s7145306351--6ad16a29de38eb15b353a36f8f45dfdfbfb7f6cf4041a7a4a215b0572d76109f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2023.05.18\nDiscussion of Her2 ISH-IHC\nHER2 IHC: Equivocal 2+  \nHER2 ISH:   Tumour is classified as positive/amplified for HER2  \nPlan: Briony to send IHC report. \n\nClare's Meeting 19.04.2023\nDo WES on FFPE Block 3J (breast) to complete the WES already done on lymphoma and HGSEC blocks. HGSEC and lymphoma have gBRCA2 VUS; need to look into. Clare to check if a clinical germline BRCA test has been done and if not, order one. \n\nClare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block 2S\n\nRC Meeting 16.03.2023\nDiscussed WES report for Block 1A: NHL and 2S: HGSEC\nDiscussion: Clare to make summary of case.\n\nClare's meeting 19.05.2022\nDo WES on FFPE blocks 1A and 2S\nMandy organising blood \nBreast block to come - Rachael to ask Devindee to check progress.";
      d_case_summary = "Serous endometrial carcinoma\nBreast cancer\nFollicular NHL";
      date_consented = "2022-03-03";
      tumour_type = "HGSEC";
      tumour_details = "High grade Serous endometrial carcinoma, Breast Cancer, Follicular Lymphoma";
      case_details = "57F, multiple primary \n\n2015-04: Diagnosed breast cancer. Surgery: Right mastectomy and SLB (Block 3J) \nIHC: ER 70%, PR 5%, HER2 +ve \nTreatment: adjuvant chemotherapy (AC- Paclitaxel, Herceptin and Pertuzumab) and radiotherapy, followed by adjuvant tamoxifen (2016-03 - current) \n\n2021-12: Diagnosed Follicular non-hodgkin's lymphoma, confirmed on biopsy (Block 1A - inguinal lymph node biopsy) \nIHC positive: CD20, CD10, bcl-2, bcl-6 \nIHC negative: Cyclin D1, CD3, CD5 \n\n2022-01: Surgery: Endometrial curette: Poorly differentiated adenocarcinoma, favour HGSEC \nIHC positive: PAX8, p53 (strong diffuse), AE1/3, CK7, CD56 (focal patchy). \nIHC negative: CK20, p40, ER, PR, chromogranin, synaptophysin. \npMMR: preserved nuclear staining of MLH1, PMS2, MSH2, MSH6. \n\n2022-02: Diagnosed serous endometrial carcinoma, FIGO Stage 1A. (Block 2S - endomyometrium) \nSurgery: hysterectomy, BSO, sentinel node and omental biopsy (Block 2S - endomyometrium) \nIHC positive: CD20, CD10, Bcl-2, Bcl-6 \nIHC negative: Cyclin D1, CD3, CD5 \np16 immunostain on sections of the cervix: diffusely positive, consistent with high grade squamous intraepithelial lesion, seen extending into the underlying endocervical glands. \n\n2022-04: Blocks 1A (lymphoma) and 2S (HGSEC) received.   \n\n2022-06: Blood B1 received. \n\n2023-01: B1, Blocks 1A and 2S sent for WES \n1A (NHL): gBRCA2 (VUS), sTP53, CCDC6, CREBBP, \n2S (HGSEC): gBRCA2 (VUS), sTP53, PTEN, GATA1, MET, BRCA2 LOH (1,0), PPP2R1A deletion.  \n\n2023-03: Block 3J (R) Breast) received. \n---------------------------------------------------------------------------\nSerous endometrial carcinoma: FIGO Stage 1A, treated with hysterectomy, bilateral salpingo- oophorectomy, sentinel node and omental biopsy Feb 2022\n- Breast cancer: diagnosed Apr 2015: Right mastectomy and SLB, 21mm, G3 IDC, ER 70%, PR 5%, HER2 +ve. 1/2 nodes (2.5mm). Treated with adjuvant chemotherapy (AC- Paclitaxel, Herceptin and Pertuzumab) and radiotherapy, followed by adjuvant tamoxifen March 2016 - current\n- Follicular non-hodgkin's lymphoma: confirmed on biopsy December 2021";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01555_ARCPortal_ResearchOnly_11Mar2022_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "05/04/2022: samples for all 3 primaries (12/2021, 02/2022, 04/2015) requested from SSWP pathology by Devindee. \n05/04/2022: blocks from 2 primaries (2021 and 2022) received from SSWP pathology by Devindee. \n21/06/2022: 2015 sample re-requested from SSWP pathology (Concord Hospital) by Devindee. \n27Feb23: 2015 sample re-requested from SSWP pathology (Concord Hospital) by Monica\n09Mar23: 2015 sample received from SSWP pathology (Concord Hospital) by Monica\n";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01555";
    capture = CREv2;
    predictNeoantigens = true;
  }
