with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7W/M5/SHA256E-s52652490704--0fec3e3bceaa3abad856dece8baed0024ed8437c936e44d679df956f8d20059b.gz/SHA256E-s52652490704--0fec3e3bceaa3abad856dece8baed0024ed8437c936e44d679df956f8d20059b.gz";
      r2 = "1Z/pw/SHA256E-s57232615579--58d60c3257725e3a2c508993abbbfc5706b46c45269b79eadf02afd8183c8886.gz/SHA256E-s57232615579--58d60c3257725e3a2c508993abbbfc5706b46c45269b79eadf02afd8183c8886.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "G6/mK/SHA256E-s52790525515--59a181edcdd76dc8d13f5da2b412a2110c61f5dbd8f4447461050c76cdf0eb94.gz/SHA256E-s52790525515--59a181edcdd76dc8d13f5da2b412a2110c61f5dbd8f4447461050c76cdf0eb94.gz";
      r2 = "M3/q9/SHA256E-s57421605464--6a108552c26814f8c6702b299bd9cff75ea96ccae672cd6f9b319b702b941b25.gz/SHA256E-s57421605464--6a108552c26814f8c6702b299bd9cff75ea96ccae672cd6f9b319b702b941b25.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "xp/zF/SHA256E-s50661508747--33a96fcfeb3466cbef6af4c20b880d463d47e0eadfc0a5b519ee6a5bacf9a54a.gz/SHA256E-s50661508747--33a96fcfeb3466cbef6af4c20b880d463d47e0eadfc0a5b519ee6a5bacf9a54a.gz";
      r2 = "F4/4g/SHA256E-s54866776644--1a8e2a78dd261a9fe33f5efef5fb2216c6d7dec74f6455c5b78225f4ed4a0091.gz/SHA256E-s54866776644--1a8e2a78dd261a9fe33f5efef5fb2216c6d7dec74f6455c5b78225f4ed4a0091.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "1m/fz/SHA256E-s5670356053--e336353b48e8fcf17cafe79de8b554a9c7a38d41f890765a101e9e052f4a09b7.gz/SHA256E-s5670356053--e336353b48e8fcf17cafe79de8b554a9c7a38d41f890765a101e9e052f4a09b7.gz";
      r2 = "6v/qM/SHA256E-s5584274872--37208180d88a7c2aa0f7bfed82d79c6cce00595bb015b1b97e424eb1a20d1729.gz/SHA256E-s5584274872--37208180d88a7c2aa0f7bfed82d79c6cce00595bb015b1b97e424eb1a20d1729.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 02.11.2023\nDiscussed WGS report with SFRC data.\n\nSample meeting 2023.08.11 \nPlan on fresh tissue S1: Went into mice, c-myc IHC pending \nPLEASE SEND FOR WGS ON END OF THE OCT BLOCK.\nFFPE block 1G on the BROCA list, should we add Fresh tissue S1? \nTRYING TO CUT DOWN ON BROCA SO JUST THE FFPE BLOCK 1G IS FINE, THANK YOU \n\n \nClare's meeting 2023.05.18\nDiscussed c-myc staining\nPlan: looks like the staining did not work, liaise with histology to get it redone for free.  \nWhat control was used? I think the staining did work - maybe could be stronger (I like strong) but there are positive cells in the control, although might not be the best control as Gayanie says -  thanks CASS \n\nClare's Meeting 20.04.2023\nReviewed Cyclin E and B7H4 IHC. Results noted by Clare. Hoping for fresh tissue in future (PDX to get AZD8205 + ATRi +/ WEE1 - wish list) \n\nClare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block 1G\n\nRC Meeting 16.03.2023\nDiscussed WES report\n-Looks HRD but unsure what is causing it - gBRCA/sBRCA WT, no methylation.\n-Pt has recently progressed - low volume recurrence. Is being screened for AZD8205.  \n-LZTR1 - BGB-283 trial-potentially eligible for screening; Damien to double check variant.  \n-B7H4 and Cyclin E submitted (CCNE1 4 copies)  \n-Look into germline ARID1A (not FCC gene - Matt will look into) \n-Potential methylation loss?? \n-Do c-MYC IHC \n\nClare's Meeting 05.08.2022\nWES on FFPE block 1G. Rachael to check with Cass if Myriad HRD testing has been performed.";
      myriad_report = "SFRC01596_MyriadResult_02Nov2022_75_Redacted.pdf";
      d_case_summary = "HGSOC g/s BRCA1/2 WT";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "64 yo female \n\n2018-01: Diagnosed HGSOC \n optimal debulking surgery \n-Commenced carbo/taxol x6, with dose reduction from C5 for myelosuppression \n-Histopath on right tube and ovary (Block 1G) \n-IHC positive: CA125, CK7, p53, PAX8, WT1 (focal),  \n  ER (moderate +2 in 20% tumour nuclei), PR (strong  \n  +3 nuclear positivity in 30% tumour nuclei) \n-IHC negative: CK20  \n\n2018-02: \tBRCA1/2 tissue testing report: No pathogenic variants detected. \nMyriad, GIS Score 75. NEGATIVE for BRCA1/2 mutations. ATM VUS. \n\n2018-03: Familial cancer panel report: No mutations detected. \n\n2021-10: PET scan discovered 2 splenic lesions and Right Iliac Fossa lesion \n-Laproscopy, biopsy: peritoneal disease \n-Commenced carbo/caylex, to be followed by niraparib pending repsonse (ineligible for ICON-9 given oesophageal dilatation on imaging) \n\n2021-11/2022-03: CALYPSO (Doxo, carboplatin)\n\n2022-06: Commenced niraparib \n\n2022-07: Blood B1 received. Sections from Block 1G (right ovary from 2018-01) received. \n\n2022-09: B1 and Block 1G DNA sent for WES. \nLooks HRD but unsure what is causing it - gBRCA/sBRCA WT, no methylation. \n-Pt has recently progressed - low volume recurrence. Is being screened for AZD8205.   \n-LZTR1 - BGB-283 trial-potentially eligible for screening; Damien to double check variant.   \n-B7H4 and Cyclin E submitted (CCNE1 4 copies)   \n-Look into germline ARID1A (not FCC gene - Matt will look into)  \n-Potential methylation loss??  \n-Do c-MYC IHC \n\n2023-01: 1G DNA sent for methylation: BRCA1 and RAD51C unmethylated. \n\n2023-03: cyclin E, B7H4, c-Myc staining requested in house  \n\n2023-07: peritoneal nodule biopsy (Fresh tissue S1, received)\n\n2023-08: PMC79319 AZD8205 Monotherapy \n\n2023-09: Commencted carboplatin/gemcitabine, ceased 2023-11.\n\n2023-11: Progressive disease. \n\n2023-12: Commenced paclitaxel + bevacizumab";
      brca_report = "SFRC01596_SomaticBRCAGeneTest_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 75";
      fcc_report = "SFRC01596_Germline_Genetic_Test_05Mar18_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "21/06/2022: Feb 2018 tissue requested from RWH pathology by Devindee. \n07/07/2022: Feb 2018 slides received from RWH pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01596";
  }
