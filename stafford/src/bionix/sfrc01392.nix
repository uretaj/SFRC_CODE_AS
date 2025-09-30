with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1U";
      class = "tumours";
      pdx = false;
      r1 = "8m/k6/SHA256E-s26746064505--ff1f35ccd1f610536da52a6687157d158b6de0404061b69f6fd219bc2ff0cc7e.gz/SHA256E-s26746064505--ff1f35ccd1f610536da52a6687157d158b6de0404061b69f6fd219bc2ff0cc7e.gz";
      r2 = "Qv/Zp/SHA256E-s27277394430--d61e71497ef25e49bf339b4518ce17a5e0eb9268ef1bd4e21c871549b6f400e4.gz/SHA256E-s27277394430--d61e71497ef25e49bf339b4518ce17a5e0eb9268ef1bd4e21c871549b6f400e4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gQ/pp/SHA256E-s4258247962--8a6de352c00a3fba0eea80cbe9a2db198eb424daa0a1864e2a3d4c4122727cbe.gz/SHA256E-s4258247962--8a6de352c00a3fba0eea80cbe9a2db198eb424daa0a1864e2a3d4c4122727cbe.gz";
      r2 = "1K/P2/SHA256E-s4504600315--da5b91ae553844cc0d73c936c42270037cf1c206a35d4e8ea4b256e849c5e4b1.gz/SHA256E-s4504600315--da5b91ae553844cc0d73c936c42270037cf1c206a35d4e8ea4b256e849c5e4b1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.06.2022\nRachael to ask Devindee to recall colon cancer and breast cancer blocks for WES and neoantigens. Nanostring for Block 1U.\n\nBroca meeting 21.03.2022\nAsk Devindee to recall more 10um uncharged slides from block 1U\n\nClare's meeting 02.12.2021\nDo WES and BROCA on block 1U\n\nBROCA meeting with Clare 04.11.2021\nOrganise WES and BROCA after block review ";
      d_case_summary = "3x primary (breast 2000, colon 2011, serous endometrial 2016).\nMetastatic recurrence of serous endometrial cancer\n- Complete response to chemotherapy and disease free >18 months\nEnrolled for research only.";
      tumour_type = "HGSEC";
      tumour_details = "Multiple primary: HGSEC, colon cancer, breast cancer";
      case_details = "3x primary (breast 2000, colon 2011, serous endometrial 2016).\nMetastatic recurrence of serous endometrial cancer\n- Complete response to chemotherapy and disease free >18 months\nEnrolled for research only.\n\n2016-06: Hysterectomy and BSO. Endometrium fixed and blocked (Block 1U).\nHistopath: p53: diffuse nuclear staining\n\n2019-05: Histopath on core biopsies of right supraclavicular lymph node\nIHC positive: PAX-8 and CK7\nIHC negative: ER, SATB2, CK20, GATA3\n\nHistopath on endometrial curettings from 2016:\nIHC positive: CK7, PR (moderate in 50% tumour nuclei)\nIHC negative: ER, CDX2, GATA-3, CK20, WT1 \n\n2021-06: Blood B1 received\n\n2021-10: FFPE block 1U received\n\n2021-12: 1U and B1 DNA sent for WES";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2016 block received by Warren 26/10/21 from SSWP/RPAH";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01392";
    predictNeoantigens = true;
  }
