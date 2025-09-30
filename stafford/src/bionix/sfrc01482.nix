with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "w3/ZX/SHA256E-s48329533913--d97f2766618b3f03f2e40f0a602ba49d5ab10e26d678949611458bafbcd41cb8.gz/SHA256E-s48329533913--d97f2766618b3f03f2e40f0a602ba49d5ab10e26d678949611458bafbcd41cb8.gz";
      r2 = "0G/1x/SHA256E-s50420426933--281a96fdc7b470694381b301f29caae2bdacdcd51c40291016be902c821108a4.gz/SHA256E-s50420426933--281a96fdc7b470694381b301f29caae2bdacdcd51c40291016be902c821108a4.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "FQ/42/SHA256E-s13127039268--c4c09e75a1cb750cc84a7a858a1c17ef1c2591929d2beb5d84fb480af0cbe35e.gz/SHA256E-s13127039268--c4c09e75a1cb750cc84a7a858a1c17ef1c2591929d2beb5d84fb480af0cbe35e.gz";
      r2 = "jG/xK/SHA256E-s13792896562--e4da02323fc665f1bd5f3844338d5160dd19e748a663cebe78cd5abc74e98fd6.gz/SHA256E-s13792896562--e4da02323fc665f1bd5f3844338d5160dd19e748a663cebe78cd5abc74e98fd6.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "z4/G0/SHA256E-s70372301419--440781004ff4962313b4134aaaf0c2eab55ae9495e499e3c6001365ccb9b3a2e.gz/SHA256E-s70372301419--440781004ff4962313b4134aaaf0c2eab55ae9495e499e3c6001365ccb9b3a2e.gz";
      r2 = "kW/Qv/SHA256E-s71935030357--b0676fd928323b50321512c2264b994c289d0734d41dd45f12084a68959dfcec.gz/SHA256E-s71935030357--b0676fd928323b50321512c2264b994c289d0734d41dd45f12084a68959dfcec.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "41/z0/SHA256E-s10452029293--0dad2eeae854baab2485393c156a03e8bcc0ac25d4644f7b2206e112dfb7c15e.gz/SHA256E-s10452029293--0dad2eeae854baab2485393c156a03e8bcc0ac25d4644f7b2206e112dfb7c15e.gz";
      r2 = "G5/JV/SHA256E-s10497726197--c07e1b4c3e9b9b2e5ab03f250a150eae0a721271aa403d8fe04f79dec597a4c4.gz/SHA256E-s10497726197--c07e1b4c3e9b9b2e5ab03f250a150eae0a721271aa403d8fe04f79dec597a4c4.gz";
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
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01482";
  }
