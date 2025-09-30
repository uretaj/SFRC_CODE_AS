with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "98/JX/SHA256E-s55820415775--c1ba480b63db17fe02ed0f7da7e7c6013a0a60138fec7962671a9168c5d29358.gz/SHA256E-s55820415775--c1ba480b63db17fe02ed0f7da7e7c6013a0a60138fec7962671a9168c5d29358.gz";
      r2 = "zf/Vx/SHA256E-s59793127647--2ce05d1ec6d88bbcaaf36e25358f468e9d161326bd054d0e7d1c56267df58fa0.gz/SHA256E-s59793127647--2ce05d1ec6d88bbcaaf36e25358f468e9d161326bd054d0e7d1c56267df58fa0.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "7X/G7/SHA256E-s95972442637--ed198067421d43056aabe49c78ec817be1643aac56b7287eb8c6c6ac589594b1.gz/SHA256E-s95972442637--ed198067421d43056aabe49c78ec817be1643aac56b7287eb8c6c6ac589594b1.gz";
      r2 = "jM/WF/SHA256E-s103139500767--5e70833cac59f0fb57654dcb5744f59501c152d2d5ddc6db4a76bdabbaf1d8e7.gz/SHA256E-s103139500767--5e70833cac59f0fb57654dcb5744f59501c152d2d5ddc6db4a76bdabbaf1d8e7.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Gv/z7/SHA256E-s4503788750--24f374174666d1a34a8732ebfe663fdec31c60c86240bf607af938dd22bbc718.gz/SHA256E-s4503788750--24f374174666d1a34a8732ebfe663fdec31c60c86240bf607af938dd22bbc718.gz";
      r2 = "02/p9/SHA256E-s4621229329--b43dd950c1bc23cff405850257d20aae1e5e8250b8bf70156fef9cc6bda0b330.gz/SHA256E-s4621229329--b43dd950c1bc23cff405850257d20aae1e5e8250b8bf70156fef9cc6bda0b330.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 18.05.2023\nBROCA for Fresh tissue S1\n\nRC meeting 23.03.2023\nDiscussed WGS report (Grimmond and SFRC).\nSFRC analysis: matches Grimmond analysis, evidence of some chromothripsis - chromosome 19 and 20 highly rearranged.\nRNA fusion of SEC14L1 and RECQL5 may be of interest. The RECQL5 might be inactivating, so may have radiation sensitivity.  \nSome DNA fusions have genes of interest: BPTF, MACROD2, MECOM.\n\nClare, Ratana, Rae, Briony 08.02.2023\nFresh tissue S1 has 70 - 75% purity but small tumour volume. Ratana to see how much DNA before attempting RNA, then submit for WGS.\n(there is Nov2022 FFPE that we can request if needed).\n\nClare's Meeting 22.12.2022\nPt has rearrangement of PMS2, previously pMMR via IHC. Have block from March 2022 surgery but minimal tissue. Clare to source new tissue - Biopsy scheduled for 05.01.2022 via Trisha RWH.";
      d_case_summary = "HGSEC and SCC Anus. Multiple primary";
      date_consented = "2022-07-27";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC, also anal SCC";
      case_details = "67F\n\nDx pre-cancerous cervical cancer age 27. \n\n2016: Dx anal cancer\n\n2016-03: Surgery: lesion - invasive squamous cell carcinoma incompletely excised.\n\n2022-02: Dx Stage 1A HGSEC via endometrial curettings\nER: 2- 3+ in 95% tumour nuclei\nPR: 1+ in 20% tumour nuclei\np53: strongly, diffusely positive (mutation phenotype)\np16: Focal block positivity \npMMR: MLH1, PMS2, MSH2, MSH6 retained.\n\n2022-03: Surgery: TAH/BSO (minimal tissue in available blocks)\np53: mutation type staining\np16: block-type positivity in foci of serous carcinoma and serous intraepithelial carcinoma\nHER2: Negative in the tumour.\n\n2022-08: Blood B1 received.\n\n2022-11: Vaginal biopsy, consistent with metastasis from HGSEC\nER: 2 - 3+ staining in 80% tumour cells\nPR: 1 - 2+ staining in <5% of tumour\np53: strong staining (mutation type)\n\n2023-01: Fresh tissue S1 (cervical biopsy) received\n";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01635_GeneTest_26Sep2022_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "09/09/2022: March 2022 sample requested from RWH pathology by Devindee. RWH path contacted Briony- minimal tissue in block. Discussed with Kristy and Holly, just to get H&E and either HER2 images or 5 thin sections for HER2.";
      mp_subgroup_sfrcp4_new_id = "2 plus 1 or more non-malignant";
      patient_germline_mutations = "PMS2";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01635";
    predictNeoantigens = true;
  }
