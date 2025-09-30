with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "v8/Z6/SHA256E-s824841323--3e4b2e55d252c83ed5b3779b0a84c065740b8cc56e35d66bf88c041926b2f8d1.gz/SHA256E-s824841323--3e4b2e55d252c83ed5b3779b0a84c065740b8cc56e35d66bf88c041926b2f8d1.gz";
      r2 = "p6/JJ/SHA256E-s829119359--fa10efa35807a8768a60593aca765a608ff751d171b23ca6e61abfa74994a53f.gz/SHA256E-s829119359--fa10efa35807a8768a60593aca765a608ff751d171b23ca6e61abfa74994a53f.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "Vp/g0/SHA256E-s846541859--9f11677939b98db80c08dcabd1c53ed79f7208a6d765c4b9df91178c2d5f61cb.gz/SHA256E-s846541859--9f11677939b98db80c08dcabd1c53ed79f7208a6d765c4b9df91178c2d5f61cb.gz";
      r2 = "7j/8M/SHA256E-s853279074--14503abf49ddf78d494cbe95989c009d074073f601f9acd179195adcec08bbb2.gz/SHA256E-s853279074--14503abf49ddf78d494cbe95989c009d074073f601f9acd179195adcec08bbb2.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "ZM/22/SHA256E-s846343870--0bda0e5775184889558429beb030b8bcf4b953d32124ef59ed8c9407f7748b67.gz/SHA256E-s846343870--0bda0e5775184889558429beb030b8bcf4b953d32124ef59ed8c9407f7748b67.gz";
      r2 = "MG/Jm/SHA256E-s854234761--d2584adfeb66d9048b7731e48bf34a7489d3ade7ff1c9fb44a1e5124ab4a2641.gz/SHA256E-s854234761--d2584adfeb66d9048b7731e48bf34a7489d3ade7ff1c9fb44a1e5124ab4a2641.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "Fq/2x/SHA256E-s861871367--7287bb297280ef67776ca7ef96995738f7fd47551b5b36e59b34c7129432b50f.gz/SHA256E-s861871367--7287bb297280ef67776ca7ef96995738f7fd47551b5b36e59b34c7129432b50f.gz";
      r2 = "Xx/1g/SHA256E-s869127094--e350b7261ec147712351c3799b1ab40914fe8d9590d13bf3f788674037eb9235.gz/SHA256E-s869127094--e350b7261ec147712351c3799b1ab40914fe8d9590d13bf3f788674037eb9235.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "z6/GM/SHA256E-s877183370--7ee6c4d340e9f886428d7abd8c1051ed3664a77ca8c11a3d5270900358d3cae2.gz/SHA256E-s877183370--7ee6c4d340e9f886428d7abd8c1051ed3664a77ca8c11a3d5270900358d3cae2.gz";
      r2 = "2Q/fk/SHA256E-s885318263--12761c20c96fcd53842e2fe8411971cc98913cb5839d2f206167a2be6c06761f.gz/SHA256E-s885318263--12761c20c96fcd53842e2fe8411971cc98913cb5839d2f206167a2be6c06761f.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "v9/Jw/SHA256E-s821965797--3a5d59bb15d36a648a3a99d5e79aa6137ebc570304122baf2e3fa7ea395b0c0e.gz/SHA256E-s821965797--3a5d59bb15d36a648a3a99d5e79aa6137ebc570304122baf2e3fa7ea395b0c0e.gz";
      r2 = "Vm/pp/SHA256E-s826623486--12adc2de7e26692dbe5f22fcacad4453d16348be1f9636d2d7abd6afa3c9758c.gz/SHA256E-s826623486--12adc2de7e26692dbe5f22fcacad4453d16348be1f9636d2d7abd6afa3c9758c.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "6x/z8/SHA256E-s869311230--8b0ef9bebaddeeb235344efbb7df10ea87b00a933f614196931684ed18c4ac96.gz/SHA256E-s869311230--8b0ef9bebaddeeb235344efbb7df10ea87b00a933f614196931684ed18c4ac96.gz";
      r2 = "G8/v8/SHA256E-s877044626--670e5eebff5a5f2fe45bd0bf432b704badd862beddbdba1b3902e860fc14c5e2.gz/SHA256E-s877044626--670e5eebff5a5f2fe45bd0bf432b704badd862beddbdba1b3902e860fc14c5e2.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "7j/FQ/SHA256E-s809810346--e083f54288e106dff8d2a6fd5f8aab5943fbf9337fd8d1a6c093a197b649f6ca.gz/SHA256E-s809810346--e083f54288e106dff8d2a6fd5f8aab5943fbf9337fd8d1a6c093a197b649f6ca.gz";
      r2 = "J7/xM/SHA256E-s813475980--8124f107e97f291cbcb4681539f3b55a2d94395ba3efd0e60e1d873f72b68de1.gz/SHA256E-s813475980--8124f107e97f291cbcb4681539f3b55a2d94395ba3efd0e60e1d873f72b68de1.gz";
    }
    {
      site = "EH1";
      class = "tumours";
      pdx = false;
      r1 = "xV/Pg/SHA256E-s1609121521--1d04ee1e0ce26266cc67c359e636bbcb5c96494de75014d3107b4c4be2f97120.gz/SHA256E-s1609121521--1d04ee1e0ce26266cc67c359e636bbcb5c96494de75014d3107b4c4be2f97120.gz";
      r2 = "9f/z6/SHA256E-s1667525994--09c2c88fabc7c41ea5f893427a9cdfcdd3b98a460378bcaf6375d5f7dd611f80.gz/SHA256E-s1667525994--09c2c88fabc7c41ea5f893427a9cdfcdd3b98a460378bcaf6375d5f7dd611f80.gz";
    }
    {
      site = "EH1";
      class = "tumours";
      pdx = false;
      r1 = "mj/XP/SHA256E-s1552620565--af37c1225d990515cd8ef4d460ef2623441023550404a7b84b3a9da18cd263de.gz/SHA256E-s1552620565--af37c1225d990515cd8ef4d460ef2623441023550404a7b84b3a9da18cd263de.gz";
      r2 = "4G/gX/SHA256E-s1603292655--f91b881831b62191b835a242bf209c035cc25f3c4abf2f7df0e706deacfcac81.gz/SHA256E-s1603292655--f91b881831b62191b835a242bf209c035cc25f3c4abf2f7df0e706deacfcac81.gz";
    }
    {
      site = "EH1";
      class = "tumours";
      pdx = false;
      r1 = "fQ/gp/SHA256E-s1532455286--fb698cdd42d751344fdab64d027b35d844e106cccd53d4ea6f42d2994c8af9e6.gz/SHA256E-s1532455286--fb698cdd42d751344fdab64d027b35d844e106cccd53d4ea6f42d2994c8af9e6.gz";
      r2 = "VV/0m/SHA256E-s1578467431--b8274517a7b93a2974697820e26f2c774d14c1789614717d44313f44ee36cd11.gz/SHA256E-s1578467431--b8274517a7b93a2974697820e26f2c774d14c1789614717d44313f44ee36cd11.gz";
    }
    {
      site = "EH1";
      class = "tumours";
      pdx = false;
      r1 = "Pj/3G/SHA256E-s1579478177--b3e889f3c58040d231fe46e1ea6c26fb41e699c26183ca14f2d8f59420f9599b.gz/SHA256E-s1579478177--b3e889f3c58040d231fe46e1ea6c26fb41e699c26183ca14f2d8f59420f9599b.gz";
      r2 = "52/kq/SHA256E-s1625582023--e54fbc09944cb9dccae1f3b7d2985eebc6085d2f5f5ea3c350d5cb1ee7fc9518.gz/SHA256E-s1625582023--e54fbc09944cb9dccae1f3b7d2985eebc6085d2f5f5ea3c350d5cb1ee7fc9518.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      eh_process_contact = "Rachael Taylor";
      meeting_discussions_follow_up = "Clare, Rae and Ratana meeting 11.05.2023\nHave FoundationOne report (strange for uLMS) and block, no bloods.\nPlan: To do TSO500 - query endometrial carcinoma rather than uLMS, based on Foundation One report, need broader testing.\n\nClare's Meeting 03.11.2022\n-Need blood - pt in Melb late Oct/early Nov, trying to tee up bloods as will cost \$1k to courier. \n-Send TSO500 report to Holly and Gen and Damien, ask if they have ever seen these amplifications in uLMS. \n-We are unlikely to find anything actionable \n-Ask Damien to ask Portal fellows that WES would only be for research purposes and blood is very difficult to obtain. \n-Initiate WES (uLMS project) for Block 1H. Leave 1E for now.\n-Ask for eye brow hairs (Mandy already asked?) \n-Re-review by Gayanie early next year. \n\nClare, Ratana, Mandy, Rachael 13.10.2022\nHave FFPE Blocks 1E and 1H. Block 1H ideally for WES but depends on tumour purity.\n\nClare, Ratana, Rachael, Mandy 01.10.2022\nCourier charge for blood is >\$1k. Patient has MoST report. Wait for tumour block to see what it looks like before proceeding. Other avenues for germline DNA if blood is out of the question: Normal tissue from FFPE or eyebrow extraction.";
      eh_specimen_id = "SFRC01598_EH1";
      blood_recall_history = "Courier charge is over \$1000 to collect from patient's house. Pt is planning trip to Melb late Oct Early Nov and we will try and tie in a blood collection then.\n\nFor eyebrows patient lives very rural and it has been challenging to get the package delivered.have sent a 3rd pack out 14Apri23.";
      d_case_summary = "November 2021: Hysterectomy, Pathology: LMS (approx 30-40mm)\n\nMay 2022 PET scan:\n- uptake in right pelvis, omentum, mesentry, surface of liver and spleen and right parasternal node";
      date_consented = "2022-06-03";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      eh_contact = "Mandy Lobley";
      case_details = "61F\n\n2021-11: Dx uterine leiomyosarcoma. \nSurgery: Hysterectomy (had previous BSO). Tissue fixed and blocked (Blocks 1E and 1H)\n\n2022-05: Advanced disease.\n\n2022-06: Referred to ARC Portal: WES on archival tissue. \nPlanned to commence chemotherapy: gemcitabine and docetaxel.\n\n2022-08: MoST report (FoundationOne, 309 genes):\nC17orf39 (GID4) amplification - 12 copies\nFGF10 amplification - equivocal 8 copies\nRICTOR amplification - equivocal 8 copies\nNo recommended therapies and clinical trials.\n\n2022-10: FFPE Blocks 1E and 1H received.";
      blood_notes_v2 = "Patient lives very rural and it has been challenging to get the package delivered.have sent a 3rd pack out 14Apri23. Rae: Received 01.05.2023\n\nReceived 10 hairs, all used. ";
      eh_gdna_prep = "yes";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      eh_storage_location = "0 hairs";
      eh_received_date = "2023-05-01";
      portal_letter = "SFRC01598_ARCPortalLetter_10Jun2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Complete";
      block_recall_history = "20/09/2022: Nov 2021 sample requested from SSWP pathology by Devindee.\n03/10/2022: 2x Nov 2021 sample blocks received.\n07/11/2022: Nov 2021 block requested from RPAH pathology by Devindee for uLMS project. ";
    };
    inherit samples;
    name = "SFRC01598";
    capture = TwistV2HR;
  }
