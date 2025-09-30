with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "7p/X3/SHA256E-s14197333935--44d491f539968f35b95f2cf36921141827a5412fd2a8185dd43929d2df20cc67.gz/SHA256E-s14197333935--44d491f539968f35b95f2cf36921141827a5412fd2a8185dd43929d2df20cc67.gz";
      r2 = "Xz/5z/SHA256E-s14262741522--edd57ccb3d59cb7e9fa2ebf5203f750187985fc8cdbee08fc95f2df323ea1b52.gz/SHA256E-s14262741522--edd57ccb3d59cb7e9fa2ebf5203f750187985fc8cdbee08fc95f2df323ea1b52.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "05/fz/SHA256E-s5686559543--366747eb53360d02bcc6ecd5e823b8bf860004d7ab823c4e89157d50b8c528c7.gz/SHA256E-s5686559543--366747eb53360d02bcc6ecd5e823b8bf860004d7ab823c4e89157d50b8c528c7.gz";
      r2 = "Q0/x9/SHA256E-s5771219660--a71b791fc3d98f6b49143a5db2d913c7cd52e87163785281da3b6f2554912e02.gz/SHA256E-s5771219660--a71b791fc3d98f6b49143a5db2d913c7cd52e87163785281da3b6f2554912e02.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 17.08.2023\nRediscussed WES report:\n-BRCA1 88% (adjusted) homozygous methylated\n-c-MYC IHC for MYC amplification--through PMCC with clinical report.\n-To report: TP53, MYC amplification to be validated with IHC, potential trial of PARPi. \n-Briony to source clinical update for this; 6mo since tissue was sent.\n\nRC Meeting 03.08.2023 \nDiscussed WES report:\n-No reportable germline variants. \n-Reportable TP53 and ATM (low HF) somatic variants.  \n-53.2% BRCA1 methylated. \n-Questionable MYC amplification - weak. MYCL, MYC, MYCN all weakly amplified to a degree. \n-Large amount of CN alterations but ploidy isn't great. CN plot not bad. \n-No Signature 3, but signatures showing FFPE artefact. \n-Historical HRD, not driving it now. \n-RECQL4 amplification might be relevant? : \nhttps://www.ncbi.nlm.nih.gov/pmc/articles/PMC8909030/ \n\nClare's Meeting 23.03.2023\n-Platinum resistant, BRCA wt (both germline and somatic).  \n-To do WES and Methylation on FFPE Block 1B";
      d_case_summary = "progressing HGSOC, platinum resistant";
      date_consented = "2022-12-23";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "66F, platinum sensitive.\n\n2019-05: Dx HGS Fallopian tube\nSurgery: BSO (FFPE Block 1B)\nIHC positive: p16, WT1, PAX8, CK7, CA125, ER\nIHC negative: p53 (null phenotype), PR\nChemotherapy: Carboplatin/paclitaxel\n\n2021-02 - 2021-06: Rising CA125.\nChemotherapy: Carboplatin/gemcitabine x4, changed to carboplatin and caelyx x2 due to lack of CA125 response.\n\n2021-06: Commenced maintenance Letrozole\n\n2022 (early): Commenced Arimidex due to continual rise in CA125.\n\n2022-03 - 2022-06: Finished Carboplaton/docetaxel\n\n2022-12: Rising CA125\n\n2023-01: Blood B1 received\n\n2023-02: Sections from FFPE Block 1B received.\n\n2023-04: 1B DNA sent for methylation: 53.2% BRCA1 methylated.\n\n2023-05: 1B and B1 DNA sent for WES";
      brca_report = "SFRC1692_BRCAPanel_19Mar2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC1692_FCPanel_04Jul2019_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "08Feb2022: May 2019 sample requested from Melbourne Pathology by Monica\n20Feb2022: May 2019 sample received from Melbourne Pathology by Monica ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01692";
    capture = CREv2;
  }
