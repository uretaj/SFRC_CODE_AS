with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "kW/1w/SHA256E-s19598828010--d2db030c37687fe1c38e4c89c23176dd90499a14f8d7f53cbad61c1235f21ce7.gz/SHA256E-s19598828010--d2db030c37687fe1c38e4c89c23176dd90499a14f8d7f53cbad61c1235f21ce7.gz";
      r2 = "Q5/zF/SHA256E-s21166677414--7609ba65167fd44054bcebdd922238657194fc85353e7a85a37db2c6fbd1f759.gz/SHA256E-s21166677414--7609ba65167fd44054bcebdd922238657194fc85353e7a85a37db2c6fbd1f759.gz";
    }
    {
      site = "B2";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "1M/pQ/SHA256E-s26307186635--9a72b90eb780c65480684e48acf2f85bb2096e72b02b8fe6e7dcf8563ca0e357.gz/SHA256E-s26307186635--9a72b90eb780c65480684e48acf2f85bb2096e72b02b8fe6e7dcf8563ca0e357.gz";
      r2 = "WM/XX/SHA256E-s28127961612--be4a95414304ba9f28e219f77e657f9b4bdd8b1ac84cca0a615545ff9a9e5377.gz/SHA256E-s28127961612--be4a95414304ba9f28e219f77e657f9b4bdd8b1ac84cca0a615545ff9a9e5377.gz";
    }
    {
      site = "S1_T1_361";
      class = "tumours";
      pdx = true;
      r1 = "mj/JK/SHA256E-s974623723--0f2642b83889e77f76d5d3dd78a0604e8721e8dfd528bb2b1476a39e0be92ace.gz/SHA256E-s974623723--0f2642b83889e77f76d5d3dd78a0604e8721e8dfd528bb2b1476a39e0be92ace.gz";
      r2 = "1J/PZ/SHA256E-s1008982041--c08e1608f2ae54ea85a6a043ef3805fd30b45e7bd250e11eebaeeb1a082db844.gz/SHA256E-s1008982041--c08e1608f2ae54ea85a6a043ef3805fd30b45e7bd250e11eebaeeb1a082db844.gz";
    }
    {
      site = "S1_T1_361";
      class = "tumours";
      pdx = true;
      r1 = "pp/VX/SHA256E-s982223357--f4785f9788232c003c5ce6716712c4bcb89ffc90509047df4bb2a42eddb1863c.gz/SHA256E-s982223357--f4785f9788232c003c5ce6716712c4bcb89ffc90509047df4bb2a42eddb1863c.gz";
      r2 = "Xw/G6/SHA256E-s1016707808--3b0abf94b52465cbd1c064f66900f7d809e004c237d2697b63619c47aa9040a1.gz/SHA256E-s1016707808--3b0abf94b52465cbd1c064f66900f7d809e004c237d2697b63619c47aa9040a1.gz";
    }
    {
      site = "S1_T1_361";
      class = "tumours";
      pdx = true;
      r1 = "Pw/Mp/SHA256E-s1126087468--684a293b49e0742d44b67feedbd6feba7130c9d02972571c04ba092c7aa6349d.gz/SHA256E-s1126087468--684a293b49e0742d44b67feedbd6feba7130c9d02972571c04ba092c7aa6349d.gz";
      r2 = "J9/kf/SHA256E-s1171259131--7289a68aae7dd46e4b4fda86de8d3bdddfccf7c67175392ffead88b2841dabb2.gz/SHA256E-s1171259131--7289a68aae7dd46e4b4fda86de8d3bdddfccf7c67175392ffead88b2841dabb2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's sample meeting 24.08.2023\nDiscuss Gayanie IHC review\nB7H4: approx. 10% \ncyclin E: +3-0, +2- 5%, +1-15% \nPlan: Email to Matt and Tony to follow up on the WGS sequencing. Would you like us to do anything with these results? \n\nCS about to start PARPi maintenance in next 2 months. \nThese results wont change that but good to sort out how understanding of the case for the Myriad manuscript - Franziska and kas \n\nCS clinic notes 29/8/23 \n\nContinue with cycle 6 carbo/caelyx  \n\nTo have bloods and CTCAP on 19/9/23 including SFRCP bloods  \n\nIf FBE ok then re-start splenectomy vaccinations - should take 2 weeks  \nThen see me at 4 weeks - plan to start maintenance olaparib on PBS (BRCA2 mutation) at 8 weeks post chemo  \nDiscussed olaparib today and emailed the EviQ information sheet to Galit  \nReview 4 weeks \n\nAlso I need to refer to FCC re the MSH2 and MSH6 germline mutations - need a report for this. Where are we up to with the WGS report? \n\n25.08.2023\nfollow up email to Matt and Tony regarding the WGS discussion, pending answer\n\nRC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nHigh tumour purity, but CN plot is completely wrong. Very segmented. Does look HRD, but check with Matt. Looks very strange, to follow up with Tony.  \nPatient is on PARPi, but she might progress quickly. TOPO1 inhibitor-ADC? \nPossible PDX (to be confirmed). Liz to keep in mind (weird signatures) possible ATR inhibitors. \n\nClare's sample meeting 29.06.2023\nPlan fore block 2C and 2D: nothing to do on those 2 blocks for now \nTo do IHC: Cyclin E, B7H4 and FRA (Cass to explore) \n\nFontana is a new trial (AZD5305 + AZD5335) \n\nClare's Meeting 19.04.2023\nDiscussed reviewed S1 tissue: Spleen recurrence sample 1 year after finishing Bev. Do WGS on this sample--entirely tumour, 60-70% purity. The Myriad score is just above the 42 cut off. Sample is pre-PARPi. Patient has started PARPi end March 2023. For BRIP1 project.\n\nBROCA meeting 21.01.2022\nExtract DNA, send for BROCA and WES. Ask Ratana if we can get some DNA back from the TSO 500. \nBriony/Mandy to check if p53 IHC has been done. If not please organise and has this case gone for Myriad?\n\nRC Meeting 2021.09.30\nDiscussed TSO500 report.\nTSO500 can detect amplifications of CCNE1, was not amplified here. \nWait for recurrence for new tissue.\nWant to determine platinum response .\nMSH2 not likely to be functional.\n\nMeeting with Clare 2021.09.24\nSFRC01436_2A: Cyclin E strong, +3 cytoplasmic positivity in 60% tumour cells. Clare to report to clinician.\n\nSample submitted for TSO500 2021.08.31.\n\nClare's meeting 2021.08.26\nSFRC01436_2A: Low purity, already know about BRIP1, this block after 3 cycles of treatment only. Is on maintenance Bev, not on PARPi. \nIf she relapses, can get biopsy then.   \nDo Cycle E IHC.  \nRatana - send thin sections for TSO500 - email first about the tumour area. Want CNV and TP53, fusions may not be important. ";
      myriad_report = "SFRC01436_MyriadResult_5Jan22_Redacted.pdf";
      d_case_summary = "Metastatic High Grade Serous Ovarian Carcinoma - (Stage IV due to infiltration of rectal sheath)\nBRIP1 Mutant (C5: pathogenic) / MSH2/MSH6 variant (C3:unknown pathogenicity) \n\nLaproscopy 9/9 March Trisha to get bloods";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC\npossibly carcinosarcoma now";
      case_details = "65F; Stage IV HGSOC \n\n2020-08: \tDx HGSC of FGT origin  \nSurgery: Biopsy R iliac fossa lymph node  \nIHC positive: AE1/AE3, P53, CK7 (focal), PAX8 (patchy)  \nIHC negative: CK20, p40, CD56, synaptophysin and WT1.   \n\n2020-09 -/2020-10: \tChemotherapy; Carboplatin/Paclitaxel x 3   \n\n2020-11: \tSurgery: Interval debulk (FFPE Block 2A received - omentum), in house IHC Cyclin E, strong. \nMultiple deposits of high grade serous carcinoma of ovaries. Omentum- HGSC. CRS 2. \tInactive endometrium. Necrotic tumor  \n\n2020-12 /2021-01: \tChemotherapy: Carboplatin/Paclitaxel x 3 cycles. Maintenance bevacizumab added from \t\tcycle 5 / considered stage IV as infiltration of rectal sheath. Planned to have 18 cycles.  \n\n2021-07: \tBlood B1 received  \n\n2021-08: \tBlock 2A DNA sent for TSO500 (pathologist said only 15% TP, but we went ahead)  \nTier 1- BRCA2 (vaf 2.9%)  \nTier 2- BRIP1 (vaf 43.6%) , TP53 (vaf 6.3%)  \nOther biomarkers- TMB low, MSI stable  \nTier 3- MSH2, MSH6  \n\n2022-02: \tFinished bevacizumab.  \n\n2022-02: \tB1 and Block 2A sent for WES:  \nGermline:    \n-BRIP1 (frameshift) - already known.  \n-MSH2 and MSH6 - as previously identified   \nSomatic:   \n-TP53 (c.818`G>A)   \n-BRCA2 (frameshift (p.Leu2540fs))  \n-SETD1B  (p.Pro740fs)   \nMutational signatures: Sig6  \n\n2022-05: \tMyriad MyChoice: HRD Positive, GIS Score 44. BRCA2: c.7618-2_7634del suspected \t\tdeleterious.  \n\n2022-06:\tBlock 2A DNA sent for BROCA:  \nGermline BRIP1 - Deletion-insertion, c.1337_1340dup, p.W448*, 55.3%  \nSomatic TP53 - substitution, c.818G>A, p.R273H, 7.3%  \n\n2023-02: \tPotential relapse HGSOC - CTCAP & PET confirmed lesion near spleen.  \n\n2023-03: \tFresh Tissue (spleen) S1 and blood B2 received, patient started PARPi \nFFPE block 2D and 2C  received \n\nWGS  \nSample did not meet all QC measures. \n- Germline pathogenic BRIP1 variant (confirmed but not known in literature) has undergone loss of heterozygosity in the tumour with retention of the mutant allele. \n- Mutation of strong clinical significance in BRCA2 confirmed. The wildtype allele of BRCA2 is retained. \n- Tumour displays features of homologous recombination deficiency, including a dominant \nHR deficiency mutational signature, CHORD score > 50% and genomic instability. \nHowever, HRDetect predicts the tumour to be HR proficient. \n- Refer to 'Potential Clinical Trials' below. \n- Tumour mutational burden is low (< 10 mutations / Mb). \n- Inactivating mutation of potential clinical significance in TP53 and loss of heterozygosity \nconfirmed. \n- Inactivating rearrangement of uncertain clinical significance in MSH6 detected. The \ntumour retains the wildtype allele of MSH6 and has no evidence of microsatellite instability \nnor of a dominant mismatch repair deficiency signature. Recommend confirmation of \nMSH6 status via immunohistochemistry. \n- Mutations of uncertain clinical significance in MSH2 (germline) and MSH6 (germline) \nconfirmed. ";
      brca_report = "SFRC01436_BRCAPanel_28Jan2021_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA2, Myriad HRD Positive score 44";
      fcc_report = "SFRC01436_FCPanel_08Sep2020_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Nov 2020 block requested from RCH/RWH by Warren on 19/7/21, received 4/8/21\n19May23: Mar23 sample requested from RWH by Monica\n31May23: Mar23 sample received from RWH by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "BRIP1";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01436";
  }
