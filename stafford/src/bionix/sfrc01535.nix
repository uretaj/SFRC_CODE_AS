with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "11/7g/SHA256E-s50978782264--eaa3156a3da3c38233502b93037c10b8b1d2d0c97d73b9c132701f54f78887b4.gz/SHA256E-s50978782264--eaa3156a3da3c38233502b93037c10b8b1d2d0c97d73b9c132701f54f78887b4.gz";
      r2 = "QQ/zX/SHA256E-s52378707444--15ab8e54efd05551d68f3d2588ff708cafb801599bf7e85dbff34c6d269d8e45.gz/SHA256E-s52378707444--15ab8e54efd05551d68f3d2588ff708cafb801599bf7e85dbff34c6d269d8e45.gz";
    }
    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "ZW/20/SHA256E-s75119733273--1e69b740d416d5703e0e3e88d74625d0536bf45e5ba5ab6c832587ee0b5938e6.gz/SHA256E-s75119733273--1e69b740d416d5703e0e3e88d74625d0536bf45e5ba5ab6c832587ee0b5938e6.gz";
      r2 = "zz/wk/SHA256E-s78220237408--a3e49433ac071b009134ef489111a88cef72d5ef31093e0f720c2e9f86c4fc31.gz/SHA256E-s78220237408--a3e49433ac071b009134ef489111a88cef72d5ef31093e0f720c2e9f86c4fc31.gz";
    }
    {
      site = "S3";
      class = "rna";
      pdx = false;
      r1 = "w0/k0/SHA256E-s6973444246--d2e476e5649d03563a0cc988c5fae951f04266cc5f78652f4ea0112eaf793b11.gz/SHA256E-s6973444246--d2e476e5649d03563a0cc988c5fae951f04266cc5f78652f4ea0112eaf793b11.gz";
      r2 = "8K/97/SHA256E-s6866833269--8092e6ac2585ba1108b5fb8e7ac306e2be509de40910f0155473b09be43c920f.gz/SHA256E-s6866833269--8092e6ac2585ba1108b5fb8e7ac306e2be509de40910f0155473b09be43c920f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "Sample meeting 04.04.2024\nS4 sample - confirmed that it was transplanted in mice. Nothing else to do.\n\nClare, Ratana, Rae 18.05.2023\nBROCA for Fresh tissue S3\n\nRC Meeting 02.03.2023\nDiscussed WES report: Block 2F\n-Germline BRCA1 and somatic TP53 already known. Found PMS2 LOH.\n-CN profiles look HRD\n-Potential biopsy coming soon, to do WGS and to get pt on AZD8205\n-PMS2 LOH - if we get a new biopsy, do PMS2 IHC \n-MLH1 methylation? Ask Sean (Alex Dobrovic)\n\nClare meeting 19.09.2022\nB7H4 and Cyclin E IHC results noted by Clare.\n\nRC Meeting 01.09.2022\nDiscussed WGS report (Grimmond and SFRC). Could not find TP53, somatic BRCA1, PTEN, TOP1 in SFRC data, so will come back to it.\n\nJocelyn comments 12.05.2023\nRe RC Meeting 01.09.2022: somatic variants missing in SFRC analysis due to poor coverage of regions in sequencing. CNV model estimates purity of 60% but model is poor and actual purity probably 30% or below\n\nRC meeting 05.05.2022\n2F DNA for BROCA and WES (WES not urgent, category 3, can send when WES issues resolved) \n\nRC meeting 21.04.2022\nS3: Macrodissection and send for WGS \n\nS2: Do Cyclin E on a good block. Ratana to ask Gayanie if there was desmoplastic stroma. Add to Holly's stromal project \n\nRC meeting 07.04.2022\nSubmit tissue for OCT block, WGS priority.\n\nClare and Ratana 14.03.2022\nSample needs review, to be for WGS and BROCA";
      d_case_summary = "Has a gBRCA1 mutation, HGSOC has been on PARP inhibtior for 2 years, has just progressed on PET scan. Planning to get a new biposy";
      date_consented = "2022-02-28";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC\nDx acute erythroid leukaemia Apr2024";
      case_details = "62F\n\n2018-07: Dx Stage IV HGSOC\nSurgery: Debulking. (FFPE block 2F)\nIHC positive: P53, PAX8, ber, EP4 and WT1\nER2+in 60% tumour cells\nPR 2+ in 10% tumour cells \n\n2018-07 - 2019-02: Chemotherapy, 1st line: IMAGYN carbo/pacli/bev + atezolizumab\n\n2018-08: FCC report: Germline BRCA1 mutation (Exon 11, c.3756_3759delGTCT)\n\n2019-02 - 2022-02: 1st line Olaparib maintenance (because of BRCA1). Ceased due to PD.\n\n2022-02: Recurrence.\n\n2022-02 - 2022-08: Chemotherapy: Carbopatin x6 .\n\n2022-03: Blood B1 received. Sections from FFPE block 2F received. Fresh tissue S1 - S3 received:\nBiopsy post PARPi (fresh tissue S1, 20% for the entire sample -S2, purity is 20% for the entire sample- S3 received)\n\n2022-04: S3 & B1 DNA sent for WGS: \n-Germline BRCA1 variant confirmed\n-HR deficiency\n-Somatic BRCA1 of uncertain clinical significance\n-Copy number neutral loss of heterozygosity of TP53\n-Homozygous deletion of PTEN\n-Inactivating rearrangement and loss of heterozygosity of NF1\n\n2022-06: Block 2F DNA sent for BROCA:\n-Germline BRCA1\n-FAT3 Unsure if germline or somatic\n-Somatic TP53 \n-Somatic TSC2 \n-CNV MYC - CN 5\n\n2022-08 - 2022-11: Chemotherapy: Caelyx x3, then bevacizumab.\n\n2022-09 - 2022-11: Chemotherapy: Doxorubicin\n\n2022-09: B7H4 & Cyclin E IHC on S2 sections:\nB7H4: Approx. 60% tumour cells with moderate to strong, circumferential or apical membrane po\nCyclin E: Annotation 1- +3- 10%, +2-30%, +1- 20%\nH-Score: 110\n\n2022-09: B1 and FFPE Block 2F DNA sent for WES\n-Germline BRCA1 as previously seen \n-Somatic TP53 \n-PMS2 deletion (7.6Mbp)  \n\n2023-01 - 2023-02: Chemotherapy: Bevacizumab.\n\n2023-03: Recurrence.\n\n2023-05 - current: AZD8205 trial.\n-PR in 2023-10\n-SD in 2024-01\n\n2024-03: Fresh tissue S4 (1.5L ascites) and S5 (2L ascites) received.\n\n2024-04:  Diagnosis of acute erythroid leukaemia.";
      pre_analysis_mutations = "BRCA1, Exon 11, NM_007294.3 , c.3756_3759delGTCT, NP_009225.1:p.(Ser1253Argfs*10),  Pathogenic";
      brca_report = "SFRC01535_Genetic_Test_BRCA_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "18/03/2022: July 2018 sample requested from RCH pathology by Devindee. \n23/03/2022: July 2018 slides received by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "BRCA1";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01535";
    rgSuffix = "-rerun";
  }
