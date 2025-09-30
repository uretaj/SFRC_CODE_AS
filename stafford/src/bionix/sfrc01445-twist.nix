with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "g1/GG/SHA256E-s1115935320--247ea263cc6ac304b90d379ce1343806f4dc6d6fa97065dc14b19b96be6a58f5.gz/SHA256E-s1115935320--247ea263cc6ac304b90d379ce1343806f4dc6d6fa97065dc14b19b96be6a58f5.gz";
      r2 = "1z/Qq/SHA256E-s1120571657--2e6709ae48d6be19325778dffff3999b080dc271294fc8952c74f7f24549a235.gz/SHA256E-s1120571657--2e6709ae48d6be19325778dffff3999b080dc271294fc8952c74f7f24549a235.gz";
    }
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "V4/Qp/SHA256E-s1145585375--e70b5dfab8740081d202873afcc5d6443161269d04089e99d3f0c627b4bcd678.gz/SHA256E-s1145585375--e70b5dfab8740081d202873afcc5d6443161269d04089e99d3f0c627b4bcd678.gz";
      r2 = "6W/v3/SHA256E-s1153539629--866f65fbb1de9161d0548f86e29367b3b1e0379eafbd1fd66a4f8bcea95f4986.gz/SHA256E-s1153539629--866f65fbb1de9161d0548f86e29367b3b1e0379eafbd1fd66a4f8bcea95f4986.gz";
    }
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "vF/Pf/SHA256E-s1145291775--79aaef29d9ecb1069c8c8f8f314052183c9793c45062c4cd7e51065041ea3d8f.gz/SHA256E-s1145291775--79aaef29d9ecb1069c8c8f8f314052183c9793c45062c4cd7e51065041ea3d8f.gz";
      r2 = "Vq/5v/SHA256E-s1154862300--92014e344d4933b9b29b004994e007b5fd678cd0111775cc72595a1ce1cbe54d.gz/SHA256E-s1154862300--92014e344d4933b9b29b004994e007b5fd678cd0111775cc72595a1ce1cbe54d.gz";
    }
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "km/4p/SHA256E-s1159264498--9fa37c752ac27a477a1244f715d3efd712bd422f8a3b4fd5b64f720e0c6e5a01.gz/SHA256E-s1159264498--9fa37c752ac27a477a1244f715d3efd712bd422f8a3b4fd5b64f720e0c6e5a01.gz";
      r2 = "5m/f0/SHA256E-s1167728669--496bff207aea23f415937cd128e869bf272c8cf986bffc71655de5d66678d47f.gz/SHA256E-s1167728669--496bff207aea23f415937cd128e869bf272c8cf986bffc71655de5d66678d47f.gz";
    }
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "gX/2j/SHA256E-s1183764915--ddb04cdcf18c4422e1f6abd89d4490f050657ae435f2728d53237a7db9ec7194.gz/SHA256E-s1183764915--ddb04cdcf18c4422e1f6abd89d4490f050657ae435f2728d53237a7db9ec7194.gz";
      r2 = "vZ/GX/SHA256E-s1193224645--76e8edc16c54e87ae1611d48a1d7451fa0172481e163e0c4cb7942145ea1fa8e.gz/SHA256E-s1193224645--76e8edc16c54e87ae1611d48a1d7451fa0172481e163e0c4cb7942145ea1fa8e.gz";
    }
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "1X/J0/SHA256E-s1119098073--504eedc5f6b692025f6a89e609a85034bb0fa64e82ee4561d9ec3f5c6df3ad20.gz/SHA256E-s1119098073--504eedc5f6b692025f6a89e609a85034bb0fa64e82ee4561d9ec3f5c6df3ad20.gz";
      r2 = "pV/kX/SHA256E-s1123603607--c995eac1241b7fab9d19d23c819d21321cd494187f2e16fe3a55357238485d44.gz/SHA256E-s1123603607--c995eac1241b7fab9d19d23c819d21321cd494187f2e16fe3a55357238485d44.gz";
    }
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "5K/fz/SHA256E-s1175527689--88e64cca0b8f1c8238c2428e8f210325225493d656e7c1b9111f7461c375d2d0.gz/SHA256E-s1175527689--88e64cca0b8f1c8238c2428e8f210325225493d656e7c1b9111f7461c375d2d0.gz";
      r2 = "17/Qf/SHA256E-s1184440782--704a536384f77d8982b3c89c65bd842b37e077de75b5e14cf8dcef91de226d5e.gz/SHA256E-s1184440782--704a536384f77d8982b3c89c65bd842b37e077de75b5e14cf8dcef91de226d5e.gz";
    }
    {
      site = "A5";
      class = "tumours";
      pdx = false;
      r1 = "3M/Qm/SHA256E-s1100217551--c537f8b87c5d4608befe755aa9de06603dc7d2b1656b30b73990bf7afed77de4.gz/SHA256E-s1100217551--c537f8b87c5d4608befe755aa9de06603dc7d2b1656b30b73990bf7afed77de4.gz";
      r2 = "52/gJ/SHA256E-s1103303599--766921b99f4ab8cd4e500b7c5d253d2cbff887c5e4a4f988324f0494104b875a.gz/SHA256E-s1103303599--766921b99f4ab8cd4e500b7c5d253d2cbff887c5e4a4f988324f0494104b875a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3k/vJ/SHA256E-s850598616--c77ff24791f232eb6728ca735e4a774941cda42734e423a393f411d3930a070d.gz/SHA256E-s850598616--c77ff24791f232eb6728ca735e4a774941cda42734e423a393f411d3930a070d.gz";
      r2 = "0x/6W/SHA256E-s852952131--9be2413b49a511856cc34a622c29f1106104ee7214e18bd44e7fa9f8358248d6.gz/SHA256E-s852952131--9be2413b49a511856cc34a622c29f1106104ee7214e18bd44e7fa9f8358248d6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xq/gk/SHA256E-s858311730--39e15cc47c44b79ef99ad7cf125d7aa5e3e25beb7db70a510f31e71432283a28.gz/SHA256E-s858311730--39e15cc47c44b79ef99ad7cf125d7aa5e3e25beb7db70a510f31e71432283a28.gz";
      r2 = "fX/KV/SHA256E-s866025628--1ba771f14e4ec1b66e18fe61ae77af7a671151c65d5b704ae042886faeb00bc9.gz/SHA256E-s866025628--1ba771f14e4ec1b66e18fe61ae77af7a671151c65d5b704ae042886faeb00bc9.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0g/90/SHA256E-s850599053--074f20932fbf3a680e1ca45d1f294e5d2a0160e4773d6085ff261ccd939ddae1.gz/SHA256E-s850599053--074f20932fbf3a680e1ca45d1f294e5d2a0160e4773d6085ff261ccd939ddae1.gz";
      r2 = "wJ/KQ/SHA256E-s855795144--dadaf133a1a7a1e3ad40b03ac636b6e740bf8a9a325ac3008e0a4a823cc70a5e.gz/SHA256E-s855795144--dadaf133a1a7a1e3ad40b03ac636b6e740bf8a9a325ac3008e0a4a823cc70a5e.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gP/kW/SHA256E-s909800461--86c5cf6573802334109a158d814ca9d0862cb2872cf96fc51d6be16ce3f73897.gz/SHA256E-s909800461--86c5cf6573802334109a158d814ca9d0862cb2872cf96fc51d6be16ce3f73897.gz";
      r2 = "K8/6J/SHA256E-s921800124--dd1cfcb7003a3aea2567afa7eecc879d8c1e60f72d82c8da15e4eb2d9d0e65b0.gz/SHA256E-s921800124--dd1cfcb7003a3aea2567afa7eecc879d8c1e60f72d82c8da15e4eb2d9d0e65b0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 29.2.24:\nNothing to report.\n\nClare's meeting 2023.05.18\nPlan for block A5:  Extract DNA and WES? Yes  \nExtensive case - WES on baseline, WGS on recurrence, validated PDX \nMet block sent for ProCan, only received slides for this, no block. No proteomics on this block \n\n\nRC Meeting 2021.10.28\nDiscussed WGS report (Grimmond).\nAt Variant meeting there were discussions about ATRi but not a strong indication and no access.\nATRX is a potential target, need models to try. With potent PARPis.\nCIRCOS plot looked typical for RB1 and TP53 \n\nMeeting with Clare 2021.09.10\nSend a snap frozen piece of S1 straight for WGS";
      date_of_death = "05/2024";
      d_case_summary = "Metastatic uLMS";
      tso500_external = "SFRC01445_TSO500_04May2022_Redacted.pdf";
      date_consented = "2021-07-24";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "48 years old  \n\n2020-06:\tuLMS diagnosis, total hysterectomy \n\n2020-09:\tMetastatic uLMS, surgery on upper lobe of lung  \nPositive: caldesmin, weakly positive for SMA.  \nNegative: Desmin, AE 1/3  \nKi67 proliferative 70%  \n\n2021-07:\tuLMS recurrence on lung lower lobe  \nFresh tissue received from surgery \n\n2021-08\tBlood B1 received \n\n2021-10: WGS \n- Tumour mutational burden is low (< 10 mutations / Mb).  \n- Homozygous deletion of PTEN detected. Whole transcriptome sequencing demonstrated low expression (bottom percentile when compared to the TCGA PANCAN cohort).  \n- Homozygous deletion and inactivating rearrangements of TP53 detected. Whole transcriptome sequencing demonstrated low expression (4th percentile when compared to the TCGA PANCAN cohort).  \n- Inactivating rearrangements and loss of heterozygosity RB1 detected. Whole transcriptome sequencing demonstrated low expression (bottom percentile when compared to the TCGA PANCAN cohort).  \n- Inactivating rearrangements of ATRX were detected. Whole transcriptome sequencing demonstrated low expression (bottom percentile when compared to the TCGA PANCAN cohort). \n\nValidated PDX ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07/11/2022: 2020 block requested from Alfred by Devindee for uLMS project.\n27Feb2023: 2020 block re-requested from Alfred by Monica for uLMS project.\n20Apr2023: 2020 block received from Alfred by Monica ";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01445";
    capture = TwistV2HR;
  }
