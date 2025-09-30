with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          dipLogR = -0.12057429;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "z0/Xj/SHA256E-s5557284399--460d5430bbee4f8c0f41dc1c63436656a29c9ed3fc3a4f0f96a189ac3fb5a36b.gz/SHA256E-s5557284399--460d5430bbee4f8c0f41dc1c63436656a29c9ed3fc3a4f0f96a189ac3fb5a36b.gz";
      r2 = "zV/M4/SHA256E-s5854553528--d3514cf2c284c83bd1a38529727d933643878b0397bb8e0df2e2de608b2a8d03.gz/SHA256E-s5854553528--d3514cf2c284c83bd1a38529727d933643878b0397bb8e0df2e2de608b2a8d03.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "1M/wJ/SHA256E-s36732469554--22689fbe6744f23703cc4cea15a432e49107293125f1c4a5743e69ce560b15d3.gz/SHA256E-s36732469554--22689fbe6744f23703cc4cea15a432e49107293125f1c4a5743e69ce560b15d3.gz";
      r2 = "Wv/pX/SHA256E-s38257193430--bd38d6a50f9e7ab82424794ff83605c701894379db43f04df3bc154faf072a58.gz/SHA256E-s38257193430--bd38d6a50f9e7ab82424794ff83605c701894379db43f04df3bc154faf072a58.gz";
    }
    {
      site = "1.23";
      class = "tumours";
      pdx = false;
      r1 = "5J/pK/SHA256E-s19040338025--c44491255cc6794a414f725da2d0ae900d391e1128d4f6774e088f7111d2f02b.gz/SHA256E-s19040338025--c44491255cc6794a414f725da2d0ae900d391e1128d4f6774e088f7111d2f02b.gz";
      r2 = "ZW/w3/SHA256E-s19410596267--a6463282d1eaa1b2df017015be41dfdea792b54aed39d5358f2e0f16c45d5165.gz/SHA256E-s19410596267--a6463282d1eaa1b2df017015be41dfdea792b54aed39d5358f2e0f16c45d5165.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 20.07.2023\nRediscussed WES reports for FFPE Block 1.23 and OCT Block S1: Aside from LOH of TP53 there are no other events. Both samples are poor quality. Unable to make any calls. Issue report.\n\nRC Meeting 18.05.2023\nDiscussed WES report for FFPE Block 1.23\n-No CNV focal events, including search for BRCA1/2 and TP53. No somatic variants reportable.\n-Check If biopsy taken before BEACON commencement - pre-treatment biopsy (Rae emailed Briony 22.05.2023) - no biopsy taken.\n-Fresh tissue S1, which also had no TP53: Poor quality sample, possibly due to treatment. \n-FFPE Block 1.23 - post NATC, possibly poor due to treatment. Potential poor quality FFPE block. \n-Justin to review both reports for this case before proceeding. \n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1.23\n\nClare, Ratana, Rae, Briony 08.02.2023\nPt is on BEACON trial, commenced 1yr ago. WES on FFPE Block 1.23 (post chemo) following failed S1 results. This block is negative for PAX8, ER and PR. Query if HGSOC - could be clear cell? Briony to check if this patient has been referred to MoST Circuit, if so, refer to Imalki for imaging.\n\nRC Meeting 15.12.2022\nDiscussed WES report for S1 - results strange, low purity of sample might be affecting results.\n\nFor Block 1.23: ER, PR, p53, HER2, Pax8 IHC. Path review by Gayanie. Clare to ask for case pathology review with Damien. Might be something in the RAS/MAPk pathway - Matt, Jocelyn and Justin to look into. \n\nClare Meeting 19.09.2022\nReviewed FFPE block 1.23. Patient is on MoST Circuit now, wait for WES report for S1.\n\nRC Meeting 23.06.2022\n-Matt and Justin suggest no TSO500, do deep WES.\nIs a new biopsy possible? It would be ideal. Mandy to tell Dr Grossi about this, ask if they would like new biopsy, if there are any other blocks that we could use - Discuss with Briony before contacting. Need a better quality DNA sample. \n\nWGS report is not reliable on its own. Did not see TP53 mutation \n\nThere might be HRD-ness in our DNA sample. Send this for the deeper WES.  If getting other blocks (can be slides for this), can use for WES also as backup. \n\nTSO500 won't give a good HRD call. \n\nClare's meeting 16.06.2022\nCase to be discussed at WGS meeting next week (23.06.2022). Ratana to email Justin about case and see if data is good enough to check for HRD, or send for TSO500. Or even WES? \n\nClare's meeting 10.03.2022\nBriony to get a copy of the COV panel. \nSend this sample for WGS, microdissect OCT block. Make DNA a priority, if material left extraction RNA too. \nTo add to Stromal study (post MEKi). BEACON trial was for stromal tumours, but it opened up to others. Only once we get the result confirming it is stromal \nRecall 4 blocks, Ratana to organise with Devindee. \ninterested in blocks only not slides. \nblock 1: 2021-02:\tInitial diagnosis, Omental biopsy \nblock 2: 2021-05:\tSurgery\nblock 3: 2021-10:\trecurrence  \nblock 4: 2022-02, biopsy for SFRC, must be a block at PeterMAC \nHolly to write up letter for block request ";
      d_case_summary = "HGSOC, germline (COV panel)/somatic BRCA1/2 WT";
      date_consented = "2022-02-07";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, germline (COV panel)/somatic BRCA1/2 WT";
      case_details = "38 years old female \n\n2021-02:\tInitial diagnosis, Omental biopsy c/w HGSOC - germline (COV panel)/somatic \t\tBRCA1/2 WT \n\t\tIHC positive: CK7 \n\t\tIHC negative: CK20, PAX8, ER, PR and P53 \n\nAscites \nIHC positive : CK7, P16 \nIHC negative: P53, WT1, CK20, CDX2, napsin \n\n2021-02:\tNACT Carbo/Taxol x 3  \n\n2021-05:\tSurgery, TAHBSO. (FFPE Block 1.23)\n-Chemotherapy response score: 2\n-FCC report: No pathogenic variants detected.\n\n2021-07: Adjuvant carbo/taxol completed.\n\n2021-10:\tRecurrence: Platinum resistant high grade serous cancer.\n\n2021-12: Clinical trial, PMC17/213 Bevacizumab + Atezolizumab + Cobimetinib (BEACON) \n\n2022-02:\tBiopsy for SFRC (Fresh tissue S1 and blood B1 received). No formal pathology performed.\n\n2022-03: S1 & B1 DNA sent for WGS: The estimated tumour burden in this sample was low (<30%) and was insufficient for somatic variant analysis. No germline variants detected.\n\n2022-09: Sections from Block 1.23 (TAHBSO post 3x carbo/taxol) received.\nS1 DNA sent for WES:\nCN too much like \"normal\" - bad. \nNo TP53, unsure if null on IHC or WT.\n\n2022-11: PMC79319 AZD8205 2.4mg/kg Monotherapy\n\n2022-12: HER2 IHC and ISH on FFPE Block 1.23: Negative/not amplified for HER2\n\n2023-01: PAX8 and p53 IHC: PAX8 negative, p53 null - mutation type staining.\n\n2023-03: DNA from FFPE Block 1.23 sent for WES\n";
      brca_report = "SFRC01520_sBRCAPanel_09Aug2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01520_FCPanel_30Jul2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "18/07/2022: Feb and May 2021 sample blocks requested from Alfred and Austin pathology, respectively by Devindee. \n09/08/2022: Feb and May 2021 sample blocks requested with new request forms from Alfred and Austin pathology by Devindee. \n01/09/2022: May 2021 sample slides received from Austin pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = false;
    name = "SFRC01520";
    capture = CREv2;
  }
