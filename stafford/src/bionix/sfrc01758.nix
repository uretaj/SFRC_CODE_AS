with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "GJ/Zv/SHA256E-s1187889632--4ee076fdb0d0d992d79533b58a1549fdc281bf6b3454c7eb27828b14d2eec215.gz/SHA256E-s1187889632--4ee076fdb0d0d992d79533b58a1549fdc281bf6b3454c7eb27828b14d2eec215.gz";
      r2 = "kP/4G/SHA256E-s1199039851--ac6ba09104766b0c21a76b855973971db5709ca8d5d7d632b6f51ee6c5421719.gz/SHA256E-s1199039851--ac6ba09104766b0c21a76b855973971db5709ca8d5d7d632b6f51ee6c5421719.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "xg/gG/SHA256E-s1191430952--949d6c7750c623f76a64dceec812e8f87087388af42bb87dfc0b9a62bd2cc34a.gz/SHA256E-s1191430952--949d6c7750c623f76a64dceec812e8f87087388af42bb87dfc0b9a62bd2cc34a.gz";
      r2 = "2k/0j/SHA256E-s1202809733--8d163522d4976cb23003d067b043c6587c70aab7adcab26a6af134562d89033c.gz/SHA256E-s1202809733--8d163522d4976cb23003d067b043c6587c70aab7adcab26a6af134562d89033c.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "xZ/71/SHA256E-s1284581317--5618126912992c35a48f0c64f327593f39b5903369c781cf92b868a058a39ef2.gz/SHA256E-s1284581317--5618126912992c35a48f0c64f327593f39b5903369c781cf92b868a058a39ef2.gz";
      r2 = "24/8w/SHA256E-s1299456408--1982a7a38d179a98685a15da8b8376fe694eddbc59d46c71fc8333759eb5a01d.gz/SHA256E-s1299456408--1982a7a38d179a98685a15da8b8376fe694eddbc59d46c71fc8333759eb5a01d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "10/J9/SHA256E-s1118195443--39502bcc669f26485180f44d03997f203f79dc9d0acf0acecf61ea6ae22b1211.gz/SHA256E-s1118195443--39502bcc669f26485180f44d03997f203f79dc9d0acf0acecf61ea6ae22b1211.gz";
      r2 = "KK/vV/SHA256E-s1155803240--8d9089881525e5b4100657ed11b20be038ebe5564167ec5b02abfb468ce34149.gz/SHA256E-s1155803240--8d9089881525e5b4100657ed11b20be038ebe5564167ec5b02abfb468ce34149.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fj/Fg/SHA256E-s1146194203--432ccb629067be775a73c0e80a3172020aaf47376441950dfb3758c94ec6326c.gz/SHA256E-s1146194203--432ccb629067be775a73c0e80a3172020aaf47376441950dfb3758c94ec6326c.gz";
      r2 = "W9/pk/SHA256E-s1184076226--86dd151b6696d5af4f9170fd6557363a92ffd0ccdff7fe8256fe3ef656c1b9d8.gz/SHA256E-s1184076226--86dd151b6696d5af4f9170fd6557363a92ffd0ccdff7fe8256fe3ef656c1b9d8.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "56/3f/SHA256E-s1297915920--1d27fbb1161ad24578675fb6aaf74ac730e6cafb0e96f675843a86b21950b623.gz/SHA256E-s1297915920--1d27fbb1161ad24578675fb6aaf74ac730e6cafb0e96f675843a86b21950b623.gz";
      r2 = "ZW/pq/SHA256E-s1347077290--f3c44bbe6a4452d478f4d453221a935aa0b9aa2910da2b6a33950bebbb006a06.gz/SHA256E-s1347077290--f3c44bbe6a4452d478f4d453221a935aa0b9aa2910da2b6a33950bebbb006a06.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "1X/ZX/SHA256E-s342256925--1f13d165986d08a731e07aff9a50a1488e2733faaa83f8ee72cca5a804c5dc2e.gz/SHA256E-s342256925--1f13d165986d08a731e07aff9a50a1488e2733faaa83f8ee72cca5a804c5dc2e.gz";
      r2 = "vz/gW/SHA256E-s341649014--2b80dd742d3e10dcac96f01bb4025cb2f35ad0ca31d54427178526acee2185c1.gz/SHA256E-s341649014--2b80dd742d3e10dcac96f01bb4025cb2f35ad0ca31d54427178526acee2185c1.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "2x/Qg/SHA256E-s310124100--b548389bb65065d94ebbbacd09e0450a1647e4376ba2c0d9fb776852b6c21020.gz/SHA256E-s310124100--b548389bb65065d94ebbbacd09e0450a1647e4376ba2c0d9fb776852b6c21020.gz";
      r2 = "8W/9p/SHA256E-s308507959--5e331f9b605c3231acced8c6e797fda85a26d8e57f4f7fa0066d97dfca708945.gz/SHA256E-s308507959--5e331f9b605c3231acced8c6e797fda85a26d8e57f4f7fa0066d97dfca708945.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "2G/Qm/SHA256E-s429125981--664d58ac84e1db13e6454d5a2c6ed01590c448cf32e2db2b1c17899ecc3d9b5a.gz/SHA256E-s429125981--664d58ac84e1db13e6454d5a2c6ed01590c448cf32e2db2b1c17899ecc3d9b5a.gz";
      r2 = "Gg/p9/SHA256E-s430904045--3d58287ba2d97d92d8f33007fe660eea1dbb9a9516db15391d8ada020d5af052.gz/SHA256E-s430904045--3d58287ba2d97d92d8f33007fe660eea1dbb9a9516db15391d8ada020d5af052.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "pF/fJ/SHA256E-s453299107--da1114b36205cd0a94d63ced753bf42d99dab0518005ab9b86e604e624f02079.gz/SHA256E-s453299107--da1114b36205cd0a94d63ced753bf42d99dab0518005ab9b86e604e624f02079.gz";
      r2 = "7J/Qm/SHA256E-s457330437--e4179f83275b3b15f15d92c4dc4b663cfa6974dabea2823e044b10c6e911213c.gz/SHA256E-s457330437--e4179f83275b3b15f15d92c4dc4b663cfa6974dabea2823e044b10c6e911213c.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "fX/6W/SHA256E-s711328013--ed894ae0139b9a4b13104ff229434b095eeb73373c8fc53d5f0763463c46096d.gz/SHA256E-s711328013--ed894ae0139b9a4b13104ff229434b095eeb73373c8fc53d5f0763463c46096d.gz";
      r2 = "jg/Qk/SHA256E-s716568868--c6b53cd403dc5e4e89808302f7b7bf5cbebe75b611b0c92131a4b2e6eb00a2a3.gz/SHA256E-s716568868--c6b53cd403dc5e4e89808302f7b7bf5cbebe75b611b0c92131a4b2e6eb00a2a3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 11.4.24 (Block 1K):\nNo discussion notes - issue report.\n\nClare's sample meeting 29.06.2023\nPlan on FFPE block 1K: To do WES. \nKristy to sort out all the malignancies (is a 2.5, but looks like a 3 primary) ";
      d_case_summary = "HGSFT- Li Fraumeni Syndrome, w P53 mutation \nAlso DCIS (2013, 2015, 2016), leiomyoma of oesophagus (2017), multiple skin neoplasms, HGS FT (2023), papillary thyroid ca (2023)";
      date_consented = "2023-05-12";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS Fallopian tube.\n\nHas gTP53, so DCIS (2013, 2015, 2016), leiomyoma of oesophagus (2017), multiple skin neoplasms, HGS FT (2023)";
      case_details = "43 years old female  \nHas germline TP53 mutation (Li Fraumeni Syndrome) - rare molecular subtype project? \n\n2013-07: \tSurgery, Initial diagnosis, breast liposarcoma (1), well diff, MDM2 non-amplified \nExcisional Bx (in pregnancy) \nIHC negative: AE1/3 and Cam5.2, ER, Cerb2 \nIHC positive: S100, CD34, PR \nMDM2 not amplified \n\n2015-03:\tSurgery, breast fibroadenoma (benign) \n\n2015-11: \tInitial diagnosis (2), Li-Fraumeni syndrome  \nTP53 gene screen report (PeterMac) \nVus: TP53 NM000546.5, exon 5 \n\n2016-08:\tInitial diagnosis (3), breast DCIS (ductal carcinoma in situ) \n\n2016-10:\tSurgery  \n\n2017-12:\tInitial diagnosis, Leiomyoma of oesophagus (benign) \n\n2020-08\tInitial diagnosis, Skin neoplasm \nsurgeries: 2020-08, 2020-09, 2021-10 \n\n2023-03: \tInitial diagnosis (4), Fallopian tube carcinoma, Stage IIB, surgery, suspicious for \t\tSTIC, FFPE block 1K received \n\t\tIHC positive: CK7, PAX8, WT1 (patchy), P53 (mutant) \n\t\tER1+ in 10% tumour cells, PR 1/2+ in 25% of the tumour cells \n\nReferral to MONC for chemotherapy \n\nFCC germline ovarian panel \n\nsomatic BRCA in process ";
      brca_report = "SFRC01758_BRCAGeneTest_31Mar2023_Redacted.pdf";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA1";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "23May23: Mar23 sample requested from RWH by Monica\n13Jun23: Mar23 sample received from RWH by Monica";
      mp_subgroup_sfrcp4_new_id = "2 plus 1 or more non-malignant";
      patient_germline_mutations = "TP53";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01758";
  }
