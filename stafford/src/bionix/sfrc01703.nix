with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "qK/Zg/SHA256E-s5622294234--e94bf11d67744d9226cca80cdc64d09120c079b613ea225651656eee03902a69.gz/SHA256E-s5622294234--e94bf11d67744d9226cca80cdc64d09120c079b613ea225651656eee03902a69.gz";
      r2 = "24/w0/SHA256E-s5622320968--e9e5b8747f111072cbbb1a58c38d2d39a5c0151cf8adc00194f4f61feffec1c1.gz/SHA256E-s5622320968--e9e5b8747f111072cbbb1a58c38d2d39a5c0151cf8adc00194f4f61feffec1c1.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "Jk/Xp/SHA256E-s5768734943--172c2fa5816b3a94d1f13fc46b03e58804012cd0562e1d1ff1bbd22fc93bdab4.gz/SHA256E-s5768734943--172c2fa5816b3a94d1f13fc46b03e58804012cd0562e1d1ff1bbd22fc93bdab4.gz";
      r2 = "0f/wJ/SHA256E-s5802746526--f796a826ea1c27f37e8933d7cd7e9c0d40f8d42c1573d5d13e0ea0059931862a.gz/SHA256E-s5802746526--f796a826ea1c27f37e8933d7cd7e9c0d40f8d42c1573d5d13e0ea0059931862a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G3/w9/SHA256E-s4191823810--7afaa51a9285902b77b0fb53269be8ddfdf9a054de6552ef173aa74f736b33d6.gz/SHA256E-s4191823810--7afaa51a9285902b77b0fb53269be8ddfdf9a054de6552ef173aa74f736b33d6.gz";
      r2 = "WW/qK/SHA256E-s4213442586--466fb834e9a1e031afd70116adfc0277bbb79582b0f35e6b611a1e3da256ac6e.gz/SHA256E-s4213442586--466fb834e9a1e031afd70116adfc0277bbb79582b0f35e6b611a1e3da256ac6e.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Q6/Z7/SHA256E-s4412362333--895c76ef45fead5acebc3ae266a7392eaf2ee2fa08213e2c12637cd0ed6c5273.gz/SHA256E-s4412362333--895c76ef45fead5acebc3ae266a7392eaf2ee2fa08213e2c12637cd0ed6c5273.gz";
      r2 = "z5/4X/SHA256E-s4466549677--02ad2f782602c504d916a801f302508b9a6b24065ac2c67b16182b36ab9ab53c.gz/SHA256E-s4466549677--02ad2f782602c504d916a801f302508b9a6b24065ac2c67b16182b36ab9ab53c.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "0g/z1/SHA256E-s11369854375--7106d141eee56ae869bc57612f8c9a31f84bd4a720f724573fef2cbc71589904.gz/SHA256E-s11369854375--7106d141eee56ae869bc57612f8c9a31f84bd4a720f724573fef2cbc71589904.gz";
      r2 = "Wg/4w/SHA256E-s11468236324--7580bb4df292d248c09561d12de65c903fdb25278507629e5f2f9def80888843.gz/SHA256E-s11468236324--7580bb4df292d248c09561d12de65c903fdb25278507629e5f2f9def80888843.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3z/Wz/SHA256E-s3996630812--896dc10ae367f9526243594aa25165a76004acbfe8c9382ec5e750cdd901cad2.gz/SHA256E-s3996630812--896dc10ae367f9526243594aa25165a76004acbfe8c9382ec5e750cdd901cad2.gz";
      r2 = "V3/mv/SHA256E-s4064385362--a62c4fc2be9f3b610dff6fd27d5adb89d4d59d496baa5a443616d8c1c31fb5bd.gz/SHA256E-s4064385362--a62c4fc2be9f3b610dff6fd27d5adb89d4d59d496baa5a443616d8c1c31fb5bd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 1.2.2024 - TWIST WES Block 1.1:\n- Include the CIC variant and Damien can decide whether to keep in or not. \n- HPV virus type 16 detected \n- Borderline HRD based on CN plots.\n\n\n\n\nSample meeting 11.08.2023\nPlan for FFPE block 1.3 (lung, 15-20%) and FFPE block 1.1 (vulval cancer, 50%): WES on both blocks? One of them is very borderline15-20%? Cut off for WES twist is at least 20% \n\nAS CUTOFF FOR TWIST WES IS AT LEAST 20% THEN I THINK IT DEPENDS HOW MANY SECTIONS YOU HAVE. IF UNLIKELY TO GET ENOUGH DNA FOR TWIST WES THEN CAN ORDER A PANEL TEST FROM PETERMAC EG LUNG OR COLORECTAL PANEL - OR TSO500 \n\nCAN YOU PLEASE SEND THIS ONE TO MATT TO ASK ABOUT BORDERLINE TWIST WES IF YOU THINK YOU HAVE ENOUGH SECTIONS TO DO PLENTY OF DNA - AFTER CHECKING WHICH PANEL (UNLESS IT IS OK FOR TSO500) \n\nRediscussed lung when DNA extracted, but what should we do for the vulval cancer? \n\nWait for WES Twist is ok  (only on block 1.1 as the other block is too low tumour purity for now) \n\nClare sample meeting 14.07.2023\nPlan for fresh tissue S1: low tumour purity, not good enough fro anything. Recall a FFPE block from the surgery. Triple primary for Kristy. ";
      blood_recall_history = "17Jul23: Jul23 sample requested from Melbourne Pathology by Monica\n18Jul23: Jul23 sample received from Melbourne Pathology by Monica";
      urgency_details = "As per Monica mentioned in the WhatsApp group.";
      d_case_summary = "Multiple primary cancers";
      date_consented = "2023-01-10";
      tumour_type = "Gynae cancer other";
      tumour_details = "new vulval ca, lung adenocarcinoma, recent T cell lymphoma    Recurrent HPV16 and HPV non-16/18 infection";
      case_details = "53 years old female with CGL (chronic granulocytic leukaemia)  \n********1ST PRIMARY CANCER*****************\n\n2022-11: \tPeritoneal biopsy, initial diagnosis Vulva cancer, Squamous cell carcinoma of perineum \n********2ND PRIMARY CANCER****************\nIHC positive: P16, FFPE block 1.1 received    \n\n 2023-02: \tBlood B1 received  \n\n2023-07:   \tLung surgery. Fresh tissue S1 received,  \n\nLung adenocarcinoma Stage IB,\n********** 3RD PRIMARY CANCER **************\nFFPE block 1.3 received  \nIHC positive: CK7, TTF1 and napsin A  \nIHC negative: CK20, GATA3, CDX2, PAX8  ";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "17Feb2023: Nov2022 sample requested from Eastern Health Pathology by Monica\n06Mar23: Nov2022 sample re-requested from Eastern Health Pathology by Monica\n30May23: Nov2022 sample re-requested from Eastern Health Pathology by Monica\n10Jul23: Nov2022 sample received from Eastern Health Pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    inherit samples;
    name = "SFRC01703";
    capture = TwistV2HR;
  }
