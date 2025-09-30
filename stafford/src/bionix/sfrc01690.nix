with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jp/Pk/SHA256E-s54773422540--40258d4448463a0f45d8bb433e3aa521bebb5bc36f7d79cdead7ad1489332637.gz/SHA256E-s54773422540--40258d4448463a0f45d8bb433e3aa521bebb5bc36f7d79cdead7ad1489332637.gz";
      r2 = "QX/QZ/SHA256E-s59779709365--5913e74f97a86a837fefbc7825df8a172ddfaf85156be8088dd758e6e1fc9858.gz/SHA256E-s59779709365--5913e74f97a86a837fefbc7825df8a172ddfaf85156be8088dd758e6e1fc9858.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "qg/KQ/SHA256E-s101367357711--e8a62b701b0333eeeb95088a87ab66cea57045138526248671a2dd1771df414a.gz/SHA256E-s101367357711--e8a62b701b0333eeeb95088a87ab66cea57045138526248671a2dd1771df414a.gz";
      r2 = "Kk/3v/SHA256E-s108306347027--f7e12c837262a89c3ac2c3cc63b20d4a1346652779c366e9f57bd2f71365629b.gz/SHA256E-s108306347027--f7e12c837262a89c3ac2c3cc63b20d4a1346652779c366e9f57bd2f71365629b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Sample meeting 11.08.2023\nPlan for FFPE block 2I: we already have WGS  post radiation on a more recent sample.  \nWhat should we do with this FFPE block  \nI AGREE SIT TIGHT AS WE ALREADY HAVE WGS AND THIS IS ON THE EARLIEST TISSUE - WES ON BASELINE FFPE MAY BE HELPFUL FOR FURTHER ANALYSIS IN THE PROJECT IN THE FUTURE BUT TRYING NOT TO SPEND MONEY THIS YEAR IF NOT NEEDED EG MAYBE WE WILL DECIDE TO SEE IF ANY OF THE WGS CHANGES ARE NEW BUT NOT NEEDED NOW \n\nRC meeting 23.03.2023\nDiscussed WGS report (Grimmond and SFRC).\nSFRC analysis: Somatic SRC and NDRG1 may be of interest.\nAmplification of MAP2K4.\nuLMS case without ATRX, DAXX or MED12 variants.\n";
      urgency_details = "As per Monica mentioned on the WhatsApp group ";
      d_case_summary = "uLMS, prev Hodgkin's Lymphoma dx 2009, had a bulky mediastinal lymphoma managed ~10 years ago and then the uLMS \nbroad ligament primary, rather than uterine. \nER/PR are effectively negative. somatic BRCA is neg.\n? eligible for immunotherapy trial underway at the moment recruiting at Peter Mac and elsewhere.\nThey've already consented to TSO500 on stored tissue through MoST Sydney.";
      date_consented = "2022-12-15";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "51F \n\n2009:    Dx Hodgkin lymphoma \nTreatment: ABVD (doxorubicin, bleomycin, vinblastine, dacarbazine) x6 cycles \n\n2009-06: Biopsy \nIHC positive: CD30, CD15, PAX5 \nIHC negative: CD20, CD3, CD5, CD23, CD10 \n\n2009-11 - 2009-12: \tRadiation \n\n2021-07:  Dx LMS, pelvic primary (FFPE block 2I received, 80-85% tumour purity)  \nSurgery: TAH/BSO, omentectomy \nIHC positive: PR - weakly positive \nIHC negative: ER \n\n2021-09:  BRCA tissue testing: No pathogenic variants detected \n\n2021-09 - 2021-10: \tRadiation \n\n**Referred to MoST for TSO500** PRESUMABLY ON THE FFPE BLOCK AS NO NEW BIOPSY? \nPurity 90%, MS Stable (6.8%) \nGATA4 loss \nTP53 VAF (90%) \n\n2022-12: \t\tFresh tissue S1 (liver biopsy) received. Blood B1 received. \nIHC positive: SMA, caldesmon, desmin, P53 (60% tumour cells) \nIHC neg: AE1/AE3, CAM5.2, EMA, Myogenin, ALK, CD34, CD117, DOG1, PR, ER, \tHMB45, MelanA, EBER_ish \nLoss of PTEN expression, ATRX intact, weak expression of RB1 - WHERE IS THIS FROM? THE TSO500? No it is from the path report  \n\nWGS in house  \n- Inactivating mutation of potential clinical significance and loss of heterozygosity TP53 confirmed. \n\n- A dominant homologous recombination deficiency mutational signature (590 mutations, 20% of somatic mutations) was detected. However, \n\nCHORD and HRDetect both predict this tumour to be homologous recombination proficient. Refer to Potential Clinical Trials' below. \n- Inactivating rearrangement of potential clinical significance and loss of heterozygosity RB1 detected. \n\nSFRC analysis: Somatic SRC and NDRG1 may be of interest. \nAmplification of MAP2K4. \nuLMS case without ATRX, DAXX or MED12 variants. \n\n2023-01: \t\ttrial ipilimumab and nivolumab trial ";
      brca_report = "SFRC01690_BRCAReport_25Nov2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      fcc_report = "SFRC01690_BRCA_20Jul21_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "16-Feb-2023: Jul2021 sample requested from Melbourne Path by Monica \n21Jul23: followed up with Melbourne path regarding the request \n26Jul23: Jul2021 sample received from Melbourne Path by Monica ";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01690";
  }
