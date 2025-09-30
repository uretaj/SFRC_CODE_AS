with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1U";
      class = "tumours";
      pdx = false;
      r1 = "P2/z2/SHA256E-s12592980324--476cefee85751e9e4eea95303148ddb0618311b509f8e6328efffd254ec8e840.gz/SHA256E-s12592980324--476cefee85751e9e4eea95303148ddb0618311b509f8e6328efffd254ec8e840.gz";
      r2 = "Wg/qV/SHA256E-s12882772717--98daf37a8deb57b2de9d2329593348206b9fbcc3244b9e3bf60bead01625d276.gz/SHA256E-s12882772717--98daf37a8deb57b2de9d2329593348206b9fbcc3244b9e3bf60bead01625d276.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gW/3V/SHA256E-s5693426585--30ab60a9ae825d43e150b1c90d653c96de9399fb311e129d286c06b8b1aa2573.gz/SHA256E-s5693426585--30ab60a9ae825d43e150b1c90d653c96de9399fb311e129d286c06b8b1aa2573.gz";
      r2 = "8f/74/SHA256E-s5785743723--aad735e647dd7b9c8d884376340ec6e353e2accd60cf44a000e852407824c1b6.gz/SHA256E-s5785743723--aad735e647dd7b9c8d884376340ec6e353e2accd60cf44a000e852407824c1b6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "2023.09.14\nWES discussion,FFPE Block 1U (HGSOC), post NACT, March 2021\nLooks HRD - historic. Potential methylation loss. \nPlan: Methylation on Block 1U (Kas to organise)\n\nClinical report to be issue\n\nClare's Meeting 23.03.2023\n-Need blood - incoming. \n-To do WES on FFPE Block A1 (breast). \n-Both blocks A1 (Breast) and 1U (HGSOC) for Cyclin E and B7H4 IHC\n\nRC Meeting 23.03.23\nDiscussed TSO500 report, compared with FoundationOne report (on same block). TSO500 did not have RNA data, may be why some of the amplifications were not picked up. Or due to being equivocal (FOne do not note CN).\n\nClare's Meeting 22.12.2022\n-Need blood.\n-FFPE Block 1U (HGSOC, 2021) has large tumour volume, 85% purity. Good tumour block, to do WES. \n-Want the breast block (auxiliary lymph node June 2022) as well (Rachael emailed Devindee to recall block 03.01.2023)\n-Do Cyclin E and B7H4 on all, to see any changes over time.\n-Want WES on the 2022 block, but this 2021 block has good tumour. Do WES on this 1U block. \n-Need path report for the 2022 sample.";
      blood_recall_history = "17Feb23 - VM left \n21Feb23 - Called path clinic they wil call back to organise\n24Feb23 - Recieved blood pack";
      d_case_summary = "HGSOC CCNE1 high";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "2020-12: Dx HG DCIS of left breast, Dx HGSOC\nBreast biopsy:\nIHC positive: ER/PR, 90%\nIHC negative: HER2\n\nOmentum biopsy:\nIHC positive: PAX8, WT1, ER\n\nChemotherapy: Carboplatin/paclitaxel. \n\n2021-03: Debulk (after 4x cycles of chemo). Left fimbral end fixed and blocked (Block 1U)\nChemotherapy response score: 2\nCommenced letrozole\n\n2021-04: BRCA tissue test: No pathogenic variants detected\n\n2021-05: bevacizumab with C6 carbo/taxol\n\n2021-11: Switched from letrozole to tamoxifen\n\n2022-02: FoundationOne testing: \nLOH: 6.5%, MSI stable, TMB low, HRD negative\nCCDN2 amplification\nCCNE1 amplification\nMYC amplification\nTP53 loss of function K132fs*3\n\n2022-05: 18x cycles of bevacizumab completed\n\n2022-06: Surgery: L) WLE DCIS and biopsy of left axilla (FFPE Block 1A - Left axilla core biopsy)\nIHC positive: CK7, PAX8, WT1 (diffuse moderate to strong)\nIHC negative: CK20, GATA3, GCDFP-15\nMorphology and immunoprofile keeping with metastatic HGSC, consistent with ovarian primary.\n\n2022-07: Progressive disease HGSOC\nCommenced carboplatin/liposomal doxorubicin\n\n2022-11: Commenced ZNC3 trial (WEE1 inhibitor Zenith, Paclitaxel arm)\n\n2022-12: FFPE Block 1U (left fimbral end) received.\n\n2023-02: FFPE Block 1A (left axilla core biopsy) received\n\n\n2023-03: FFPE Block 1U submitted for TSO500\nA loss of function TP53, CCNE1 amplification, CN 9.\n\n2023-05: CCNE1 and B7H4 IHC on Blocks 1A and 1U:\nBlock 1U: HGSOC\nB7H4: 85%, CCNE1 H-Score: 180\n\nBlock 1A: Breast\nB7H4: 60%, CCNE1 H-Score: 150\n\n2023-06: 1U (HGSOC) and B1 DNA sent for WES\n\n2023-08: Progressive disease, ceased ZNC3 trial.\nCommenced ARTISTRY-7 trial (randomised nemvaleukin + pembrolizumab)";
      brca_report = "SFRC01671_BRCATissue_15Apr22_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "14/11/2022: 2021 sample requested from Clinpath pathology by Devindee. \n12/12/2022: 2021 block received.\n12Feb2023: 06Jun2022 LN sample requested from Clinpath Pathology by Monica\n22Feb2023: 06Jun2022 LN sample received from Clinpath Pathology by Monica ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01671";
  }
