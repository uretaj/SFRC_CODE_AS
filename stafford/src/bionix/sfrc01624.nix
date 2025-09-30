with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "P1/63/SHA256E-s37030355534--e2cb680a4356d86cfdecce6ee99e334c7453db244321d1951241f15d5f4884b4.gz/SHA256E-s37030355534--e2cb680a4356d86cfdecce6ee99e334c7453db244321d1951241f15d5f4884b4.gz";
      r2 = "PW/m4/SHA256E-s38166031357--c2d9f3db4c956181adcf27b12e602e6dd996a4fd7a215d5c0a8370da5796657f.gz/SHA256E-s38166031357--c2d9f3db4c956181adcf27b12e602e6dd996a4fd7a215d5c0a8370da5796657f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "5z/80/SHA256E-s88965411819--875e222f23cabd063e1d3610f4a68e09bcd359f270cd8f7c242ff2ff9406eb98.gz/SHA256E-s88965411819--875e222f23cabd063e1d3610f4a68e09bcd359f270cd8f7c242ff2ff9406eb98.gz";
      r2 = "MK/9M/SHA256E-s91963258949--299fb2326e74428302433f37a790219ec10a9b778d8839dc896824e8842c6a9c.gz/SHA256E-s91963258949--299fb2326e74428302433f37a790219ec10a9b778d8839dc896824e8842c6a9c.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "0f/KW/SHA256E-s5329006940--a430f3f0a7f98266738e4389699e2d25ce5eaec1f35201aae1662b8bba713389.gz/SHA256E-s5329006940--a430f3f0a7f98266738e4389699e2d25ce5eaec1f35201aae1662b8bba713389.gz";
      r2 = "9Q/jf/SHA256E-s5224568515--c2d90b098758bb4f8c8954f4def51684dba60127040a073fbff2018837db0819.gz/SHA256E-s5224568515--c2d90b098758bb4f8c8954f4def51684dba60127040a073fbff2018837db0819.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 04.03.2023\nBROCA for Fresh tissue S1\n\nRC Meeting 02.02.2023\nDiscussed WGS report (Grimmond and SFRC).\nNo HER2 amplification detected. ??EDDD have a HER2 ADC trial (HER2 antibody conjugate).\n** in SFRC report, ERBB2 CN (5,2). Also, CCNE1 CN (10,2) (equivalent to Grimmond). \nHER2 IHC 3+ may be sufficient for trial eligibilty.\n**was issued an amended report that includes germline VHL variant likely pathogenic 26.10.2022.\nPOLE germline VUS, and not high TMB \nMatt to review - do methylation on the S1 DNA? \n\nClare's Meeting 22.12.2022\nFFPE Block A has small volume of tumour, 25 - 30% purity. have blood. WGS found germline VHL variant - was to be referred to FCC. PROF PAUL JAMES SAYS THAT THIS SOULD BE REPORTED TO FCC FOR CLARIFICATION. \n\nFor this 2013 block - Rachael to do DNA extraction, see what you get.\n\nClare's Meeting 03.11.2022\nLet clinicians know results of Cyclin E and B7H4 IHC.\n\nClare's Meeting 10.10.2022\nHave WGS data on S1 tissue, extra sequencing not required for FFPE Block 1L (taken at same time as S1 surgery)\nCyclin E and B7H4 IHC for this block (for AZD8205)\nRecall the rectal block.\n\nClare's Meeting 05.08.2022\nRatana to WGS on S1 tissue (DNA & RNA).\nCase is HER2+, of interest to Holly.";
      d_case_summary = "62 year old female with uterine carcinosarcoma dx 02Jun22 and 2013 fully resected Stage IV metastatic rectal carcinoma with a liver metastasis.\n•\t2013\n     o\tCompleted 2014 neoadjuvant chemoradiation (interrupted due to pain and a stoma formation), followed by FOLFOX, rectal surgery, liver surgery and a further 3 months of FOLFOX. \n     o\tYearly CT scans since which were clear\n  •02 Jun 22 - HBSO and left pelvic node dissection\n    o\tMELF like pattern, washings were positive and the left sentinel lymph node was negative. Right sentinel lymph node was \n    not identified. \n    o\tHER2 was IHC3  positive.\n    o\tPET scan showed no evidence of metastatic or nodal disease. \n    o\ton Efexor 150mg daily and Lactulose prn\n    o\tMultidisciplinary team was to offer her 6 cycles of Carboplatin and Paclitaxel\n";
      date_consented = "2022-07-15";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma  Also Stage IV metastatic rectal carcinoma";
      case_details = "62F\n\n2013: Diagnosed Stage IV metastatic rectal carcinoma with a liver metastasis.\n-Commenced neoadjuvant chemoradiation\n-Commenced FOLFOX (folinic acid, fluorouracil, and oxaliplatin, to treat colorectal cancer)\n-Surgery: Rectal and liver surgery. Tissue from rectal biopsy fixed and blocked (Block A)\n-Commenced a further 3 months of FOLFOX, completed in 2014.\n\n2022-06: Diagnosed endometrial carcinosarcoma, mixed endometrioid and serous\nSurgery: Hysterectomy, BSO, left pelvic node dissection. Tissue fixed and blocked (Block 1L)\n-Histopath: \n -ER: 1+ to 2+ nuclear staining in 20% tumour nuclei\n -PR: 1+ to 2+ nuclear staining in <5% tumour nuclei \n -HER2: +3 strong staining in >30% tumour cells\n -pMMR\n -p53 and p16 positive\n\n2022-07: Frozen tissue labelled 'endo' from 2022-06 surgery received in lab. \n\n2022-08: Blood B1 received\n\n2022-09: Sections from FFPE block 1L from 2022-06 surgery received.\n\n2022-12: Sections from FFPE Block A (2013 rectal biopsy) received.";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/08/2022: June 2022 sample requested from RWH pathology by Devindee.\n19/09/2022: June 2022 sample slides received from RWH pathology by Devindee.\n14/11/2022: 2022 sample requested from Dorevitch by Devindee.\n12/12/2022: 2022 slides received.";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01624";
    predictNeoantigens = true;
  }
