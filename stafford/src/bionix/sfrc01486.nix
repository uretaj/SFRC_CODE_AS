with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1AD";
      class = "tumours";
      pdx = false;
      r1 = "2G/jG/SHA256E-s23002969822--59fd05a4d79cb76ccf77fbbf1cd6274c5aaeb1e89d9a1e312367b5881ab87e4c.gz/SHA256E-s23002969822--59fd05a4d79cb76ccf77fbbf1cd6274c5aaeb1e89d9a1e312367b5881ab87e4c.gz";
      r2 = "37/fg/SHA256E-s23823080244--b60e187c47251b670be67127a8edb7d8cf0308faae3e9c1a4ac9dabb3f22a2c3.gz/SHA256E-s23823080244--b60e187c47251b670be67127a8edb7d8cf0308faae3e9c1a4ac9dabb3f22a2c3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7m/28/SHA256E-s6624693681--5129e2a04453cd8edbe97a3b165c9d420a09f409caa6f5b07b14becb2278a627.gz/SHA256E-s6624693681--5129e2a04453cd8edbe97a3b165c9d420a09f409caa6f5b07b14becb2278a627.gz";
      r2 = "xz/46/SHA256E-s7146284575--26a1f5ff5a38d8a500b2a466e9cfaf151df58fc630a30b3b1dad2815a3c5be6c.gz/SHA256E-s7146284575--26a1f5ff5a38d8a500b2a466e9cfaf151df58fc630a30b3b1dad2815a3c5be6c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      sophia_report = "SFRC01486_SOPHiAHRDReport_27Sep2023_Redacted.pdf";
      meeting_discussions_follow_up = "Clare's sample meeting 24.08.2023\nDiscussion  ctDNA TP53\nCS_This assay shows TP53 was not detected. Is this a good thing? Is the increase in cfDNA non-specific? Need feedback for this report? \nWould be beneficial to have the baseline value (early blood sample).  \nGroup comments:TP53 mutation at high freq in WES and other tests. New ctDNA results seems like there is no disease at this time. \nMutations could differ over time? \nThe TP53 assay analyses all coding exons of TP53 - so if any mutation, it should be picked up. \nIt is not bad, but can't say this is good (from Matt) \n\nCS_Is the increase in cfDNA non-specific? \nGroup comments:  This could be non-specific (can get different results from samples taken at different times of the day) \n\nCS from group comments: Amandine, yes, we would take this as a good sign that there is no TP53 ctDNA detectable  - she should be in remission. I would not expect the mutation to change - just to not be detectable as she is doing so well. \nMy real question was about the increase in cfDNA - and whether the bioinformatics team had any comment on that. If not, I could ask Sean's lab. thanks \n\nRare cancer meeting 21/04/2022\nDo WES, BROCA and methylation on FFPE 1AD \n\nFrom email from Clare:\nHGSOC and is g BRCA and panel WT. Tumour somatic gBRCA1/2 WT.\nEnrolled on Innovate which means that Anna DeFazio has done a panel of genes - attached which is also WT.\nOnly a p53 mutation was found.\nNo CCNE1 amplification which is good.\n\nSo we are looking for methylation of BRCA1 or RAD51C or a rare HRD gene mutation on Liz Swisher's BROCA HRD panel which probably has more than the Innovate panel does. And failing all that, WES - which we will start anyway so that we get answers.\nSelf-funded Myriad MyChoice test and has an HRD + tumour, with a rapidly falling CA125 and has been on olaparib for nearly a year - self-funded and more recently AZ funded.";
      myriad_report = "SFRC01486_MyriadMyChoice_21Dec2020_Redacted.pdf";
      blood_recall_history = "08Sep22 - Blood 2 Booked for 13Sep22 \n17Feb23 - Blood 3 booked for 03 Marhc";
      d_case_summary = "Stage IIIC high-grade serous fallopian tube cancer\nHRD Positive\nGermline BRCA1/2 WT\nExtended germline panel - RAD51C/D, PALB2, BRIP1, p53, MLH1, MSH2, MSH6, PMS2, EPCAM - all WT\nSomatic/Tumour - BRCA1/2 WT\nInnovate panel: p53 mutation only (TP53 p.L194R); CCNE1 not amplified";
      date_consented = "2021-11-26";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS Fallopian tube";
      case_details = "64yo woman\n\n2020-05: \n- Stage IIIC high-grade serious (left) fallopian tube cancer. High grade adenocarcinoma also found in uterus, omentum, pelvic peritoneum, right hemidiaphragm, right gutter implant.\n- Treated with surgery: TAH BSO omentectomy, pelvic peritonectomy, R diaphragmatic stripping, Optimal debulking was achieved.\n\n2020-07: BRCA tissue testing: BRCA1/2 WT.\n\n2020-11: HRD positive\n\nIHC: \n2020-05: Moe-31 positive, Pax-8 positive, WT-1 positive, p53: strong diffuse (mutated) nuclear staining\n\nExtended germline panel - RAD51C/D, PALB2, BRIP1, p53, MLH1, MSH2, MSH6, PMS2, EPCAM - all WT\n\nInnovate panel: p53 mutation only (TP53 p.L194R); CCNE1 not amplified\n\nCA 125 results: \nDiagnosis: 108\nPre surgery: 114\nPost surgery/pre cycle 1: 73\nPre cycle 2: 35\nPrior final (2020) chemo treatment: 18\nOne month post (2020) chemo: 15\n\nTreatment: \n2020-06 to 2020-09: Chemotherapy\nC 1-3: carboplatin/paclitaxel\nC 4-6: IP cisplatin/carboplatin/IV paclitaxel \n\n2020-12: commencement of olaparib (2 years as per SOLO1 study)\n\n2021-12: Blood B1 received and processed\n\n2022-01: FFPE block 1AD received and processed\n";
      pre_analysis_mutations = "Extended germline panel - RAD51C/D, PALB2, BRIP1, p53, MLH1, MSH2, MSH6, PMS2, EPCAM - all WT\n\nInnovate panel: p53 mutation only (TP53 p.L194R); CCNE1 not amplified";
      brca_report = "SFRC01486_BRCAReport_19Aug2020_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 71";
      fcc_report = "SFRC01486_FCCReport_20Jun2020_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "21/02/2022: May 2020 tissue sample requested from Sydney South West Pathology by Devindee. \n03/03/2022: May 2020 tissue block received by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "BRCA1/2 WT";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01486";
    capture = CREv2;
  }
