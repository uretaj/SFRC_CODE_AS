with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "q3/pP/SHA256E-s22909784200--da689f659f209b0a2c68962cd326a9f481dc0ec1ea48a9867f7cfeba46766328.gz/SHA256E-s22909784200--da689f659f209b0a2c68962cd326a9f481dc0ec1ea48a9867f7cfeba46766328.gz";
      r2 = "Kf/2W/SHA256E-s24144124418--9f6926cca940a17fa3446f9bc33f54494af1852b2f25ae39a91e2817073cd138.gz/SHA256E-s24144124418--9f6926cca940a17fa3446f9bc33f54494af1852b2f25ae39a91e2817073cd138.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "94/JW/SHA256E-s8748473644--6d7d3b9805cd619a3e07f6ffac70b4d423e6e13ab6892a46ff9c6e8659c05f2e.gz/SHA256E-s8748473644--6d7d3b9805cd619a3e07f6ffac70b4d423e6e13ab6892a46ff9c6e8659c05f2e.gz";
      r2 = "V0/44/SHA256E-s9469458007--1775ecabdda2b21efa51746f5e33ad67c7168614cc3b9820baf8d13f28cec792.gz/SHA256E-s9469458007--1775ecabdda2b21efa51746f5e33ad67c7168614cc3b9820baf8d13f28cec792.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 09.03.2023\nDiscussed WES Report:\n-Copy number plot: Data points don't fit line so unable to call amplifications and deletions. \n-This case looks more like LGSOC - no TP53 mutation. Do a path review on this tissue with Damien. \n-MSH2 IHC to confirm if somatic MSH2 is deleterious.\n\nSample 1E submitted for TSO500 2.03.2023\n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1E\n\nClare's Meeting 22.12.2022\nFFPE Block 1E has good tumour, 85% purity. To do WES. Patient is doing badly.";
      blood_recall_history = "Aug22 - Call to patient\n09Aug - Email to shipping - Quote \n11 Aug 22 - Called onc \n11 Aug 22 - Onc called\n12 Aug 22 - Called onc\n12 Aug 22 - Onc called - Will call me back to discuss, they may be able to deliver to PMCCC.\n12 Aug 22 - Text to Maxene to delay blood test \n30Aug22 - Text to Onc\n01Sep - Text from Onc to call Path\n02Sep22 - Call to path, will try their courier service \n02Sep22 - Email to shipping RE Packaging \n02Sep22 - Meeting with shipping\n05Sep22 - Packaging sent to patient\n08Sep22 - Packaging arrived\n09Sep22 - Call to Path  \n";
      d_case_summary = "76 yo female with adenocarcinoma of fallopian tube dx Jul2020\n\n- Aug2020 ->1/2021 - Carboplatin / Paclitaxel x 6 3 cycles neoadjuvant Given in Mildura \n- 4Nov2020 -  BSO/omentectomy, R/O (L) diaphragmatic nodule Prior hysterectomy 2000\n- 18Nov2020 - Laparotomy, washout of abscess cavity/peritonitis, segmental resection transverse colon -> prox transverse end colostomy \n- Nov2022 - Carbo / Caelyx\n- Aug 2022 - Commencing 18 August and every two weeks thereafter (pegulated liposomal) DOXOrubicin Bevacizumab.";
      date_consented = "2022-06-28";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS Fallopian tube";
      case_details = "77F\n\n2020-07: Dx HGS Fallopian tube, plat sensitive\n\n2020-08 - 2021-01: Carboplatin/Paclitaxel\n3x cycles NATC\n\n2020-08: FCC Report: No pathogenic variants detected \n\n2020-11: Surgery: BSO/omentectomy (prior hysterectomy 2020) Omentum fixed and blocked (Block 1E)\nChemotherapy response score 2\nHistopath omentum:\nIHC Positive: ER (+1/+2, 60%), PAX8\nIHC Negative: PR, WT1\np53: wild type \n\nHistopath fallopian tube and ovary\np53 is strongly and diffusely negative in the abnormal cells (mutation type staining). \n\n2020-11: Somatic BRCA test: No pathogenic variants detected\n\n2022-02 to 06: Carboplatin/Caelyx\n\n2022-08: Maintenance Bevacizumab\n\n2022-09: Blood B1 received\n\n2022-11: Sections from FFPE Block 1E received\n\n2023-01: B1 and Block 1E DNA sent for WES: CN plot is bad, data points don't fit line. No TP53, potential LGSOC?\n\n2023-03: DNA from Block 1E sent for TSO500: \nLoss of function TP53 variant detected\n";
      brca_report = "SFRC01617_BRCASomaticGermline_23Jan2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01617_GeneticsLetter_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "13/07/2022: Nov 2020 sample requested from RWH pathology by Devindee.\n21/11/2022: Nov 2020 slides received.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01617";
  }
