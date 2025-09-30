with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7x/WV/SHA256E-s50222366462--b9ddfb754717c85e433bf25bda842fd2da8e82d1cec43feb5dff6e55937b9dea.gz/SHA256E-s50222366462--b9ddfb754717c85e433bf25bda842fd2da8e82d1cec43feb5dff6e55937b9dea.gz";
      r2 = "qF/jm/SHA256E-s54254755285--2f55757d10298b80c364c26498ee3d949e48f72822870d5ec7d08cbed65006b8.gz/SHA256E-s54254755285--2f55757d10298b80c364c26498ee3d949e48f72822870d5ec7d08cbed65006b8.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "MW/0x/SHA256E-s93629392211--0308f661d75a9d60a54b07a12926b44898853043c823badf1f67c5d0792896df.gz/SHA256E-s93629392211--0308f661d75a9d60a54b07a12926b44898853043c823badf1f67c5d0792896df.gz";
      r2 = "5k/9V/SHA256E-s102993022484--707f710eaf8edf842788c56b63832042e9c8a6d9f3baa9944435dcf53b412ae8.gz/SHA256E-s102993022484--707f710eaf8edf842788c56b63832042e9c8a6d9f3baa9944435dcf53b412ae8.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "fQ/M8/SHA256E-s9471239757--293515c207f33d86c8f2207d8506da6a2549eceda9d7c7d688110c0246ffa406.gz/SHA256E-s9471239757--293515c207f33d86c8f2207d8506da6a2549eceda9d7c7d688110c0246ffa406.gz";
      r2 = "xG/X5/SHA256E-s9458990715--c4c33c4c874a52ce86cf8228f1ab2da79bcfb2bc91f3c02cb7cd25ac82ed215a.gz/SHA256E-s9458990715--c4c33c4c874a52ce86cf8228f1ab2da79bcfb2bc91f3c02cb7cd25ac82ed215a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nSomatic BRCA1 not in SFRC report - needs looking into further. Different transcripts! \nBRCA1 reversion mutation is very interesting. \nCDKN2A and MTAP (like the case 01435). Andrew to look at the location of these genes. \nMTAP is not in COSMIC Cancer gene census, so not named in table. Deleted region includes MTAP location. \n\nSample meeting discussion 2023-05-18\nPlan: Submit S1or WGS and BROCA , waiting for blood ";
      d_case_summary = "2012 - Past history HR  breast cancer\n2017 - Stage 3b HGSOC, debulked and adjuvant carbo-taxol\n2020 - Relapsed, unresectable pelvic recurrence; 2L carbo gem --> maintenance olaparib (4/2021, ceased after 1 dose, neutropenia)\n4/2023 - Pelvic progression.\n\nTSO-500 6/2022: BRCA1 VAF 69.3%, TP53, NF1, RB1";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, has had breast cancer";
      case_details = "56 years old female \n2012 Breast cancer, mastectomy, Aromatase inhibitor \n2017 Ovarian Cancer  debulking, BRCA1 germline mutation \n2017-08\tCompleted adjuvant chemotherapy  Paclitaxel/cisplatin C6 \n2020-10\trecurrence ovarian cancer \n2020-11 to 2021-02\tSecond line Carboplatin/Gemcitabine  \n2020 Right mastectomy  \n2021-04\tOlaparib \n2022-06\tTSO 500 \nBRCA1 (1A) NF1(IIC), TP53 and RB1(IID), low TMB, no VUS \n2023-04\t\tReceived fresh tissue S1 from surgery  \nIHC positive: WT1, p16 mosaic pattern, BerEP 4, PAX8, ER (2 + to 3+ in 89%)\nIHC negative: p53 null phenotype - mutational pattern, GATA 3, PR and p63";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01747_FCPanel_11Aug2017_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_germline_mutations = "BRCA1";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01747";
  }
