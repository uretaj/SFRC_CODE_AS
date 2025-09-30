with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "mX/GK/SHA256E-s4641430918--8ea44f7bc3a55e984c206fd5ac90649dbf08ae9619ddf8955e77c605d721a07e.gz/SHA256E-s4641430918--8ea44f7bc3a55e984c206fd5ac90649dbf08ae9619ddf8955e77c605d721a07e.gz";
      r2 = "mF/2x/SHA256E-s4990594076--4675ad2e86252ce4272db3a791540178f03e4fe601dacc7abb06f3f7c862b992.gz/SHA256E-s4990594076--4675ad2e86252ce4272db3a791540178f03e4fe601dacc7abb06f3f7c862b992.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zq/1g/SHA256E-s2741542863--dbc3103024df1cf9783da91bb1ebb8a201e0dd65f2248424344b01883333d787.gz/SHA256E-s2741542863--dbc3103024df1cf9783da91bb1ebb8a201e0dd65f2248424344b01883333d787.gz";
      r2 = "5z/05/SHA256E-s2985588559--c2553e93b09c9d551d6ba3016f0695a071cdbdd7608baeaab12daf0d59f2a8ad.gz/SHA256E-s2985588559--c2553e93b09c9d551d6ba3016f0695a071cdbdd7608baeaab12daf0d59f2a8ad.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Broca meeting Amandine/Clare 21.03.2022\nSend 1F for BROCA, same sample as WES.\n\nMeeting notes 13.08.2020\nHad MSH6 loss by IHC which is why she was sent to FCP clinic and they found pathogenic MSH6 variant detected in germline.\nClear cell cancer is the one of concern \nPlan: extract DNA and send for WES ";
      date_consented = "2020-02-28";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell adenocarcinoma of ovary  also FIGO Grade 1 endometrioid endometrial adenocarcinoma (more common)";
      case_details = "LSO in Jan 2020 showed clear cell adenocarcinoma, stage IIB/IIIA. TAHRSO performed 27/2/2020";
      brca_report = "SFRC01283_BRCA_07Apr2020_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2020 Tissue containing clear cell adenocarcinoma of Ovary requested on 04/05/2020  by Joshua. For Clare, plan to do WES\n\n2020 Block 1F received on 30/07/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "To be confirmed";
      patient_germline_mutations = "MSH6 (c.3261dupC p.(Phe1088Leufs*5))";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01283";
  }
