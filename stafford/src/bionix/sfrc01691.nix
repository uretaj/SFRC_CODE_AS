with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "wZ/41/SHA256E-s15394034261--073d32fdc57c61e106f67ff0909ca2041cf0ed8a4c993fcc1ce9efdaff195871.gz/SHA256E-s15394034261--073d32fdc57c61e106f67ff0909ca2041cf0ed8a4c993fcc1ce9efdaff195871.gz";
      r2 = "q0/zz/SHA256E-s16061061152--0635a43d9b789d3562fd82143a00f8a0d054553be416423d9a3e1456b8e1fa75.gz/SHA256E-s16061061152--0635a43d9b789d3562fd82143a00f8a0d054553be416423d9a3e1456b8e1fa75.gz";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "46/M0/SHA256E-s15036460928--6c5b93677d024e450f7d6f43375544f4006db10fe831024c64f55ed2e3e67a29.gz/SHA256E-s15036460928--6c5b93677d024e450f7d6f43375544f4006db10fe831024c64f55ed2e3e67a29.gz";
      r2 = "vf/7F/SHA256E-s14870614409--50183607a9df46f08e0643869a6f142a4fddb6e355a8ced48855aada0ae7bb48.gz/SHA256E-s14870614409--50183607a9df46f08e0643869a6f142a4fddb6e355a8ced48855aada0ae7bb48.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "W5/pk/SHA256E-s4594013943--f4bdca5cc9c59a6331972485f7456f6fc691651e6a818bb57bccc7ee09f6a3da.gz/SHA256E-s4594013943--f4bdca5cc9c59a6331972485f7456f6fc691651e6a818bb57bccc7ee09f6a3da.gz";
      r2 = "3q/54/SHA256E-s4679689107--50721fa385316646f1adb226370ab2ce4675cb08f548decb6f0d0e21252495fb.gz/SHA256E-s4679689107--50721fa385316646f1adb226370ab2ce4675cb08f548decb6f0d0e21252495fb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 22.06.2023\nDiscussed MHC Class 1 genes in this sample:\n-No genes in somatic table\n-HLA-A germline VUS\n-In CN table, all have large fragment sizes or borderline amplifications. \n-No actionable LOH \n-Pt is Plat/Gem refractory - never responder. \n-1B and 3B sent for methylation \n-c-MYC IHC still pending (Rae to chase up histology for update) \n-Can send DNA for WES Twist. \n\nFrom Clare: 19.06.2023\nLook into ABCB1 overexpression vial qRT-PCR, to look into multi-drug resistance. Rae has talked with Kas about this; qRT-PCR is validated for fresh tissue, not FFPE, but is happy to try. Kas is also in the process of optimising a ABCB1 antibody for IHC so this could be an avenue to try also.\n\nRC Meeting 08.06.2023\nDiscussed WES report for FFPE 3B: Omentum\nSame TP53 as previous WES and TSO500 \nPotential inflammatory signaling happening here? \nLooks HRD-like-AKT1 suggests historical HRD. \n\nPlan: Send 1B DNA for methylation (suspected HRD with no cause).\n\nRC Meeting 18.05.2023\nDiscussed WES report for FFPE Block 1B:\n-To do Liquid TSO500 on this sample.\n-DNM2 amplification- not in OncoKB. cBio Genie - fusion is a driver.  \n**Justin, Jocelyn and Andrew to look into further. Platinum resistance related? Also WES analysis RE MHC class 1.\n-Somatic FUBP1 (VUS)- can ask Kate Sutherland's lab about this. Is upstream of MYC. Can do MYC IHC (c-MYC). Matt/Ratana to find MYC positive control to use for IHC. ?POL1 inhibitor study. (SFRC01059 is c-MYC positive, also SFRC01343 - MYCN x218 copies by WGS. Have PDX as well)\n-Only TP53 is reportable for this patient, and the same variant seen on TSO500 report which has already been issued. No need to prepare WES report. \n\nClare's Meeting 23.03.2023\n-FFPE Blocks 1A (fallopian tube) and 3B (omentum) are from the same surgery as 1B (already sent for WES and TSO500); wanted more material. \n-TSO500 only found TP53 variant. \n-The omentum (Block 3B) is metastatic disease - do WES (submitted 03.04.2023). Ask Kristy and Matt if needs different depth, and that it is a paired sample. \n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1B\n\nClare, Ratana, Rae, Briony 08.02.2023\n** Have sections of block 1B. \nSend all thin and some thick sections for TSO500, result before 5 weeks \nAlso want DNA for WES on the thick sections \nJust started Gem/Bev \nRecall more sections! Is a rare cancer, we need more material. 3A-3D blocks to be recalled. \n\nS1: Small sample size. \nHistology had much issues with processing and as such we do not have unstained sections for the primary site. Nothing seen on H&E so no scanning completed.";
      urgency_details = "Patient progressing, very important case.";
      d_case_summary = "primary refractory HGSOC: Presented with ascites (no biopsy)\n3 cycles NACT carbo taxol - not enough response\nbiopsy (attached) - consistent with HGSOC although no PAX8 - looks like p53 mutant\n3 more cycles carbo taxol - not enough response for surgery\n3 cycles carbo caelyx - progression";
      date_consented = "2022-12-20";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "73F\n\n2022-02: Dx HGSC of fallopian tube, platinum-refractory.\nSurgery: Laparoscopy, drainage of ascites (FFPE Blocks 1B and 1A (R Fallopian tube), and 3B (omentum)\nIHC positive: ER (2+, 60%), p16, WT1\nIHC negative: PR\np53: Null phenotype\n\n2022-02 - 2022-07: Chemotherapy: carboplatin/paclitaxel, stable disease. \n\n2022-07 - 2022-11: Chemotherapy: carboplatin/doxorubicin. Progressive disease.\n\n2023-01: Surgery: Core biopsy. Fresh tissue S1 and S2 received. Minimal tissue in both samples, not reviewed. Blood B1 received. \nChemotherapy: Gemcitabine/Bevacizumab\n\n2023-02: Sections from FFPE Block 1B (R Fallopian tube) received. Sent for TSO500: Inactivating variant in TP53 tumour suppressor gene detected.\n\n2023-03: Sections from FFPE Blocks 1A (R Fallopian tube) and 3B (omentum) received.\nFFPE Block 1B DNA sent for WES\n\n2023-04: FFPE Block 3B DNA sent for WES.\n\n";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "06Feb2023: Feb 2022 sample received from Sullivan Nicolaides pathology by Briony.\n\n18/01/2023: Feb 2022 sample requested from Sullivan Nicolaides pathology by Devindee.\n\n08Feb2023: Feb 2022 sample re-requested from Sullivan Nicolaides pathology by Monica \n\n22Feb2023: Feb 2022 sample re-requested from Sullivan Nicolaides pathology by Monica \n\nSullican Nicolaides rang Clare early Feb and checked what we needed and said they would send it. Hopefully it has now arrived? If you need to contact them again, please call them and thank them for their earlier call and say you are following up - we thought that were agreeable to sending more tissue";
      mp_subgroup_sfrcp4_new_id = "To be confirmed";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01691";
  }
