with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vJ/P6/SHA256E-s40088795914--570850da8ce506fb89129b513de47c5d77bd690a455e46fd833bb5b06ff65f62.gz/SHA256E-s40088795914--570850da8ce506fb89129b513de47c5d77bd690a455e46fd833bb5b06ff65f62.gz";
      r2 = "03/pV/SHA256E-s42346891280--30a3473f9b65dc1c6f53c44a65fcf6a83b6d5493ae4afe0d7be215b06992de20.gz/SHA256E-s42346891280--30a3473f9b65dc1c6f53c44a65fcf6a83b6d5493ae4afe0d7be215b06992de20.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "zV/qx/SHA256E-s88586216036--f64c8b101cb94401b03fb65bceb3af28fbd8631885605559c991468afbb3383e.gz/SHA256E-s88586216036--f64c8b101cb94401b03fb65bceb3af28fbd8631885605559c991468afbb3383e.gz";
      r2 = "Km/4P/SHA256E-s93543482948--c4911ef779c5c3caa7e580d0f26ea6cb4e8cc28eb5d93c99232cf6ed6e9f4fdd.gz/SHA256E-s93543482948--c4911ef779c5c3caa7e580d0f26ea6cb4e8cc28eb5d93c99232cf6ed6e9f4fdd.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "3Q/Xx/SHA256E-s4862863784--27fc08f55f0adff6f6a2db81872bb3342033228aa2e181491acda6635a5f39e0.gz/SHA256E-s4862863784--27fc08f55f0adff6f6a2db81872bb3342033228aa2e181491acda6635a5f39e0.gz";
      r2 = "pm/g2/SHA256E-s4744310846--b96bbb57a076663006a93286ce687baac559581fba67bab664e39a67fd53d4d7.gz/SHA256E-s4744310846--b96bbb57a076663006a93286ce687baac559581fba67bab664e39a67fd53d4d7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 15.02.2024\nDiscussed WGS report (SFRC and Grimmond).\n\nSample meting with Clare 16.11.2023\nPlan on S1: It looks like a piece of the OCT has a good amount of tumour. After getting confirmation from Gayanie, if tumour purity is good enough send for OCT for WGS? I would not do snap frozen has there is considerable difference between FFPE and OCT blocks. \n\nGayanie confirmed  all tumour, 60% tumour purity on OCT block Yes to WGTS";
      date_of_death = "01/2024";
      d_case_summary = "High-grade undifferentiated malignant tumour- Pathology: Ewings Sarcoma? Undifferentiated endometrial carcinoma? Undifferentiated uterine sarcoma? 2nd opinion to follow\nLarge pelvic tumour, resected at RWH.";
      tso500_external = "SFRC01854_FoundationOne_CaSP_26Jan2024_Redacted.pdf";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Undifferentiated malignant neoplasm with differential diagnosis including undifferentiated carcinoma and undifferentiated sarcoma. \nLikely uterine origin. ";
      case_details = "Patient also referred for CaSP.\n\n65 years old female  \n\n2023-10:\t Initial diagnosis, surgery, fresh tissue S1 received. \n\nIHC positive: FLT1, synaptophysin, patchy positive: CD99, EMA, Cyclin D1, CD3, \t\tmosaic: P16, retention staining: INI1, SMARCA4, Weak: SMA, CKAE1/AE3, CD10, \t\tPAN TRK, very weak: BCOR, vimentin. \n\nP53: WT \n\nIHC negative: LCA, CD20, desmin, ER, melanA, caldemon, myogen, S100, cKit, \tDOG1, \tALK, chromogramin, CD56, INSM1. \n\n2023-11: \tBlood B1 received. \n\n \n\nLooking for a second opinion and some molecular testing  \n\n ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01854";
  }
