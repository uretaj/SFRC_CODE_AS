with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZX/w4/SHA256E-s82038652379--615d1e01f871944a1bede3d1df9d444014cd95559aed1986d8c92813f143059f.gz/SHA256E-s82038652379--615d1e01f871944a1bede3d1df9d444014cd95559aed1986d8c92813f143059f.gz";
      r2 = "29/X7/SHA256E-s87954563128--4ec558f70b97216a53968d09c7174bf4beb1888edea23dff36a7f9ab8cd0d452.gz/SHA256E-s87954563128--4ec558f70b97216a53968d09c7174bf4beb1888edea23dff36a7f9ab8cd0d452.gz";
    }
    {
      site = "S4";
      class = "tumours";
      pdx = false;
      r1 = "4g/57/SHA256E-s41099143989--705e224f9beb4366df918d1954f7ba647b6957f6e5083a5e7d0b8d7415388442.gz/SHA256E-s41099143989--705e224f9beb4366df918d1954f7ba647b6957f6e5083a5e7d0b8d7415388442.gz";
      r2 = "pv/Pk/SHA256E-s44042154967--170b323024df44baef48bb87310647dc3a825eba87c2df37c281386c833f8d5a.gz/SHA256E-s44042154967--170b323024df44baef48bb87310647dc3a825eba87c2df37c281386c833f8d5a.gz";
    }
    {
      site = "S4";
      class = "rna";
      pdx = false;
      r1 = "z5/2G/SHA256E-s5638773147--52c6dfa6f523419c402ea8fcb774aecb784ce6a119f9b0e1c1c35c1e580936d2.gz/SHA256E-s5638773147--52c6dfa6f523419c402ea8fcb774aecb784ce6a119f9b0e1c1c35c1e580936d2.gz";
      r2 = "Gz/Vf/SHA256E-s5743843181--977a6458aa4f28ac024945d6fd8dcf055615c6bef49ac5ac23b031071c60f277.gz/SHA256E-s5743843181--977a6458aa4f28ac024945d6fd8dcf055615c6bef49ac5ac23b031071c60f277.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "Meeting notes 06.02.2020\nWGS report discussion: SFRC01139 was grown in culture, take out, characterise and see if we can do PIK3CA drug assay. \nHolly to decide on drugs for testing - we have AKT and mTORC inhibitors. Could order Alpelisib. \nGen to start fresh from mince with new 2D media and flask.  Also, look at block from earlier cell line - panCK, other markers for GCT (inhibin A and PR from histology report) \nBriony sent report to clinician \n\nMeeting 05.12.2019\nWe had some success with SFRC01139, try again with new media and flasks, as well as organoids when new media ready - check with Amandine about what she means about PIK3CA drug assay \n\nMeeting notes 03.10.2019\nBriony to check if patient still alive to evaluate if WGS would be beneficial.\n\nMeeting notes 23.05.2016\nLook up litterature for epigenetic, genomic and wait for teleconf with Peter Fuller, talk to Simon Chu";
      date_consented = "2019-03-06";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa Cell Tumour";
      case_details = "Recurrent granulosa cell tumour, ER/PR positive first diagnosed in 2016\n\nTAHLSO and anterior resection in 2019\nUnderwent 6 cycles of Carboplatin/Paclitaxel, started in April 2019\nFor WGS\n\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Tissue received fresh from RW hospital 6-Mar-19\nSubmitted to SG lab 7-Mar-19";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01139";
  }
