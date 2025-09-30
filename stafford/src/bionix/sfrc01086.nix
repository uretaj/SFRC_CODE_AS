with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "51/Q0/SHA256E-s2562781890--819a72f5881cd1a3b51cee5a93916d0f9df89d8e5a15d85235363a0f8593f21e.gz/SHA256E-s2562781890--819a72f5881cd1a3b51cee5a93916d0f9df89d8e5a15d85235363a0f8593f21e.gz";
      r2 = "vZ/pv/SHA256E-s2770318900--f0505e6cfda438519758a90d0c7d8415c1a6223d637892953d4347c5a2ccc84d.gz/SHA256E-s2770318900--f0505e6cfda438519758a90d0c7d8415c1a6223d637892953d4347c5a2ccc84d.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "w7/Kf/SHA256E-s4483133613--b77afa7cf6b88f37ab44a32825fbc944c6f3a7116f758f2d1b5b5605f2eb9169.gz/SHA256E-s4483133613--b77afa7cf6b88f37ab44a32825fbc944c6f3a7116f758f2d1b5b5605f2eb9169.gz";
      r2 = "v3/P1/SHA256E-s4812272113--45c65c93aa24d93b27318ee045cb061a1c8310c4241ceb7f7a70ec344e208597.gz/SHA256E-s4812272113--45c65c93aa24d93b27318ee045cb061a1c8310c4241ceb7f7a70ec344e208597.gz";
    }
    {
      site = "1M";
      class = "tumours";
      pdx = false;
      r1 = "64/KP/SHA256E-s17284687645--4eee3d6127829e517a826f7675ac95dfe9d62208a9043ddb3747eddbeff16036.gz/SHA256E-s17284687645--4eee3d6127829e517a826f7675ac95dfe9d62208a9043ddb3747eddbeff16036.gz";
      r2 = "v4/pk/SHA256E-s17560536574--cb843d945b06943eba431021d6f86bcd65b0bc9b8a269561270cb8558919d0ce.gz/SHA256E-s17560536574--cb843d945b06943eba431021d6f86bcd65b0bc9b8a269561270cb8558919d0ce.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 20.12.2021\n1M: Send for WES and BROCA\n\nRC Meeting 16.12.2021\nHolly querying BRCA2 mutation. WES matches FCC results for germline BRCA2 but BROCA picked up a different mutation and called it somatic.\nLocal analysis done, new run has clarified difference between BRCA1 mutation in ours and theirs.  \n\nThe BROCA result is an intron variant, we would not have called it. Holly to check with Marc about germline BRCA2 mutation \n\nGermline BRCA2, Somatic TP53 mutation, widespread LOH, no focal amplifications, loss of CDKN2A (broad), broad amp of MYCN \n\n\nRC Meeting notes 01.10.2020\nDiscussed BROCA results (S1 and S1_T1).\nBRCA2 carrier, was going to start on an inhibitor trial, but died of unrelated issues beforehand. Try Beigene PARPi on the PDX? Has an ABCB1 fusion.";
      date_of_death = "07/2018";
      d_case_summary = "platinum refractory post-parpi HGSOC, BRCA2 mutation carrier, being screened for prexasertib (Lilly trial)\nDied 7/7/2018";
      date_consented = "2018-05-22";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, platinum refractory, post-parpi";
      case_details = "58yo woman\n\n2014-09: Ovarian cancer FIGO stage III (high grade serious carcinoma of left & right ovaries). Underwent lapratomy. FFPE of TS x 2 left ovary with tumour.\n\n2016-02: Recurrent Disease (Peritoneum, Nodes)\n\n2017-01: Second Recurrence 9/01/17 (Failed Olaparib)\n\n2018-05: BRCA2 identified. Fresh tissue S1 received. Blood B1 received.\n\n2018-07: Died\n\nTreatment: \n2014-09 to 2015-10: with standard carboplatin, paclitaxel and bevacizumab.\n2016-05 to 2016-09: chemotherapy.\n\nHistology:\nPax8 positive (80%)\nWT1positive (20%)\np53 positive (90%)\nPanCK positive (100%)\nKi67 positive (50%)\nCD45 negative";
      pre_analysis_mutations = "BRCA2 identified (FCC)";
      brca_report = "SFRC01086_BRCA_24Nov2014_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2014 specimen block received by Warren 09/12/2021. ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01086";
    capture = CREv2;
  }
