with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/190517_NB501056_0306_AHK25MBGXB/Sample_SFRC01119-B1/SFRC01119-B1_S6";
      suffix = "_001";
      hash1 = "ce0d791c0b23d299050e332f921148714e98fe4fc4dae9ce97fe674bcab595d12c774af44c8bd24e56b564b103e5a2c147e3b0c4967e786a5253d6c4e84b3156";
      hash2 = "0f2431115fd649cb4e58e5d50c1c875defaa8f679c9f0401b41a32c03464fc828c32d82518dfc44e77acf5049e22aad5ab70ce82e6b527713fc52476f29c6e54";
    }
    {
      site = "2C";
      class = "tumours";
      prefix = "fastqs/190621_NB501056_0321_AHNKGJBGXB/Sample_SFRC01119-2C/SFRC01119-2C_S1";
      suffix = "_001";
      hash1 = "d88d8b1e8db133692b286f1b6cb8e5b8530c38ddbd6fb0c0eaa34f88acd56f41d50de6c0fddde8ab92493dd149f438727e7ddae5bd81edf116e6c560c24e2ce9";
      hash2 = "223fdf41681fad275cda05e6bc202415d7c509212257fcc41b2fa7eba38724861d3ff91e0b511add5aad5138140a2fadca19933161d83e520e99541adbc4104c";
    }
    {
      site = "2.1";
      class = "tumours";
      prefix = "fastqs/190517_NB501056_0306_AHK25MBGXB/Sample_SFRC01119-2-1/SFRC01119-2-1_S7";
      suffix = "_001";
      hash1 = "016039b5c41069b682ee7678ab92fd3cb28b7004067f517777343b8960172cb47e86769fc2cc13b22bd43bbb7164ece7581a62039058173760b49c46dc49b8b0";
      hash2 = "aa0afdd282b414c76b928dd42ed2c4cb08f1b4a46054a3cd06062ca86731c5bee6639dcfb822cd649199f79c7cd4473cdc66bc4cfdaa7f8b2b8dfc0f115b8a83";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting notes 15.08.2019\nWES results: Endometrioid without TP53 or PIK3CA mutations \nNothing much else we can do with these results \nNeed Justin to check purity \nBy pathology tumours were 70-90% tumour purity in blocks \nJustin to write report for Tony to sign off \n\nMeeting notes 13.06.2019\nSpread to lungs and brain and lungs are progressing \nCurrently responding to oral cyclo - suggesting immunologically controlled disease \nMay end up being case for neoantigen analysis - send WES data to Justin for neoantigen predictions (waiting for block 2C WES results to come back to analyse the lot (with block 2.1 and B1) \nClare will organise another blood sample to be collected soon. Is this still the plan? ";
      date_consented = "2018-12-11";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "High grade endometrioid ovarian adenocarcinoma";
      case_details = "Ovarian endometrioid adenocarcinoma post TAHBSO. Widespread disease including cerebral metastases. BRCA Wild Type. CK7 focal positive, TTF1, PR, GATA3, PAX8, p53, Vimentin positive.\n\nTAHBSO (Stage 2a Carcinoma of Ovary) performed Feb 2010.\nCarboplatin/Paclitaxel chemotherapy in 2011\nRecurrence of disease Jun 2017, followed by 6 cycles of Carboplatin/Gemcitabine chemotherapy, and thoracotomy and debulking surgery.\nCerebral mets resected in March 2018.\nCarboplatin/Docetaxel chemo for 6 cycles finishing October 2018.\n\n- unusual as has predilection for brain and lung rather than abdominal cavity\n- Currently responding to oral cyclo \n- May end up being case for neoantigen analysis (super-responder)\n- lupus anticoagulant factor with Hx of pulmonary emboli; ? antiphospholipid syndrome\n- BRAIN METASTASES - metastatic adenocarcinoma\n\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Melbourne Health Path no: MH18B02713\n- Collected: 16-Mar-18\n- Slides received 15-Feb-19\n- For Urgent WGS\n- Recalled and now sent for WES (1.5.19)\n---------------------------------\nOriginal block - Melbourne Pathology\n- Specimen no: 15222-T10 Specimen 2\n- Collected:19-Feb-2010\n- Requested 7-May-19 (Emily)\n- Received FFPE block (10T15222 block 2C) 9-May-19";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01119";
    capture = CREv2;
  }
