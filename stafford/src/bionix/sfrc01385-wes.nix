with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "qM/G8/SHA256E-s18226718862--274bb807d4bef26075ca0ca7ebfb769f831583c57b77eaa387d8529e90d79cdf.gz/SHA256E-s18226718862--274bb807d4bef26075ca0ca7ebfb769f831583c57b77eaa387d8529e90d79cdf.gz";
      r2 = "27/q0/SHA256E-s18501231909--030612e8dcc56e83f6d718537540ca03de8451ef783b25dd8a9a222482c20017.gz/SHA256E-s18501231909--030612e8dcc56e83f6d718537540ca03de8451ef783b25dd8a9a222482c20017.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Xm/J4/SHA256E-s5243444576--a161d04d31f46f69188033f8c49961fa9fdf9ba6d7be5e2873fa056e7894236c.gz/SHA256E-s5243444576--a161d04d31f46f69188033f8c49961fa9fdf9ba6d7be5e2873fa056e7894236c.gz";
      r2 = "zX/m3/SHA256E-s5600140997--c7585709b687e66db8b6ff5113cec204abad1280c199acec55d6c0cb3bbaee96.gz/SHA256E-s5600140997--c7585709b687e66db8b6ff5113cec204abad1280c199acec55d6c0cb3bbaee96.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 25.05.2023\nDiscussed WGS report with SFRC data.\n\nClare, Ratana, Rae 18.05.2023\nBROCA for Fresh tissue S1\n\nClare, Ratana, Rae, Briony 08.02.2023\nS1 has 50% tumour purity. For WGS.\n\nBroca meeting Clare/Rachael/Amandine 07.04.2022\nCannot be sent for Broca as tumour purity too low, nothing to do \n\nClare's meeting 20.12.2021\nDo WES on the best block. Also BROCA \nIn the meantime, get the Portal letter, let Kristy know, need the appendiceal NET block. Warren/ Briony/Kristy emailed 07.01.2022\n\nBROCA meeting with Clare 04.11.2021\nWarren/Briony  to upload portal letter to Redcap and double check if this is really a HGSOC, it seems more like a clear cell. If so Redcap tumour type and project to be updated. \nWarren to recall a block from 2017 resection and organise BROCA";
      d_case_summary = "Ovarian clear cell carcinoma, also appendiceal NET.\nEnrolled in INOVATe";
      date_consented = "2021-03-15";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell ovarian carcinoma, also appendiceal NET";
      case_details = "2017-02: Initial diagnosis- Clear cell ovarian cancer (high grade) Neuroendocrine appediceal neoplasm, FIGO stage IIIC\n\n2017-02 - 2017-04: Carboplatin and Paclitaxel\n\n2017-03 BRCA testing on blood: \nBRCA, NM_007294.3, exon 18, c.5117G>C, likely neutral \n\n2017-05: Surgery, BSO, debulking\nIHC positive: Pax 8, synaptophysin, weakly positive for chromogranin, Napsin A\nIHC negative: calretinin, WT1, ER, PR\nKI67 positive in <1% tumour nuclei \npMMR: No loss of staining with MLH1, PMS2, MSH2 and MSH6\nFocal mucin  amplification on PAS/diastase in 30% tumour cells.\nTissue fixed and blocked: Blocks 3A and 3B\n\n\n2017-06_2017-07: Carboplatin and Paclitaxel\n\n2017-06_2017-10: Bevacizumab\n\n2020-02_2020-04: Durvalumab (PD) \n\n2020-04_2020-07: Carboplatin and Caelyx x 3\n(PD)\n\n2020-05 INOVATe, on liver biopsy from 2020-02 (34% tumour purity)\nATM. NM_000051.3, c.1158delG p, 27.1%, likely oncogenic. sATM mutation HRD deficient\nHR deficient (HRD score = 24.33)\nNo gain or amplification of CCNE1\n\n2020-07: Pembrolizumab and Lenvatinib (PR)\n\n2021-05: RT to liver metastasis\n\n2021-06: Blood B1 received \n\n2021-12: FFPE Blocks 3A and 3B from 2017 BSO received. 3B  (purity  within circle-40%,Purity for entire sample-15-20 %) and block 3A (purity  within circle 30-%. Purity for entire sample-20 %)\n\n2022-01: DNA from 3B and B1 sent for WES: \nThis will be reported as failed as the tumour purity is too low to make any confident calls.\n\n2022-02: Continuing on Pembrolizumab and Lenvatinib\n\n2022-06: DNA from 3B sent for BROCA: \nATM - deletion-insertion, c.1158del, p.K387fs, 30.6%\n*Poor coverage; reported pathogenic germline mutation on ClinVar. https://www.ncbi.nlm.nih.gov/clinvar/variation/141887/\n\n2022-12: Fresh tissue S1 received - left cervical lymph node (OCT 50% purity in circled areas, FFPE 60-65% in circled area).\nIHC HER2 2+, FISH recommended (not performed as only needed IHC result to qualify for a trial)\n";
      pre_analysis_mutations = "2017-03 BRCA testing on blood \nBRCA1, NM_007294.3, exon 18, c.5117G>C, likely neutral \n\n2020-05 INOVATe, on liver biopsy from 2020-02 (34% tumour purity)\nATM. NM_000051.3, c.1158delG p, 27.1%, likely oncogenic \nHR deficient (HRD score = 24.33)\nNo gain or amplification of CCNE1\n\nsATM mutation HRD deficient";
      brca_report = "SFRC01385_BRCA_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "ATM";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2017 sample blocks received by Devindee 07/12/2021.";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_germline_mutations = "BRCA1 (vus)";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01385";
  }
