with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "x8/88/SHA256E-s21038613181--b006e92c474f68819a36add763866cb262fd7b4fe378153f012ecd65c9c4d65c.gz/SHA256E-s21038613181--b006e92c474f68819a36add763866cb262fd7b4fe378153f012ecd65c9c4d65c.gz";
      r2 = "8Q/xV/SHA256E-s20941136839--630b4f0749d4e18dd8c953427d07ede72ece6f5edf5892a76881d86d4d561344.gz/SHA256E-s20941136839--630b4f0749d4e18dd8c953427d07ede72ece6f5edf5892a76881d86d4d561344.gz";
    }
    {
      site = "1.12";
      class = "tumours";
      pdx = false;
      r1 = "JV/ZK/SHA256E-s20237889737--27175bd2a2a57cb1cafc618e9cecab72baa2e9567981c79b35077af71dddc8e3.gz/SHA256E-s20237889737--27175bd2a2a57cb1cafc618e9cecab72baa2e9567981c79b35077af71dddc8e3.gz";
      r2 = "Jf/2p/SHA256E-s21093317420--222f3945fbd9cd50a50c9bd1aca72ea609cdd20da2210cde5b0386179237bd6f.gz/SHA256E-s21093317420--222f3945fbd9cd50a50c9bd1aca72ea609cdd20da2210cde5b0386179237bd6f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xf/vQ/SHA256E-s4181515957--d05be02518df95e918008b97e7df36e956f88fef73284c5280703430158973f1.gz/SHA256E-s4181515957--d05be02518df95e918008b97e7df36e956f88fef73284c5280703430158973f1.gz";
      r2 = "1Q/m1/SHA256E-s4306601652--ac49fb22332bd595021c7a5869e369e3327e318bb25938e414995e1589d07b8b.gz/SHA256E-s4306601652--ac49fb22332bd595021c7a5869e369e3327e318bb25938e414995e1589d07b8b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 14.07.2022\nHER2 IHC on uterine tissue was negative as was breast. Mandy to send WES + HER2 (breast and uterine) results to Damien. \n\nClare's meeting 16.06.2022\n-Send FFPE Block 1.12 (UCS) for HER2 IHC (Rachael emailed 16.06.2022)\n-Do WES on the breast block (1B)? There is only 20% tumour in the circled area.  \n-Maybe nanostring? Double primary case of interest for Kristy. \n\nClare's meeting 02.12.2021\nSend both block 1B and 1.12 for WES.\nDo DNA and RNA (ECS for RNAseq and multiple primary project). (Qiagen kit still ok for now) \n\nClare's meeting 2021.07.29\nSFRC01369_1B,  Kristy to review for WES, Will check with Gayanie if region of higher purity.";
      date_of_death = "05/2022";
      d_case_summary = "Stage 3C uterine carcinocarcoma on a background of tamoxifen use for early breast carcinoma (diagnosed 2012). 14/09/2020: Robotic hysterectomy, BSO, bilateral sentinel node sampling, omentectomy. Histopathology: Carcinosarcoma measuring 40x37x24mm (myometrial invasion 12mm out of 17mm), LVSI present. 1/2 sentinel nodes involved. MMR proficient. No involvement of cervix / parametrium / ovaries / fallopian tubes / ovaries / omentum. Post-operative PET: nil evidence of disease. 10/2020: Commenced PORTEC3 regimen of concurrent chemoradiotherapy with cisplatin followed by 4 x carboplatin / paclitaxel.";
      date_consented = "2021-01-30";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "stage 3C uterine carcinosarcoma on a background of tamoxifen use for early breast carcinoma";
      case_details = "70yo woman, Stage 3C uterine carcinosarcoma on a background of tamoxifen use for early breast carcinoma (diagnosed 2012).  \n\n2012: Dx breast carcinoma\nSurgery: Wide excision of left breast (FFPE Block 1B)\nIHC positive: ER (95% 3+), PR (60% 2+)\nHER2 SISH negative\n\n2020-09: Dx Uterine carcinoma\nSurgery: Hysterectomy, BSO, bilateral sentinel node sampling, omentectomy (FFPE Block 1.12)\nIHC positive: AE1/3\npMMR\n\n2020-10: Commenced PORTEC3 regimen of concurrent chemoradiotherapy with cisplatin followed by 4 x carboplatin / paclitaxel. \n\n2020-11: BRCA test: no pathogenic variants detected\n\n2021-04: Blood B1 received\n\n2021-05: MoST TSO500 Report (Specimen collected Sept 2020):\nActivating ERBB2 variant\nRecurrent PPP2R1A and TP53 variants\nCN gains detected: AKT2 (CN 17) and CCNE1 (CN 22)\nVUS: ATM and CHEK2 CN loss (1 copy)\n\n2021-07: Sections from block 1B received\n\n2021-09: Clinical Trial: MoST 8 TDM1: PMC19/219 Trastuzumab\n\n2021-10: Sections from Block 1.12 received\n\n2021-12: Block 1.12 and B1 DNA sent for WES. \n\n2022-05: Deceased.\n\n2022-06: HER2 IHC and DISH on Block 1.12 (uterine) sections: NEGATIVE for HER2";
      pre_analysis_mutations = "BRCA1 and 2 panel with BRIP1: no pathogenic variants detected.\n\nTSO500\nPPP2R1A, p.S256F, c.767 C>T, VAF 40.9%\nAKT2, copy number gain (17 copies)\nCCNE1, copy number gain (22 copies)\nTP53, pV272M, c.814 G>A, VAF 73.3%\nERB2, pR678Q, c.2033 G>A, VAF 41%";
      brca_report = "SFRC01369_BRCA_Report_18112020_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2012 breast block requested from RCH/RWH on 6/6/21 by Warren, received 1/7/21\n2020 Hysterectomy block received from Austin 26/10/21 by Warren";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01369";
    predictNeoantigens = true;
  }
