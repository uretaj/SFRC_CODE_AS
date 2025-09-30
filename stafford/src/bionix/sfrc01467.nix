with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "mm/XP/SHA256E-s45517804373--5dfe9ee52dd7e908849f61d3978e2956394f2546100273ff1312b97595c741ba.gz/SHA256E-s45517804373--5dfe9ee52dd7e908849f61d3978e2956394f2546100273ff1312b97595c741ba.gz";
      r2 = "P2/3f/SHA256E-s48261544312--7f95293005c99504c348861cd70e7430ed857f38eb83d8bb9f1d06e3de43eb6f.gz/SHA256E-s48261544312--7f95293005c99504c348861cd70e7430ed857f38eb83d8bb9f1d06e3de43eb6f.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Q8/1z/SHA256E-s91248655715--e630d62cfa6c8bea14e98c886fd8a6d278a2672657fbd05bdb47cdfc4cd156c1.gz/SHA256E-s91248655715--e630d62cfa6c8bea14e98c886fd8a6d278a2672657fbd05bdb47cdfc4cd156c1.gz";
      r2 = "Pf/Jp/SHA256E-s98292132907--97fb81b0e13894632ec5e9682abaf03927fdfb0a3a92a0c137f8b639e794f871.gz/SHA256E-s98292132907--97fb81b0e13894632ec5e9682abaf03927fdfb0a3a92a0c137f8b639e794f871.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "q7/9q/SHA256E-s5878643557--aa60b764a627d223638fbcbf57064cd272403bdef9a1b6dc24829c178610dcec.gz/SHA256E-s5878643557--aa60b764a627d223638fbcbf57064cd272403bdef9a1b6dc24829c178610dcec.gz";
      r2 = "P5/G3/SHA256E-s5811729291--1e2216c6a184863c70bc43a59d8ef702fec664a3e0b8f92fa83b240f84bb7563.gz/SHA256E-s5811729291--1e2216c6a184863c70bc43a59d8ef702fec664a3e0b8f92fa83b240f84bb7563.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 02.11.2023\nDiscussed WGS report with SFRC data.\n\nClare sample meeting 2023.09.21\nPlan in fresh tissue S2: WGTS\n\nRC Meeting 03.02.2022\nDiscussed TSO500 report.\nDiscussion: Nothing reported \n\nClare's meeting 02.12.2021\nDNA extraction on S1 was very low. Send sample for TSO500 rather than WES\n\nClare's meeting 21.10.2021\nOrganise WES on FFPE block from fresh tissue S1";
      urgency_details = "Rapid disease, as per treating clinicians";
      d_case_summary = "Woolfian duct origin tumour";
      date_consented = "2021-10-06";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Stage II ovarian undifferentiated carcinoma - rare type malignant female adnexal tumour of Wolffian origin";
      case_details = "29 years old female  \n\n2021 March:\tinitial diagnosis and surgery  \nImmunochemistry --> Positive: AE1/3, CD10, vimentin, EMA, P16, ER 80%, PR 80% \n     --> Negative: CK7, CK20, inhibin, calretinin, S100, CD56, \t\t\t\t\t           synaptophysin, chromogranin, SMA, CD30, PLAP, cKit, HCG, AFP, \t\t\t\t           GFAP, Melan A, P53, Pax8 \n    --> Ki67 20-50% \n\nFOXL2 and Dicer 1 testing to exclude Sertoli Leydig \n\n2021 May: 1st line Cisplatin/Etoposide, completed 4 cycles Jul 2021- good response. Commenced treatment with Goserelin (?date end)\n\n2021 Oct:\tSurgery (Fresh tissue S1 received)- Laparoscopic excision of pelvic tumour. Commenced treatment with Anastrozole, ceased Jan 2022\n\nDec 2022 PET CMR\n\nJun 2023 PET recurrent disease in pelvis\n\nAug 2023 Secondary cytoreduction- Laparotomy TAH RSO, omentectomy, subsegmental liver resection. Immunohistochemistry:\n•\tPositive: AE1&3, Vimentin,CAM5.2, EMA, CD10, Calretinin, Inhibin, CK7, AR/AndrogenReceptor, Synaptophysin, ER/PR (mod-strong), P53wt.\n•\tNegative: GATA3, CK20, PAX8, TTF-1, WT1, CKIT(CD117), SF-1 \n•\tKi67 40-50%\n\nSep 2023 For clinical observation\n";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01467";
  }
