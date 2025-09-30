with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9Q/qj/SHA256E-s39865258765--8e09614d28fe60021a3a8447fea6e86991b10ef429765884ccea54e1e6f41690.gz/SHA256E-s39865258765--8e09614d28fe60021a3a8447fea6e86991b10ef429765884ccea54e1e6f41690.gz";
      r2 = "M0/jM/SHA256E-s43297344892--d2b11d5259b77544debf29349e317825baee985751eb682f9c252d9eac291367.gz/SHA256E-s43297344892--d2b11d5259b77544debf29349e317825baee985751eb682f9c252d9eac291367.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "39/X9/SHA256E-s93320470357--4e3fd9971b454375678847a0ad37a9b2dd029eb51f4156fc0c5328f447f835d0.gz/SHA256E-s93320470357--4e3fd9971b454375678847a0ad37a9b2dd029eb51f4156fc0c5328f447f835d0.gz";
      r2 = "qw/jx/SHA256E-s103599203231--a6c4dd4a5a214dc8c64d91aa4dfd6e10a673873fc224d1d7519eab178d877e7d.gz/SHA256E-s103599203231--a6c4dd4a5a214dc8c64d91aa4dfd6e10a673873fc224d1d7519eab178d877e7d.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "5F/k0/SHA256E-s5664592560--9ddbbae197e3f7ab9476b1c0dabcda933f30b5d6d740af5f50bef5223d6dd5bf.gz/SHA256E-s5664592560--9ddbbae197e3f7ab9476b1c0dabcda933f30b5d6d740af5f50bef5223d6dd5bf.gz";
      r2 = "x5/pX/SHA256E-s5704919800--02b38781ba8bb7fbb55a651dadc02028991fa99195a1ef9811f099574e0c092e.gz/SHA256E-s5704919800--02b38781ba8bb7fbb55a651dadc02028991fa99195a1ef9811f099574e0c092e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's sample meeting 24.08.2023\nPlan on fresh tissue S1: The WGS failed to meet QC quality> As the patient is now unfortunately deceased, I don't think there is much more we can do for now with this sample \nCS-Agree - keep it on record but we are prob unlikely to work on liposarcoma as a project - \n\nWGS discussion.\nCS - we should issue a report to Anne. Is this typical of liposarcoma or worse? \nWe had another case with the - Amplification of JUN (250 copies) detected. \nWas that the same case? \n\nRC Meeting 24.08.2023\nDiscussed WGS report with SFRC data.\nLots of intra- and interchromosomal rearrangements. \nLiposarcomas nearly always have these features. \n\nSample meeting 29.06.2023\nPlan for fresh tissue S1 : do WGS, do DNA+RNA extraction \n\nSample meeting with Clare 2023.06.15\nPlan for S1: Plan : Make more OCT block, recall a ffpe block with tumour and pass path report to Gayanie from the surgery in May \nIf second OCT block shows spindle cells (tumour), and lowish purity, will send for TSO500 rather than WGS. ";
      blood_recall_history = "20Jun23 - Sarcoma patient navigator - being transferred to PMCC soon liase with the team there to try and organise when he will be transferred and to organise the bloods\n";
      date_of_death = "07/2023";
      d_case_summary = "retroperitoneal liposarcoma";
      date_consented = "2023-04-29";
      tumour_type = "Other rare";
      tumour_details = "retroperitoneal liposarcoma";
      case_details = "43 M, deceased \n\nPotentially eligible for STRASS2 trial (DOX/IFO -> resection vs resection)  \n\n2023-04: \tinitial diagnosis, biopsy  \n\nIHC negative: smooth muscle actin, desmin, S100, CD45, GATA3, BLAP, Kam5.2, HMB45, \tAE1/3,PAX8  \n\nMDM2 amplified (FISH)  \n\n2023-05: \tfresh tissue S1 received, FFPE block 1.1 received   \nSpindle cells  \nIHC negative: S100, Sox 10, SMA, desmin, CD34, DOG1, Kit, beta catenin, ERG, AE1/AE3, \tHMWCK34BE12 \n\nMDM2 fish amplified \n\n2023-07\tBlood B1 received, Fresh tissue S1 sent for WGS. ";
      patient_information_complete = "Incomplete";
      other_tumour_type = "retroperitoneal liposarcoma";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "21Jun23: May23 sample requested from PMCC by Monica\n28Jun23: May23 sample received from PMCC by Monica";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01753";
  }
