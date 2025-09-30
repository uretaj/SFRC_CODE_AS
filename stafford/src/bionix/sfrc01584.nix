with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B3";
      class = "normals";
      pdx = false;
      r1 = "q1/2m/SHA256E-s52130806201--92a1d0b710652e766fedf99c6ae74f4a0d067ba22a76b9a143072fa4cfebadc0.gz/SHA256E-s52130806201--92a1d0b710652e766fedf99c6ae74f4a0d067ba22a76b9a143072fa4cfebadc0.gz";
      r2 = "j0/FV/SHA256E-s55782820985--7dd8e992bf8ae31add4311a6a71fb60bdbea852550748e5ea926039727064589.gz/SHA256E-s55782820985--7dd8e992bf8ae31add4311a6a71fb60bdbea852550748e5ea926039727064589.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2w/zg/SHA256E-s89744564500--a5650d176ce82ac927296e47d6425a550852596654a5992835695177ff4064de.gz/SHA256E-s89744564500--a5650d176ce82ac927296e47d6425a550852596654a5992835695177ff4064de.gz";
      r2 = "04/g7/SHA256E-s97059753180--642005cf9464023a30d0ca1acf21f60c8b220375af50db474596eec98bdd00ad.gz/SHA256E-s97059753180--642005cf9464023a30d0ca1acf21f60c8b220375af50db474596eec98bdd00ad.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "vQ/XX/SHA256E-s4103338955--70ddd79f42c6c1122d475b2c3b029c1292ce069e45ab54cc637d2b012a584657.gz/SHA256E-s4103338955--70ddd79f42c6c1122d475b2c3b029c1292ce069e45ab54cc637d2b012a584657.gz";
      r2 = "5G/K9/SHA256E-s4081994009--3293d8f8bf1f88d82d9b23f914d1755d1bd5c047163f7c7a3107874db61dc5fc.gz/SHA256E-s4081994009--3293d8f8bf1f88d82d9b23f914d1755d1bd5c047163f7c7a3107874db61dc5fc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 24.08.2023\nDiscussed WGS report with SFRC data.\nKas had a look at WGS html - no known resistance mechanisms observed. Matt thinks that CCNE1 high (15 copies) could be driving resistance gene. \nTwo HR defects is uncommon (RAD51D and BRCA2)! Might explain why patient did so well for so long.  \n\nClare's sample meeting 29.06.2023\nPlan for S1: Send for WGS\nSpecifically looking for secondary mutations in RAD51D and BRCA2, or other causes for PARPi resistance. \n\nClare WEHI sample WhatsApp message 20.06.2023\nCase has progressed, post parpi 6 months ago, after 7 years on pamiparib, Clinician doing biospy on 21.06.2023, WGS and mice are priority. Do anything else if enough material, eg FFPE for imaging.\n\nRC Meeting 27.04.2023\nDiscussed WES Report for FFPE Block 2.2:\n-Clare to contact FCC to have original sample checked for gRAD51D \n-LOH RAD51D: too borderline to call LOH (not in CN table either); limited detection.  \n-Based on TP53, tumour purity likely to be closer to ~15-20%. Too low to confidently call anything. \n-Could recall other blocks-review histology reports.  \n-Flag this case to do foci studies.  \n-Kas and Franziska to add this to their list of interesting RAD51D cases. \n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 2.2\n\nClare's meeting 05.08.2022\nWES and nanostring on FFPE block 2.2. A super responder case for Imalki.";
      date_of_death = "07/2023";
      d_case_summary = "59 year old woman, Primary Peritoneal Carcinoma, BRCA2 somatic mutation";
      date_consented = "2022-05-17";
      tumour_type = "HGS primary peritoneal";
      tumour_details = "High grade serous primary peritoneal carcinoma";
      case_details = "61yo woman, Primary Peritoneal Carcinoma, BRCA2 somatic mutation \n\n2013-11: \tDiagnosed Stage IV peritoneal serous adenocarcinoma \nHistopath on ascites \n-IHC positive: AE1/3, CK7, BER-EP4, WT1 and PAX8, Weak focal staining for CD15, CK5/6. \tER (weak to  \nmoderate  staining in <10% of tumour cells) \n-IHC negative: PR, TTF1, CK20, thrombomodulin, calretinin, CEA mono, CEA poly. \n\n2013-12:\t Commenced 4x cycles NACT carboplatin/paclitaxel until 2014-02 \n\n2014-03: \tSurgery: Interval debulking with optimal cryoreduction. \nFurther 2x cycles of adjuvant carboplatin/paclitaxel,completed 2014-04 \n\n2014-03:\tFamilial Breast/Ovarian cancer gene screen report  \n(PMCC): No pathogenic mutations of BRCA1, BRCA2, TP53 & PTEN were detected \nSurgery: hysterectomy, BSO. Omentum fixed and blocked (Block 2.2) \nIHC positive: CK7, PAX8, WT1, ER (weak) \nIHC negative: CK20, PR, p53 \n\n2014-10:\tSurgery: small bowel \nIHC performed but specimen received in dehydrated state and considered \tuninterpretable. \n\n2014-12: \tRising CA125 to 616 with abdominal pain. CT showed disseminated peritoneal disease.  \n\n2015-01: \tCommenced 6x cycles of carboplatin/liposomal doxorubicin for first line treatment for \t\trelapsed HGSOC. Completed 2015-06 \n\n2015: \t\tConsented to ARIEL3 clinical trial for maintenance PARPi with rucaparib/placebo. \t\tProgressed within 3 months - unblinded and found to be on the placebo arm. \nFoundation Medicine Report (ARIEL3) revealed a  \nBRCA2 mutation and CCNE1 amplification of HSGSOC \n\n2015-10: \tCommenced Beigene PARPi Pamiparib for relapsed HGSOC, for 6 years, in complete \t\tresponse 5.5 years, since 2017-01 \n\n2022-06: \tBlood B1 received \n\n2022-11: \tFFPE Block 2.2 sent for WES \nTMB: 77 (0), Purity: 24%, Ploidy: 4.22, LOH: 25% \nGenome doubling: true \nMSI: 0.94% \nGermline variants: \nRAD51D\t- ENST00000590016.5, c.863G>A, p.Trp288* \nstop gained, 57.1% \n*Clinvar: Pathogenic \n*Could be LOH of this gene, but based on low purity, it is too borderline to tell. \nSomatic variants: \nTP53 - ENST00000269305.8, c.693delC, p.Ile232fs\tframeshift variant, 17% \n*Copy neutral LOH (CN 2,0) of 38.4 Mbp region containing TP53  \n*cBIO Genie: frameshift at this position is a driver mutation in multiple cancer types. \nBRCA2 - ENST00000380152.7, c.7060C>T, p.Gln2354*\t \nstop gained, 13% \n*Clinvar: Pathogenic \n*cBIO Genie: truncating variants are nearly always drivers (1832 driver vs. 1 x VUS) \nMutational signatures: None reportable \nAmplifications:  \nJAK3, CN 12 \n*driver in Acute Lymphoblastic Leukemia (ALL).  \nCCNE1, CN 11 \n*Seen in ARIEL3 Report \nDeletions: None \nDiscussion: \nClare to contact FCC to have original sample checked for gRAD51D  \nLOH RAD51D: too borderline to call LOH (not in CN table either); limited detection.   \nBased on TP53, tumour purity likely to be closer to ~15-20%. Too low to confidently call anything.   \nCould recall other blocks-review histology reports.   \nFlag this case to do foci studies.   \n\nKas and Franziska to add this to their list of interesting RAD51D cases. \n\n2023-06:\tSurgery, Fresh tissue S1 and blood B2 received, progression, post PARPi 6 months ago, after 7 years on pamiparib\nperitoneal \nIHC positive: PAX8, WT1, S100, BerEP4\nP53 mutational pattern negative\nER 2+ 5-8%\nPR negative \nVulval \nP53 mutational pattern positive\nPAS stain negative \n\n";
      brca_report = "SFRC01584_BRCAGeneTest_03Mar14_Redacted.pdf";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA2";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "21/06/2022: March 2014 tissue requested from PMCC pathology by Devindee\n07/06/2022: March 2014 block received from PMCC pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01584";
  }
