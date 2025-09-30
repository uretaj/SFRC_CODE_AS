with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "zz/Q8/SHA256E-s2852919336--604c4ae4cfaa980194a1cd76311f4c5e9f0f4a69c84ddc6027bb16a95297254b.gz/SHA256E-s2852919336--604c4ae4cfaa980194a1cd76311f4c5e9f0f4a69c84ddc6027bb16a95297254b.gz";
      r2 = "J7/QP/SHA256E-s2912763590--3c3b6d7b06d08b37ca283b19902aaf4c01289552e4bdf925325a3aa28dbdd04d.gz/SHA256E-s2912763590--3c3b6d7b06d08b37ca283b19902aaf4c01289552e4bdf925325a3aa28dbdd04d.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Q5/Xp/SHA256E-s19038947250--24e6418f87eeed355a23e8f3dc3c67d2f75c24f0c91d830fe9df39e336adb590.gz/SHA256E-s19038947250--24e6418f87eeed355a23e8f3dc3c67d2f75c24f0c91d830fe9df39e336adb590.gz";
      r2 = "0F/xv/SHA256E-s19267007885--94580585f8965b78d1edabf26e9eada4a1ae92c7b0484c8ba5e53cdf7624b9fb.gz/SHA256E-s19267007885--94580585f8965b78d1edabf26e9eada4a1ae92c7b0484c8ba5e53cdf7624b9fb.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1m/Kj/SHA256E-s4868754349--472cd94ce2f0636480f867097571b6c80a02714afd61979485f3f3e3b8e11599.gz/SHA256E-s4868754349--472cd94ce2f0636480f867097571b6c80a02714afd61979485f3f3e3b8e11599.gz";
      r2 = "fX/P4/SHA256E-s5179025290--d2f21b36b625f80a84beb0697b55676d58fe0382962caa2033628d07cb08f7a0.gz/SHA256E-s5179025290--d2f21b36b625f80a84beb0697b55676d58fe0382962caa2033628d07cb08f7a0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "21Jul23 - Mandy Paul thinks that together they are not interesting but could be work documenting for later as we learn more about ATM. Common for people to have two variants but not 3 or more. \"true VUS\"\n\nRC Meeting 11.10.2022\nDiscussed WES report:\nGermline variants of ATM - discuss with Paul James \n\nLook at ATM via IHC?? - breast block; tiny areas of tumour @ 20% purity, might not get enough for sequencing\n\nLeave breast block for now (Kristy to consider if visium FFPE with Cytassist would be of any value)\n\nClare, Ratana, Rachael 30.09.2022\nBlock 1.4 (breast) flagged for WES: tiny areas of tissue at 20% purity. Extract DNA, see how much we have to decide to send for WES or TSO500.\n\nClare's meeting 30.06.2022\nSend Block 1A (vulval) for urgent WES\n\nClare and Rachael meeting 06.05.2022\nBlock 1.4 (breast): WES when ready (Cat. 3)\nEmail Devindee to recall vulval block. Have it reviewed by Gayanie and WES ASAP";
      d_case_summary = "Four primary cancers: CLL 20 years ago, Bowel cancer - surgical resection 2011, Vulval Cancer Dx July 2019 - now recurrent, Stage I - L) breast cancer. WLE   BLNE Sept 2020";
      date_consented = "2022-01-31";
      tumour_type = "Gynae cancer other";
      tumour_details = "Four primary cancers: CLL 20 years ago, Bowel cancer - surgical resection 2011, Vulval Cancer Dx July 2019 - now recurrent, Stage I - L) breast cancer.";
      case_details = "79F\n\n2002: CLL diagnosis\n\n2011: Bowel cancer & surgical resection\n\n2019-07: vulval cancer, now recurrent. Vulval punch biopsy fixed and blocked (Block 1A)\nIHC: Ck AE1AE3++, HER2 2+, FISH negative, p63 (-)\nIHC negative: CK20, PAX8\nWhole pelvis XRT + Bilateral inguinal nodes - 54gy/25 fx + weekly cisplatin completed 15/10/19. \n11/09/2019 - 15/10/2019 Radiation\n\n2020-09: Stage I, L) breast cancer. WLE + BLNE. \nL) breast tissue fixed and blocked (block 1.4)\nIHC positive: ER (positive strong >90%), PR (positive strong 70%), Ki67 5%\nIHC negative HER2\n\n2021-01 - 2021-03: adjuvant anastrazole. ceased early due to severe muscle cramps, confusion. No further endocrine therapy. No adjuvant radiotherapy.\n\n2021-09: MAGIC sequencing report on breast tissue taken from 2020-09 surgery:\n-No pathogenic germline mutations detected\n-Somatic PIK3CA (p.His1047Leu)\n-CCDN1 amplification: 20 copies\n-HRD score: 11\n-Signature 3: 32%\n\n2021-10: recurrence of vulval cancer\n\n2022-02: consent to SFRC program re multiple primary project PET scan & attempt to biopsy for WGS regarding therapeutic guidance.\n\n2022-04: FFPE sections from block 1.4 (breast 09-2020) received\n\n2022-05: Blood B1 received\n\n2022-05: FFPE sections from Block 1A (vulval punch 2019-07) received.\n\n2022-08: DNA from FFPE Block 1A and Blood B1 sent for WES";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "01/04/2022: Sept 2020 sample requested from MH pathology by Devindee. \n14/04/2022: Sept 2020 slides received from MH pathology by Devindee. \n16/05/2022: July 2019 sample (vulval ca) requested from Dorevitch pathology by Devindee. \n23/05/2022 notification: only 10x5um slides can be provided \n31/05/2022: July 2019 sample slides received from Dorevitch pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01519";
    predictNeoantigens = true;
  }
