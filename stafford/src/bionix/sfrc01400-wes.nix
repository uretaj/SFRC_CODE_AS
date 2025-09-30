with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A7";
      class = "tumours";
      pdx = false;
      r1 = "MM/2F/SHA256E-s9110286081--175af2a9510dc0e108170662f05b0a88fa8adbbfc3ecdd294531129a2c2739f2.gz/SHA256E-s9110286081--175af2a9510dc0e108170662f05b0a88fa8adbbfc3ecdd294531129a2c2739f2.gz";
      r2 = "f5/z5/SHA256E-s9184402589--737c2f4b9ca135e47859f842358e5bf1663605049112b72e104636ac6a7ddf5d.gz/SHA256E-s9184402589--737c2f4b9ca135e47859f842358e5bf1663605049112b72e104636ac6a7ddf5d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VJ/88/SHA256E-s3145760666--8a3b7bab03db29ae5bbeef8cadaba2ebef3221867a596db82a145246f832e890.gz/SHA256E-s3145760666--8a3b7bab03db29ae5bbeef8cadaba2ebef3221867a596db82a145246f832e890.gz";
      r2 = "4k/K8/SHA256E-s3180718288--6f8f4a9ccb335de081158f576db9d9f135c579e67212b4834263ff551c4a40b0.gz/SHA256E-s3180718288--6f8f4a9ccb335de081158f576db9d9f135c579e67212b4834263ff551c4a40b0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "01749?";
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "Sample Meeting 29.04.2024\nFresh tissue S2: Only small piece of tissue received, no OCT, just FFPE. Organoids have grown from this tissue, will be transplanted in mice this week or viably frozen.\nNo sequencing at this stage: block needed more for stromal project. \nPatient is progressing: RAMP302 referral (LGSOC Dx, not the CIC): Avutometinib + defactinib vs physicians choice chemo (topotecan or gemcitabine) (not RAS-RAF, is RAS-MEK + FAK inhibitor) \nAsk Adriana for more letters. \n\nRC Meeting 2022.02.03\nDiscussed WGS report.\nFound CIC in the WES.\nCIC is negative regulator of RTK and MAPK pathways - potential trials in this area as nothing else of interest in the tumour (RAF dimer + MEKi trial) \nClare will email Jayesh about this case in relation to Beigene trial \nPossible Phase 1 ERK inhibitor trial available \nTFTP deletion in WES. Relevance? \n\n2022.01.05 - received cord blood from the sister of SFRC01400 (called it B2*). Did RBCL on the 20x EDTA tubes, froze in 10x vials (10% DMSO in FCS). Rest kept as 2x vials snap frozen pellet.\nFrom the sterile pot, took 1 ml for germline DNA and 4x 1ml frozen (possible RNA).\nStore all frozen vials in liquid nitrogen (after overnight -80 in mr frosty).\nNeed HREC approval before processing anything.\n\n2021.11.25 update: WGS report should be ready for Variant Meeting on 10th Dec.\n\n2021.11.15 - extract DNA only (no RNA) from all OCT sections (small tumour areas). Send for WGS. Looking specifically at Ras-Raf pathway, in hopes of getting into Beigene trial.\n\nClare's meeting 2021.08.12\nSFRC01400_2F:Nothing to do for now  \nBriony to draw up report for reporting no molecular findings \n\nClare's meeting 2021.06.03\nPlan: Do WES on block A7. Holly to add to ARHGEF7 primer list for Zoe \nDual RAS/RAF MEKi BeiGene trial would be great.... ";
      d_case_summary = "recurrent low grade ovarian ca.\n1st surgery at Monash Hosp on 26/07/202 and 2nd surgery at Mulgrave Private on 28/11/2020.\nIs paying for limited sequencing (?) at PMCC- blocks to be transferred from Melbourne Pathology to PMCC.";
      tumour_type = "LGSOC";
      tumour_details = "low grade serous ovarian carcinoma (LGSOC)";
      case_details = "33F\n\n2020-07: Dx LGSOC\nOmental mass biopsy (FFPE Block A7)\nPositive: WT-1, PAX8\np53: Wild type.\n\n2020-08 - 2021-01: 1st line chemotherapy: Carboplatin/Paclitaxel 4x NACT, then further 2x cycles.\n\n2020-11: Surgery: Hysterectomy and BSO, and rectum, left hemi-colectomy and omentum, right upper quad peritoneum, small bowel, appendix (FFPE Block 2F (Left hemi-colectomy and omentum). \n\n2021-01: Ceased Tamoxifen\n\n2021-04: PMCC Somatic Panel testing: Failed due to FFPE sample. Blood B1 received.\n\n2021-05: Sections from FFPE Block A7 received.\n\n2021-07: Sections from FFPE Block 2F received.\nDNA from Blood B1 and FFPE Block A7 sent for WES:\nSomatic CIC, PMS2. TMB and LoH low.\n\n2021-10: Tissue S1 received.\n\n2021-11: Blood B1 and Tissue S1 DNA sent for WGS:\nCIC (VUS), A dominant homologous recombination deficiency mutational signature (647 mutations, 29% of somatic mutations) was detected. However, CHORD and HRDetect both predicted this tumour to be homologous recombination proficient.\n\n2022-01: Progressive disease\n\n2022-01 - 2022-04: 2nd line chemotherapy: Caelyx bevacizumab. Blood B2 (cord blood from sister of patient) received.\n\n2022-04: 3rd line therapy: Anastrazole/Bevacizumab.\n\n2022-12 - 2023-02: 4th line therapy: BGB283/MEKi trial. Ceased due to PD.\n\n??: 5th line therapy: Carboplatin x3, 3 weekly. PD.\n\n2023-04 - 2023-09: Weekly Paclitaxel + Bevacizumab + Anastrozole x6, then maintenance bevacizumab and anastrozole thereafter.\n\n2024-04: Blood B3 received. Tissue S2 received.\n\n\n\n\n\n---------------------------------------------------------------------------\nrecurrent low grade ovarian ca. \n07/2020: 1st surgery at Monash Hosp (block sample used for WES) \nP53 wildtype, NT1+, PAX8+ \n11/2020: 2nd surgery at Mulgrave Private   (New block received) (P53 wt and WT1+)\nCarbo/paclitaxel chemotherapy, NACTx4  \n01/2021: tamoxifen \nIs paying for limited sequencing (?) at PMCC- blocks to be transferred from Melbourne Pathology to PMCC. \n04-2021: Somatic testing: failed no result because FFPE tissue \nAiming for Beigene RAS/RAF /MEKi trial  \n\n ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2020 block requested from Monash by Warren 30/04/21, received 21/5/21\n2020 Nov block requested from Melbourne Path by Warren 15/7/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = false;
    name = "SFRC01400";
    capture = CREv2;
  }
