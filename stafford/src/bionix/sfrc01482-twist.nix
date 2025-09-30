with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M9/gM/SHA256E-s1005649732--78aebb28473e62d69a01cf078a8c3ae865ce3e29f8550219563bd858a285c591.gz/SHA256E-s1005649732--78aebb28473e62d69a01cf078a8c3ae865ce3e29f8550219563bd858a285c591.gz";
      r2 = "X4/5J/SHA256E-s1018589341--5027c50da01d2ec59ddd4c901644ba64e1f772c6df92c2bf67f30436f7595319.gz/SHA256E-s1018589341--5027c50da01d2ec59ddd4c901644ba64e1f772c6df92c2bf67f30436f7595319.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PP/ZM/SHA256E-s999657120--711bf1b8dcddb15f48bd96b8c7f5969d498b74fa430f30bc266e88088ee0d9d2.gz/SHA256E-s999657120--711bf1b8dcddb15f48bd96b8c7f5969d498b74fa430f30bc266e88088ee0d9d2.gz";
      r2 = "Vx/8F/SHA256E-s1014011314--10a5c862de45b70fb11f08df4e4e2ef225bb06c8e5c226b901a44b184db35ce5.gz/SHA256E-s1014011314--10a5c862de45b70fb11f08df4e4e2ef225bb06c8e5c226b901a44b184db35ce5.gz";
    }
    {
      site = "S1_T1_22454";
      class = "tumours";
      pdx = true;
      r1 = "jM/2q/SHA256E-s2358765737--bc29688ab2eb0e4f1f2c8843eb2663bd996368a85119f4b6392d23722e28adb5.gz/SHA256E-s2358765737--bc29688ab2eb0e4f1f2c8843eb2663bd996368a85119f4b6392d23722e28adb5.gz";
      r2 = "PQ/0w/SHA256E-s2372233629--b7853911f2742b1d25341350ab1b8fc26596cf7a821f4490bd197fc440aba8fe.gz/SHA256E-s2372233629--b7853911f2742b1d25341350ab1b8fc26596cf7a821f4490bd197fc440aba8fe.gz";
    }
    {
      site = "S1_T1_22454";
      class = "tumours";
      pdx = true;
      r1 = "5J/F5/SHA256E-s2349522479--228f64f6c94cf29673279eff61af8a1e581ce3b0d2040311b0a1d9f59763d9c4.gz/SHA256E-s2349522479--228f64f6c94cf29673279eff61af8a1e581ce3b0d2040311b0a1d9f59763d9c4.gz";
      r2 = "w9/gg/SHA256E-s2367272911--6a0a309e6ec873a3160052a6642e0f81d7c30d469b42281fbbc6828ea40a8e64.gz/SHA256E-s2367272911--6a0a309e6ec873a3160052a6642e0f81d7c30d469b42281fbbc6828ea40a8e64.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "BROCA meeting Clare/Amandine 04.03.2022\nSend S1 for BROCA\n\nRC Meeting 03.02.2022\nDiscussed WGS report.\nNotes from Variant Review Meeting: \nMYC POL1 inhibitor trial - Dose escalation, not many slots but 13 copies so relevant, at Petermac  \nRSF1 - nuclear protein regulating - paclitaxel resistance \no/e promotes paclitaxel resistance \nIGF1R 26 copies - not diagnostic. Trial - radioimmunotherapeutic - at the Austin \nLow TMB \nInactivating mutation in TP53 with CNN LOH \nChr8 amplicon (recurrent in ovarian) \nDiscussion: Saying Clear Cell adenocarcinoma of ovary. \nHas 2 trials available. \n\nMeeting with Clare 18.11.2021\nFresh tissue S1, do WGS on snap frozen \n\nClare's email 09.11.2021\nwe received a biopsy from the Womens which was:\nan appendiceal recurrence\npreviously thought to be clear cell, now thought to be HGSOC\n3 years or more since primary\nisolated recurrence\ncompletely resected\nknown to be gBRCA1/2 WT\nWe will have put into mice\nand we will be reviewing the tissue for ? WGS/WES\nI am not sure of the name/Stafford ID.\nCan you work out which case this is?\nI just want to make sure we have this case down as HGSOC and ? BRCA-like, going for WGS/WES....";
      d_case_summary = "Ovarian clear cell";
      date_consented = "2021-11-04";
      tumour_type = "Clear cell ovary";
      tumour_details = "Initially diagnosed as high grade clear cell ovarian carcinoma. New review is HGSOC, ? BRCA-like. Did WGS, seems clear cell";
      case_details = "66 years old \nTAH approx 20 yr ago for menorrhagia. \n2017-12:\tInitial diagnosis, high grade clear cell carcinoma, ascites drain (7.5L+5L).  \nR ovarian clear cell carcinoma involving associated R tube. Metastatic carcinoma \t\t\tinvolving surface of L tube & ovary, omentum & rectal nodule. FIGO stage III \nOpen TAH BSO, omentectomy, adhesiolysis, suture of laceration of large bowel \nIHC positive: Vimentin, Pax8, WT1 \nIHC negative: Synaptophysin, Chromigranin \nP53 WT, ER3+ in 60 %, PR 3+ in 5% \n2018-01:\tCarbo/Taxol x6. \n2018-07:\tBRCA1/2 testing negative \n2021-09:\tBiopsy to investigate recurrence,  HGSOC not clear cell \nFIGO stage III ovarian cancer \nIHC positive : CK7, P53 mut, WT1, PAX8 \nIHC negative: napsin A, CK20 \n-----------------------------------------------------------------------\npreviously thought to be clear cell, now thought to be HGSOC\n3 years or more since primary\nisolated recurrence\ncompletely resected\nknown to be gBRCA1/2 WT";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01482";
  }
