with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "Pk/13/SHA256E-s4956079440--209e00a6fec4b4ed9185a91e2a8ec09be079cac345c22872fe346afc77d08afc.gz/SHA256E-s4956079440--209e00a6fec4b4ed9185a91e2a8ec09be079cac345c22872fe346afc77d08afc.gz";
      r2 = "fK/07/SHA256E-s4893353804--9ca9b9fb22ff71423d05d72f4c217aa84e81e94b67e33cfe3569880fe25aa800.gz/SHA256E-s4893353804--9ca9b9fb22ff71423d05d72f4c217aa84e81e94b67e33cfe3569880fe25aa800.gz";
    }
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "k9/zF/SHA256E-s5077128846--10489e9bfb835b214c202ca316e127c0458bed8aba731a19feedc6a901f4c7b1.gz/SHA256E-s5077128846--10489e9bfb835b214c202ca316e127c0458bed8aba731a19feedc6a901f4c7b1.gz";
      r2 = "QJ/Q6/SHA256E-s5021256254--bc57abbb6f40ba5323da9e109043597a680ecdf2df1ae3248d581599c6d0b968.gz/SHA256E-s5021256254--bc57abbb6f40ba5323da9e109043597a680ecdf2df1ae3248d581599c6d0b968.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "MF/Pg/SHA256E-s1338083032--f0288046d0c7042932c7fda820dbf2d421bf03857e989d93ef9a70a9d6952cc2.gz/SHA256E-s1338083032--f0288046d0c7042932c7fda820dbf2d421bf03857e989d93ef9a70a9d6952cc2.gz";
      r2 = "1v/qG/SHA256E-s1365187172--7e50085eaabe92f012cbafd630c9595480c9fdea44ecce697b6c48a6704ecc1f.gz/SHA256E-s1365187172--7e50085eaabe92f012cbafd630c9595480c9fdea44ecce697b6c48a6704ecc1f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M3/FZ/SHA256E-s1381299699--0cc1715ce50d2523db864682bd6da64aae063e07034cf08837162453436c060a.gz/SHA256E-s1381299699--0cc1715ce50d2523db864682bd6da64aae063e07034cf08837162453436c060a.gz";
      r2 = "wX/28/SHA256E-s1411629089--5e855d8570d461dce23809f2540ecb14b814e3ccb6d38406ccc959d764e078e8.gz/SHA256E-s1411629089--5e855d8570d461dce23809f2540ecb14b814e3ccb6d38406ccc959d764e078e8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 12.10.23\nTWIST WES on FFPE Block 1G (Diagnosis):\n- Reportable somatic TP53 variant \n- Reportable somatic ATRX variant \n- Germline IDH1 variant to discuss with Clare in terms of taking to the FCC\n- Urgent report to be issued.\n\nClare's Meeting 23.03.2023\n-Need blood \n-FFPE Block 1G for WES and ProCan (We have slides and block given to ProCan)\n\n\n";
      blood_recall_history = "14Apr23 - Blood pack sent called Pathology could not leave message ";
      urgency_details = "Stage 4 Metastatic leiomyosarcoma of the uterus\n";
      d_case_summary = "57 year old female diagnosed with metastatic leiomyosarcoma of the uterus (stage 4). Patient newly diagnosed with oligometastatic disease (2 bony sites), for which she will undergo radiotherapy. ECOG 0. Patient referred to MoST study. p53 and p16 positive, ER/PR 1% weak, Ki67 80-90% on hysterectomy specimen, 30% on scapula biopsy. Hysterectomy 12/12/2022. Sister diagnosed aged 36 astrocytoma, died aged 40.";
      tso500_external = "SFRC01722_MoST_Panel_22Mar2023_Redacted.pdf";
      date_consented = "2023-02-07";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "57F, Dx Stage 4 uLMS\n\n2022-12: Surgery: Hysterectomy (FFPE Block 1G - uterine wall)\nIHC positive: p53, ER (focal weak, ~1%), PR (focal weak, ~1%), p16 panCK (weak patchy), ALK (D5F3) (focal)\nKi67: 80 - 90%\n\n2023-01: Biopsy: L scapula lesion. Consistent with leiomyosarcoma\nIHC positive: SMA, desmin, cathepsin K\nIHC negative: HMB45, ALK, NTRK, ER, PR, 2SC\nKi67: 30%\nFH: Retained\n\n2023-03: FFPE Block 1G received. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      fcc_report = "SFRC01722_FCC_Report_4Jun2023_Redacted.pdf";
      portal_letter = "SFRC01722_ArcPortalSummary_21Feb2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "20Feb23: Dec2022 sample requested from Douglass Hanly Moir pathology by Monica\n\n20Feb23: Jan2023 sample requested from NSW Health Pathology by Monica\n\n1Mar23: Dec2022 sample received from Douglass Hanly Moir pathology by Monica\n\n6Mar23: Jan2023 sample requested from Royal North Shore Hospital by Monica\n\n23Mar23: Jan2023 sample received from Royal North Shore Hospital by Monica";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01722";
  }
