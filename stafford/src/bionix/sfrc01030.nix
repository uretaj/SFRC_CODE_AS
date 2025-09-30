with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "g8/4Q/SHA256E-s29948527604--e664a710c4d38b2f085d297367946fdeca1278ce620d47a99c8cf22b1b46fd4a.gz/SHA256E-s29948527604--e664a710c4d38b2f085d297367946fdeca1278ce620d47a99c8cf22b1b46fd4a.gz";
      r2 = "G1/Wm/SHA256E-s29988821574--5df5a2ca620f857d3564a60f1fd31229e12e5c2b342b0afdd6dd9ae4b7109da4.gz/SHA256E-s29988821574--5df5a2ca620f857d3564a60f1fd31229e12e5c2b342b0afdd6dd9ae4b7109da4.gz";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "J7/VF/SHA256E-s67025369416--712adff27c718c8525eeb0dca9a404abb16d9ab6f6a34589d27c9330e5835bce.gz/SHA256E-s67025369416--712adff27c718c8525eeb0dca9a404abb16d9ab6f6a34589d27c9330e5835bce.gz";
      r2 = "kP/83/SHA256E-s69423103017--733f662163d3f5edb276823ca8711b03615e01f63b2503586c5ee486a31c0624.gz/SHA256E-s69423103017--733f662163d3f5edb276823ca8711b03615e01f63b2503586c5ee486a31c0624.gz";
    }
    {
      site = "B1";
      class = "normals";
      suffix = "_001";
      prefix = "fastqs/multi-pri/Sample_SFRC01030-B1/SFRC01030-B1_S1";
      hash1 = "860f5476feacf865c7e1fef032da5a0888c7d1160c64d2134579f5087d24001456c41603aa20758350f6201fa0901d6534ad7bf64d0caf731aedbc3a48f75fd8";
      hash2 = "44125bb330a91117e62faf7d94061f57ce1d748ba016786563eb124063a363f6eeb75f83306a7453c04a5d77eb6d176d41984589514ac38d2cd1af5224457d0a";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2023.05.18\nDiscussion Her2 IHC-ISH\nHER2 IHC: Positive 3+\nHER2 ISH: Tumour is classified as positive/amplified for HER2\nPlan: From when we discussed the WES report: ERBB2 amplification, CN 31. HER2 IHC and ISH on HGSFT block- wait for these results before reporting. Can count for MoST trial. \nBriony to send report. \n\nRC Meeting 27.04.2023\nDiscussed WES reports for Block 1A (HGSFT) and 1B (NSCLC)\nHGSFT: ERBB2 amplification, CN 31. HER2 IHC and ISH on HGSFT block- wait for these results before reporting. Can count for MoST trial (submitted 28.04.2023)\nNSCLC: Somatic KRAS already known (on lung somatic panel report). No report--for multiple primary project. \n\nClare's Meeting 26.08.2022\nDeep WES for Block 1A (omental tumour biopsy). \n\nClare's Meeting 14.07.2022\nFFPE fallopian tube block 1E has no tumour, can do nothing with it, so no BROCA. We have WES on NSCLC block which is already completed. Patient had biopsy done in Dec 2021, Briony to find letters.\n\nRachael and Clare meeting 18.05.2022\nRecall fallopian tube block which has tumour, send for BROCA next round.\n\nAmandine Notes 04.04.2022\nBlock E reviewed by Gayanie indicates no tumour.  Not possible to go ahead with Broca on that block. \n\nBroca meeting Clare/Amandine 07/07/2021\nSend SFRC01030_E for Broca, priority cat 2\n\nUpdate: sample was not sent for BROCA Aug 2020 because there is no PDX.\n\nMeeting notes 2020.03.12\nKristy to get Gayanie to look at path reports to see if there are other blocks that can be called in. \n\nRedcap meeting with Clare 09.03.2020\nClare would like to send this case for BROCA but the endometrium block has low tumour purity. Discuss a plan at next Thusrday meeting.";
      d_case_summary = "HGS FT, endometroid ca endo, NSCLC (adeno) sKRAS G12C,";
      date_consented = "2016-11-17";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS FT, Endo Ca, NSCLC (adeno), picked up early and cleared each time";
      case_details = "83yo woman \n\n2013-01: Diagnosed Stage 1a endometrioid adenocarcinoma of uterus and Grade 1c HGS fallopian tube cancer \n-Surgery: TAH/BSO\n-Treatment: SA carbo in3/52x6 nuclear\n-Histopath on endometriod adenocarcinoma and fallopian tube: p53 positive\n-Endometrium (Block 1L), fallopian tube (Block 1E/E) fixed and blocked.\n\n2016-05: Diagnosed Stage 1a Lung primary. \nLung Somatic panel: KRAS G12C mutation identified (which doesn't fit HGS Dx)\nIHC positive: TTF1\nIHC negative: PAX8, WT1, Gata3\n-Surgery: right middle lobectomy. Tissue fixed and blocked (Block 1B)\n\n2016-11: Familial Breast Cancer Gene Screen: No pathogenic variants detected.\n\n2016-12: FFPE block 1L (endometrium) received\n\n2017-03: Sections from Block E (fallopian tube) and Block 1B (lung) received.\n\n2017-03: Blood B1 received\n\n2021-05: Blood B2 received\n\n2021-10: Blood B1 and Lung 1B DNA sent for WES\n\n2021-12: Diagnosed metastatic high grade serous carcinoma of tubo-ovarian origin following omental biopsy. (tissue fixed and blocked (Block 1A)\nHistopath:\n-IHC positive: ER (2+ in 50% tumour nuclei), CK7, p16 (block-like nuclear and cytoplasmic expression), WT1, p53 (diffuse and strong)\n-IHC negative: PR\n\n2022-06: Block 1E (right tube and ovary from endometrioid Dx) received. \n\n2022-08: Block 1A (omental tumour from 2021-12) received.\n\n2022-11: FFPE Block 1A sent for WES\n\n";
      pre_analysis_mutations = "sKRAS G12C";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01030_FCCBreastPanel_16Nov2016_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "20/05/2022: 2013 sample (block E) requested from RWH pathology by Devindee. \n22/06/2022: 2013 sample block E received from RWH pathology by Devindee. \n28/07/2022: 2021 sample requested from Cabrini pathology by Devindee.\n08/08/2022: 2021 sample slides received from Cabrini pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01030";
    capture = CREv2;
    predictNeoantigens = true;
  }
