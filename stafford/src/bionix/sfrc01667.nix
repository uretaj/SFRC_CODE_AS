with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1M";
      class = "tumours";
      pdx = false;
      r1 = "x0/wv/SHA256E-s11533267403--9b1b9589de99fe8186fa7b8716648c1fc8a2ddb73e7ab2dd89e342f1fa4d9831.gz/SHA256E-s11533267403--9b1b9589de99fe8186fa7b8716648c1fc8a2ddb73e7ab2dd89e342f1fa4d9831.gz";
      r2 = "W6/63/SHA256E-s11642517664--b347f5f531f2b0b56767bee13190bc510fc7bada31edcd5b6b22a5e3b2cd07a6.gz/SHA256E-s11642517664--b347f5f531f2b0b56767bee13190bc510fc7bada31edcd5b6b22a5e3b2cd07a6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mx/xv/SHA256E-s5806397992--4f9329650f69603e50734e28d190d94cda513688a3aa26bea3a775c3d2c9a483.gz/SHA256E-s5806397992--4f9329650f69603e50734e28d190d94cda513688a3aa26bea3a775c3d2c9a483.gz";
      r2 = "jF/50/SHA256E-s5939961530--867623abad445a2cbd3d6848e83c45b9786c955ce9329aabf84824f9ae9e1775.gz/SHA256E-s5939961530--867623abad445a2cbd3d6848e83c45b9786c955ce9329aabf84824f9ae9e1775.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 03.08.2023\nDiscussed WES report:\n-No reportable germline variants. \n-Reportable TP53 somatic variant. \n-CCNE1 not amplified (Total CN 3, Minor CN 1). Matches IGNITE FISH CCNE1 report\n-CN model looks poor. Very few chromosome points fitting the lines on the spider graph, model has warnings and CN plots look \"off\". \n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1M\n\nClare's Meeting 22.12.2022\nFFPE Block 1M has lots of tumour, 55 - 60% purity. To do WES. B7H4 IHC also performed in house. B7H4 has been done in the clinic, is noted as positive. Gayanie has said 30% positivity. We don't know how positive the clinical trial scoring is, to compare with Gayanie.\n\nEmail from Clare 13.12.2022\nWould like WES when block 1M reviewed. Know that B7H4 is positive, but do in-house anyway.";
      d_case_summary = "HGSFT Dx 2014, 1st line carbo/taxol\nJun 2017 TAHBSO\nNov2021 recurrence- 2nd line carbo/taxol.";
      date_consented = "2022-10-19";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGSFT";
      case_details = "67F \n\n2017-04: Dx HGS fallopian tube cancer via peritoneal biopsy\nIHC positive: p53 (60 - 70% positive), ER (focal), CK AE1/3, CK7, PAX8, CD56 (focal), p16, WT1\nIHC negative: CK20, GATA-3, TTF-1, p63, synaptophysin, chromogranin, CD117\nNeo-adjuvant chemotherapy: Carboplatin/Paclitaxel x6\n\n2017-06: Surgery: TAH/BSO (FFPE Block 1M)\n(no IHC performed)\n\n2019-05: Dx giant cell atreritis. \nTemporal artery biopsy: Features raising the possibility of healed arteritis with destruction of the intermalelastic lamina.\n\n2021-01: BRCA Tissue Test (2017 sample): No pathogenic variants detected\n\n2021-11: Recurrence (widespread intra-abdominal, rising markers)\nChemotherapy: Carboplatin/Paclitaxel x6\n\n2022-10: IGNITE IHC FISH Report\nIHC H-Score - 100 (5% strong, 10% moderate, 65% weak). CCNE1 overexpressed.\nFISH: CCNE1 gene is not amplified.\n\n2022-10: Blood B1 received\n\n2022-11: FFPE Block 1M received\n\n2022-12: B7H4 IHC of Block 1M: 30% positivity in tumour cells.\n\n2023-05: 1M and B1 DNA sent for WES";
      brca_report = "SFRC01667_BRCAPanel_10Jan2023_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/11/2022: 2017 sample requested from melbourne pathology by Devindee.\n21/11/2022: 2017 block received. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01667";
    capture = CREv2;
  }
