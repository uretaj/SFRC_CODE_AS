with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "12D";
      class = "tumours";
      pdx = false;
      r1 = "JF/g8/SHA256E-s20667066525--b9e0a08f9d610e63c108c8bb6e6d9476660dfcc1c4c282f3582d163dd1083e1b.gz/SHA256E-s20667066525--b9e0a08f9d610e63c108c8bb6e6d9476660dfcc1c4c282f3582d163dd1083e1b.gz";
      r2 = "VF/J7/SHA256E-s21006101932--f8acdf3bc3f9b18de85cd0c64c21bae09f37b7d7c74ff28471cb15c8c349b466.gz/SHA256E-s21006101932--f8acdf3bc3f9b18de85cd0c64c21bae09f37b7d7c74ff28471cb15c8c349b466.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qP/kP/SHA256E-s6782179746--747dc7ab659b8b19130aa46a13c05a37bd5c1b56fcfed4dd252ff84c225d7675.gz/SHA256E-s6782179746--747dc7ab659b8b19130aa46a13c05a37bd5c1b56fcfed4dd252ff84c225d7675.gz";
      r2 = "xz/f9/SHA256E-s7237434915--bb169ff28810c3705de6727ab60f3cd32337f99884d061ff2ac1cdf7ca501ffe.gz/SHA256E-s7237434915--bb169ff28810c3705de6727ab60f3cd32337f99884d061ff2ac1cdf7ca501ffe.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 14.04.2023\nRediscussed WES report. Germline DNA from another patient was in the script; has been removed and report is cleaner now. \n\nDiscussion: \n-Somatic HOXD11: ENST00000249504.7, c.244_246delGGC, p.Gly82del; conservative inframe deletion, 12% - To be checked if this gene is on our HDR related list.\n-Somatic CTNNB1: Other transcripts of this variant is reportable but there is no data on this one--Andrew to look into further\n-\"Intermediate\" HRD - some features. Not enough to be confident to call. Potential non-standard HRD (ie, not BRCA1 driven). Matt to look deeper into. \n-Chromosome 1 - whole arm event \n\nRC meeting 30.03.2023\nDiscussed WES report: \n-CN plot not OK - potential DNA mixup?? Could be affected by bone marrow transfusion.  \n-Potential contamination in germline results. Be cautious with these results - can't trust CN and germline. Somatic looks okay. Need to figure out what happened to germline. Matt to look into All vs All to check all germline submitted.  \n-TSO500 on same sample had low TMB  \n-Plan: Re-extract B1 and submit. STR on original B1 and FFPE Block - Matt to analyse \n\nRC meeting 02.02.2023\nDiscussed TSO500 report.\nDamien's Variant Meeting notes: \nCTTNB1 LoF variant. In 4% of ovarian sarcomas. \nNo carcinosarcoma genes TP53/ATRX/RB1.\nCatherine Mitchell - reviewed 1 slide, not helpful for diagnosis.\n??Microcystic stromal tumours: 70% have CTNNB1 variants (but usually low grade).\nFind out how patient is doing. May ask international colleagues for their opinion on tumour type.\nTSO report suggests doing RNA fusion panel.\n\nClare's meeting 17.11.2022\nDiscussion at Portal meeting didn't happen, patient is progressing, so was submitted for TSO500 today.\n\nClare's Meeting 01.11.2022\nCase to be discussed at next Portal meeting--prognosis and urgency RE TSO500 vs WES for Block 12D.\n\nClare, Ratana, Mandy, Rachael 13.10.2022\nFFPE Block 12D for urgent review and sequencing if possible. Is an ARC Portal case; get letters.";
      d_case_summary = "Initial report suggested ovarian sarcoma but review by expert in WA has suggested STK11 adnexal tumour (in a group with sertoli-leydig tumours).  STK-11 mutation testing is underway";
      date_consented = "2021-12-02";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "STK11 adnexal tumour (query?)";
      case_details = "64F\n\n2021-11:  Dx potential STK11 adenexal tumour (STK11 mutation testing underway) (initially Stage IIIC endometrioid adenocarcinoma of the ovary)\nSurgery: Debulking with bowel resection - Block 12D\nIHC positive: B-catenin, P16, PAX8, synaptophysin, chromogranin, NSE, INI-1, CD99, FLI1\nIHC negative: ER, PR, AE1/3, MNF116, CAM5.2, WT-1, Calretinin, inhibin, SF-1, GATA3, \np53 wild type\nFOXL2 C134W variant not detected\nBCOR staining fails to show overexpression\nBRG1 staining retained\nFISH for EWSR and SYT disruptions negative.\n\n2022-04: Completed Carboplatin/paclitaxel x6 cycles.\n\n2022-10: Sections from FFPE Block 12D received.\n\n2022-11: Progressive disease via CT scan. New and progressive pulmonary nodules, liver and omental lesions. \n\n2022-11: Sections from FFPE Block 12D sent for TSO500: CTNNB1.\n\n2022-12: Blood B1 received.\n\n2023-01: Chemotherapy: Bevacizumab.\n\n2023-02: PET scan: Partial structural response to therapy.\n\n2023-02: Sections from FFPE Block 12D sent for TruSight RNA Fusion Panel (TSF) - No diagnostically significant fusion detected.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01518_ARCPortalReport_02Dec2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "03/02/2022: Oct 2021 sample tissue requested from Mater Pathology by Devindee. \n20/09/2022: 2021 sample re-requested from Mater Pathology (via fax) by Devindee.\n03/10/2022: 2021 sample received. \n\n";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01518";
  }
