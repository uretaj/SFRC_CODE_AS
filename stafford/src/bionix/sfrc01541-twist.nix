with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "7P/xw/SHA256E-s46161211240--2ad7a3b2b1483e53bf8cd9df4a06c28edc5b93d66e3736f195e89d96b8ed28a8.gz/SHA256E-s46161211240--2ad7a3b2b1483e53bf8cd9df4a06c28edc5b93d66e3736f195e89d96b8ed28a8.gz";
      r2 = "kv/52/SHA256E-s47541269585--a1b1718da499ebc2703384953d8bc92686a4d2d16e4413b3d0313722d2c3cece.gz/SHA256E-s47541269585--a1b1718da499ebc2703384953d8bc92686a4d2d16e4413b3d0313722d2c3cece.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Jj/Qf/SHA256E-s5496130196--1b89658ed03dba19ca23197a39bf169bbe5ed0b51ba38d64c604e2af05b358bd.gz/SHA256E-s5496130196--1b89658ed03dba19ca23197a39bf169bbe5ed0b51ba38d64c604e2af05b358bd.gz";
      r2 = "zZ/qg/SHA256E-s5494205071--c337a600105442efaae0bfce08bcd8baee170987760cfd369514f3d838e98700.gz/SHA256E-s5494205071--c337a600105442efaae0bfce08bcd8baee170987760cfd369514f3d838e98700.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "pk/QW/SHA256E-s5609136887--dc1cc62b305dd24d421f0260f763b46782d188cb074aa42fd71483220755a975.gz/SHA256E-s5609136887--dc1cc62b305dd24d421f0260f763b46782d188cb074aa42fd71483220755a975.gz";
      r2 = "9G/Pf/SHA256E-s5615494279--9d5af9edd5bd204c7b9400bb8e710ac3315927ac0db331097a6314d4b15ebf94.gz/SHA256E-s5615494279--9d5af9edd5bd204c7b9400bb8e710ac3315927ac0db331097a6314d4b15ebf94.gz";
    }
    {
      site = "S1_T1_23569";
      class = "tumours";
      pdx = true;
      r1 = "6V/P2/SHA256E-s2691737591--39aa08ba06bcb8d38eea970a4d4c33e38597884374c0be6e7700191a29ba2f52.gz/SHA256E-s2691737591--39aa08ba06bcb8d38eea970a4d4c33e38597884374c0be6e7700191a29ba2f52.gz";
      r2 = "81/MZ/SHA256E-s2719188304--c07f2ca41d59817d83542b5b6758f37e7476eb83ffd0de405c0cd87c7411559d.gz/SHA256E-s2719188304--c07f2ca41d59817d83542b5b6758f37e7476eb83ffd0de405c0cd87c7411559d.gz";
    }
    {
      site = "S1_T1_23569";
      class = "tumours";
      pdx = true;
      r1 = "g8/ZQ/SHA256E-s2669996917--86587709cd7e001c11c1ed16df25721ee5a1e899c0c6b907fff399c7ab555aad.gz/SHA256E-s2669996917--86587709cd7e001c11c1ed16df25721ee5a1e899c0c6b907fff399c7ab555aad.gz";
      r2 = "Vg/kK/SHA256E-s2701820458--625a1651764e1edc4d2ae9deeb9c9ee3676ce0904e9b00c91d486476650850b9.gz/SHA256E-s2701820458--625a1651764e1edc4d2ae9deeb9c9ee3676ce0904e9b00c91d486476650850b9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC Meeting 16.11.2023\nWES Discussion:\n- No reportable germline variants\n- HRD (48) is likely - can be published as research findings but not reportable to patient \n- CN plots - stepping, LOH and other features of HRD  \n- Somatic: TP53 (+LOH), ERBB3 (both same as previous analysis) \n- CNV -  no striking focal events \n\nClare's Meeting 20.04.2023\nReviewed S2 tissue: OCT is 20-40% in small areas, FFPE is 60%, entirely tumour. Do WES on S2 block (favoured) but check with Holly if she would like WES or WGS done. Do BROCA on S2 FFPE also. Briony to get letters for treatment in the time between our samples. Want to know if targeted therapy was accessed.\n\nClare, Ratana, Rae 04.03.2023\nBROCA for Fresh tissue S1\n\nRC Meeting 21.07.2022\nDiscussed WGS report (Grimmond and SFRC).\nDiscussion: Have unconfirmed PDX \nGermline BRIP1 is benign \nTP53 missed again in SFRC report. \nMAP3K6 0.42AF \nMay be a quality issue with sample. \n\nRare cancer 21/04/2022\nOCT tissue S1 for WGS";
      d_case_summary = "HGSEC";
      date_consented = "2022-03-07";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC  Has had breast cancer";
      case_details = "66yo woman, history of high grade serous carcinoma of endometrium. \n\n2007: right side breast cancer, resection and adjuvant radiotherapy. \n\n2020-12: noted calcification in left breast, waiting to finish treatment of endometrial cancer. \n\n2020-11: total hysterectomy and BSO \nDiagnosed with high grade serous endometrial carcinoma, stage 1A. \nIHC positive: PMS2, MLH1, MSH2, MSH6, p53, p16. Oestrogen receptor shows 1% tumour nuclei show 2+ nuclear staining. Progesterone receptor shows 5% tumour nuclei show 2+ nuclear staining.  \nIHC negative: HER2 \n\n2021-01: Commenced adjuvant PORTEC style chemoradiation with Cisplatin followed by four cycles of chemo. Vaginal biopsy \nTSO 500 (MoST): CCNE copy number gain (7 copy), ERB3, TP53, TMB low, MSI stable. Reported May 2022, sample tested was collected 28/01/2022 \n\n2022-02: diagnosed with recurrence of high grade serious carcinoma. Mismatch IHC normal pattern \n\n2022-03-: Blood B1 received. Tissue S1 (7/03/22) from vaginal biopsy received. \n\n2022-04: WGS on S1 \nTumour mutational burden is low (< 10 mutations / Mb). \n- Activating mutation of uncertain clinical significance in ERBB3 detected. \n- Mutation of uncertain clinical significance and copy number neutral loss of heterozygosity TP53 detected. \n- Inactivating mutation of uncertain clinical significance in CHD4 detected. \n- Amplification of CCNE1 detected. Whole transcriptome sequencing demonstrated high expression (99th percentile when compared to the TCGA UCEC cohort). Refer to 'Potential Clinical Trials' below. \n\nReport discussion RC meeting: Germline BRIP1 is benign, MAP3K6 0.42AF, May be a quality issue with sample. \n\n2022-07: Familial Cancer Panel, PeterMac (ATM*, BRCA1, BRCA2, CHEK2*, PALB2, RAD51C, RAD51D, TP53. *Class 4 and Class5 only) No pathogenic variants were detected. \nPDX T1 sent for profiling, Gayanie's PDX review: both PDX and patient sample are similar - morphologically and immunohistochemically. +ve for CK, Mutation type p53 +vity, p16 + and -ve for CD45. PAX 8 is weakly +ve in both., Ki-60%in PDX and 20% in patient sample. Focal WT-1 + in both. \n\n2022-09: Organoids, Human v murine PCR= human, No STR or sequencing, IHC: Pax8, panCK, ki67, p53, staining comparable to patient sample \n\n2023-03-16: fresh tissue S2: Surgery (vaginal mass) \nIHC positive: CK7, PAX8, diffuse strong P53 \nIHC negative: CK20, napsin A, Her2 \nER weak to moderate in 80% of the cells, PR weak ";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01541_FamilialCancerPanel_12Sep2022_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01541";
  }
