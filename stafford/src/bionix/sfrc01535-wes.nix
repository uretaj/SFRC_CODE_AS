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
      site = "2F-Omega";
      class = "tumours";
      pdx = false;
      r1 = "QZ/f1/SHA256E-s19235294673--bf2173075dfdc521721a2d057ec23bb6d3ca77c932a38f08151d8dfd746ee6d8.gz/SHA256E-s19235294673--bf2173075dfdc521721a2d057ec23bb6d3ca77c932a38f08151d8dfd746ee6d8.gz";
      r2 = "5P/vX/SHA256E-s19246114997--ea8d7b590c2c9212924eeabd7a669c6b99514c7fcc98b4cf692fba5c60883dac.gz/SHA256E-s19246114997--ea8d7b590c2c9212924eeabd7a669c6b99514c7fcc98b4cf692fba5c60883dac.gz";
    }
    {
      site = "2F-Qiagen";
      class = "tumours";
      pdx = false;
      r1 = "KW/6V/SHA256E-s21557776832--0703e6b3babc3bd8b62a5a45f909e7c8c9e6562adc5336004b255065dcb7d9c0.gz/SHA256E-s21557776832--0703e6b3babc3bd8b62a5a45f909e7c8c9e6562adc5336004b255065dcb7d9c0.gz";
      r2 = "KJ/qZ/SHA256E-s21911061444--2edbe32fd8edd7557d6b9625c99671c9f7410cb90009b0297c06720b83677c3b.gz/SHA256E-s21911061444--2edbe32fd8edd7557d6b9625c99671c9f7410cb90009b0297c06720b83677c3b.gz";
    }
    {
      site = "2F";
      class = "tumours";
      pdx = false;
      r1 = "4g/8m/SHA256E-s16845338144--70ff4e1715bfacdcfb4bab3a8adf5d232180ef52b16a7e9f8e456c619b983a5d.gz/SHA256E-s16845338144--70ff4e1715bfacdcfb4bab3a8adf5d232180ef52b16a7e9f8e456c619b983a5d.gz";
      r2 = "Z4/P5/SHA256E-s17061505960--627e3f7e4fe56773399e377594e036cf22076e2550ec71f6fa1c9ba0c5bec602.gz/SHA256E-s17061505960--627e3f7e4fe56773399e377594e036cf22076e2550ec71f6fa1c9ba0c5bec602.gz";
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
    predictNeoantigens = false;
    name = "SFRC01535";
    capture = CREv2;
  }
