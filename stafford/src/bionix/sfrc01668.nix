with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "1P/2Q/SHA256E-s3557414134--e315e5e0aa250bf8361cd3e26358801ed27d3d64f6d72e7304795f549481c394.gz/SHA256E-s3557414134--e315e5e0aa250bf8361cd3e26358801ed27d3d64f6d72e7304795f549481c394.gz";
      r2 = "xG/P6/SHA256E-s3525382784--fb97799f29038daba56e3e4963fd4cf8e387b2d8191f864d102ee9458d0c3419.gz/SHA256E-s3525382784--fb97799f29038daba56e3e4963fd4cf8e387b2d8191f864d102ee9458d0c3419.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "m9/7K/SHA256E-s3622897046--be56a3b402755ee07f44a03af651611b114f8f3cb1765c69920eecd3a20a7255.gz/SHA256E-s3622897046--be56a3b402755ee07f44a03af651611b114f8f3cb1765c69920eecd3a20a7255.gz";
      r2 = "Xg/0p/SHA256E-s3596224050--e62fbd14b8916188477e3fe65f3fed0e0e20cfe139f504f174437adb64ab89fa.gz/SHA256E-s3596224050--e62fbd14b8916188477e3fe65f3fed0e0e20cfe139f504f174437adb64ab89fa.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jj/V2/SHA256E-s1180327912--ead12e93de324675a3abd880be9df95a6de2648514851fc0801a9948ee6e6205.gz/SHA256E-s1180327912--ead12e93de324675a3abd880be9df95a6de2648514851fc0801a9948ee6e6205.gz";
      r2 = "MQ/7z/SHA256E-s1211195245--ea2a3d358c71bc32b38102573412279180e3a528db5acaae5ac23a0efeb54c70.gz/SHA256E-s1211195245--ea2a3d358c71bc32b38102573412279180e3a528db5acaae5ac23a0efeb54c70.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Pg/V9/SHA256E-s1230528856--799078f9905bf05a2d891a11f48d8846f0fdccbfb30f32d09a668e5838c4c954.gz/SHA256E-s1230528856--799078f9905bf05a2d891a11f48d8846f0fdccbfb30f32d09a668e5838c4c954.gz";
      r2 = "Z8/VQ/SHA256E-s1265149554--79b382d25fe09e1819e00be7ced4609d74fc6d36ab115c09128362caa10e4b4e.gz/SHA256E-s1265149554--79b382d25fe09e1819e00be7ced4609d74fc6d36ab115c09128362caa10e4b4e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.11.2023:\nDiscussion:\n- HRD (56) likely - gPALB2 - PALB2 has CN 3/2 so retention of WT copy \n- CN plots - lots of features of HRD  \n- This patient is now on EPOCH \n- Somatic: TP53 \n- CNV: CCNE1 amp (8 copies) \n\nClare's Meeting 20.04.2023\nReviewed FFPE Blocks:\nBlock 1A: Entirely tumour, 40%, with 10% of tissue liposarcoma. Scrape ALL and note that a small portion is lipsarcoma. For WES.\nBlock 1Q: Entirely tumour, 40%. Mostly carcinoma with small foci of sarcoma. Leave for now as 1A looks like it is the better block.  ";
      date_of_death = "04/2024";
      d_case_summary = "Carcinosarcoma of endometrium\ngermline PALB2 pathogenic mutation";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma  recurrent breast cancer (2015)";
      case_details = "59 years old female, Stage 1A Carcinosarcoma \n\n2015-05: Right breast cancer, Bilateral skin sparing mastectomies.  \n\tER 7/8, PR 7/8, HER2 negative \nAdjuvant chemo FEC x 3 and D x 3  \n\n2015-12: starts Tamoxifen   \n\n2019-04: Switched to Letrozole  \n\n2022-05: Curetting, FFPE block 1A received, the sarcomatous component is spindle cell. \n- Epithelium: \tIHC positive: Synaptophysin weak patchy,  PR is l+ in 15% \nIHC negative: CK7, EMA (focal), Vimentin/Napsin A/Chromogranin, ER \n- Stroma: \tIHC positive: Vimentin, SMA (patchy) Caldesmon (patchy), PR 1+ in <5% \nIHC negative: ER  \nEntire tumour: p53 is positive - mutation type, Her2 - negative (Score 0), CK20, CD30 \nno loss of MMR proteins \n\n2022-06: Total hysterectomy + BSO, Left pelvic lymph node dissection, peritoneal washings. Block 1Q received \n\tIHC positive: P53 (mutation type), in both carcinoma and sarcoma components) \n\tIHC negative: ER, PR, Her2 \nTumour is predominantly composed of high-grade carcinoma (70%), the sarcoma component is approximately 30% \n\n2022-07: FCC panel, 1 variant detected: PALB2, Ex 13, NM_024675.3, NP_078951.2:p.(Gly1121Valfs*3), ) C5: Pathogenic \n\n2022-10: Blood B1 received  ";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01668_OvarianPannel_19Jul22_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "10Mar23: May22 Sample requested from RCH pathology by Monica.\n10Mar23: Jun22 Sample requested from RCH pathology by Monica.\n29Mar23: May 22 Sample received from RCH by Monica\n29Mar23: Jun 22 Sample received from RCH by Monica";
      patient_germline_mutations = "PALB2";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01668";
  }
