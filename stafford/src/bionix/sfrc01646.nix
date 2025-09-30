with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jf/gK/SHA256E-s736512930--6109c2056323b588f385e1a5a47010b127f822f3cd472d136fcb43c117d37057.gz/SHA256E-s736512930--6109c2056323b588f385e1a5a47010b127f822f3cd472d136fcb43c117d37057.gz";
      r2 = "kk/Fz/SHA256E-s731443758--6d6569b34ab40a8d4a500f0cd71e303b60fac73c435817ee004486d4eff2e5e9.gz/SHA256E-s731443758--6d6569b34ab40a8d4a500f0cd71e303b60fac73c435817ee004486d4eff2e5e9.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fQ/Mx/SHA256E-s738002152--7898dc01190753d44a1ab3d18b8bacca82166816e6c5e7e4d87974f1d3aa4ced.gz/SHA256E-s738002152--7898dc01190753d44a1ab3d18b8bacca82166816e6c5e7e4d87974f1d3aa4ced.gz";
      r2 = "73/2P/SHA256E-s737357335--5859cc467b522b4497f27bc942c13257b3db1e66bc9c4200c637c24c36ff3401.gz/SHA256E-s737357335--5859cc467b522b4497f27bc942c13257b3db1e66bc9c4200c637c24c36ff3401.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qG/Jm/SHA256E-s731447102--039445114484b297ac2a66ac03cbd076c16f4b822c45d1b26ea211b08a80729d.gz/SHA256E-s731447102--039445114484b297ac2a66ac03cbd076c16f4b822c45d1b26ea211b08a80729d.gz";
      r2 = "wq/6W/SHA256E-s728744313--46c92072f67eeba46c8262dc13ba34124781ceaf94c7216e42e4fd1f60469775.gz/SHA256E-s728744313--46c92072f67eeba46c8262dc13ba34124781ceaf94c7216e42e4fd1f60469775.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5w/VW/SHA256E-s747557789--3938f692d69c0d8b6c6373ba4ee66d466f3c92827f8af95b748dd48846f8e506.gz/SHA256E-s747557789--3938f692d69c0d8b6c6373ba4ee66d466f3c92827f8af95b748dd48846f8e506.gz";
      r2 = "fj/vJ/SHA256E-s749323706--6da25d20849ba46d7404b7e7f50ae60b1fd941bc7261872a4560d6e386825682.gz/SHA256E-s749323706--6da25d20849ba46d7404b7e7f50ae60b1fd941bc7261872a4560d6e386825682.gz";
    }
    {
      site = "1GG";
      class = "tumours";
      pdx = false;
      r1 = "G6/0m/SHA256E-s942159224--a3341800264b0dc3d5138031a9e5743ab5a87d691e475c4a3b12dfc55bf2456c.gz/SHA256E-s942159224--a3341800264b0dc3d5138031a9e5743ab5a87d691e475c4a3b12dfc55bf2456c.gz";
      r2 = "qw/2W/SHA256E-s953335752--cdfeedddb3daaa96518d941af4cdb7bd7577bfae0c266e4fea456e26ee567d27.gz/SHA256E-s953335752--cdfeedddb3daaa96518d941af4cdb7bd7577bfae0c266e4fea456e26ee567d27.gz";
    }
    {
      site = "1GG";
      class = "tumours";
      pdx = false;
      r1 = "mP/MP/SHA256E-s937545757--3cd8f60671584dd01100c18e07d4455e43c91dcf5036ef87a83c8365c3c47b01.gz/SHA256E-s937545757--3cd8f60671584dd01100c18e07d4455e43c91dcf5036ef87a83c8365c3c47b01.gz";
      r2 = "Z9/0Q/SHA256E-s948414426--3eedebc981ffe1392551190d1bca934a12b0ac985326818980e70d69877fa61c.gz/SHA256E-s948414426--3eedebc981ffe1392551190d1bca934a12b0ac985326818980e70d69877fa61c.gz";
    }
    {
      site = "1GG";
      class = "tumours";
      pdx = false;
      r1 = "z4/8p/SHA256E-s1011616616--20029cfd0cb9e4368684833a84692e01b6692049c0f737313e68e47085486b9d.gz/SHA256E-s1011616616--20029cfd0cb9e4368684833a84692e01b6692049c0f737313e68e47085486b9d.gz";
      r2 = "MK/8z/SHA256E-s1024800522--e3af150798acac640b32a0c10a175daa0c41e2028cc334e23e68d9ad81bbd9e5.gz/SHA256E-s1024800522--e3af150798acac640b32a0c10a175daa0c41e2028cc334e23e68d9ad81bbd9e5.gz";
    }
    {
      site = "1GG";
      class = "tumours";
      pdx = false;
      r1 = "xp/2X/SHA256E-s98570101--d7e210916a40e021d180e96a47de63aacb9f4ee2ca99d3d986794e4e33f44126.gz/SHA256E-s98570101--d7e210916a40e021d180e96a47de63aacb9f4ee2ca99d3d986794e4e33f44126.gz";
      r2 = "9J/68/SHA256E-s98729381--9a89682a4e5a64f5f698a5a26f6a56f1e425c12d75cfa6fa99ef8b6d3af6ba3a.gz/SHA256E-s98729381--9a89682a4e5a64f5f698a5a26f6a56f1e425c12d75cfa6fa99ef8b6d3af6ba3a.gz";
    }
    {
      site = "1GG";
      class = "tumours";
      pdx = false;
      r1 = "qx/kq/SHA256E-s72634369--ae5d2270da4aaad0e3f4ee772eb751374e5116c7c6644ba1614162e56972fe2c.gz/SHA256E-s72634369--ae5d2270da4aaad0e3f4ee772eb751374e5116c7c6644ba1614162e56972fe2c.gz";
      r2 = "Qj/K4/SHA256E-s72581697--ff96940fa846e2b99bc2b1a5630422f6a92636ab817bca00eb2b52b38eebc2f9.gz/SHA256E-s72581697--ff96940fa846e2b99bc2b1a5630422f6a92636ab817bca00eb2b52b38eebc2f9.gz";
    }
    {
      site = "1GG";
      class = "tumours";
      pdx = false;
      r1 = "wz/5P/SHA256E-s105533123--05fdd72b9edf0046af80fc62b9a07379e999dd6ebd68c05521f6041f0f728183.gz/SHA256E-s105533123--05fdd72b9edf0046af80fc62b9a07379e999dd6ebd68c05521f6041f0f728183.gz";
      r2 = "Q1/j4/SHA256E-s106216950--adeacb3dfea768280fdbda9e7c7b841b7300a5b73a64d1fe424b4e7334fc9de1.gz/SHA256E-s106216950--adeacb3dfea768280fdbda9e7c7b841b7300a5b73a64d1fe424b4e7334fc9de1.gz";
    }
    {
      site = "1GG";
      class = "tumours";
      pdx = false;
      r1 = "40/5v/SHA256E-s116321170--c21af1c4128e9e1875809eef5a67d1e32cda3b734d207440887f42e5d3705659.gz/SHA256E-s116321170--c21af1c4128e9e1875809eef5a67d1e32cda3b734d207440887f42e5d3705659.gz";
      r2 = "83/qf/SHA256E-s117468324--ce4662472d8ee0f302c310cda67190eba24d2ac1c941b62b7444b99ffa26cab2.gz/SHA256E-s117468324--ce4662472d8ee0f302c310cda67190eba24d2ac1c941b62b7444b99ffa26cab2.gz";
    }
    {
      site = "1GG";
      class = "tumours";
      pdx = false;
      r1 = "F1/3j/SHA256E-s255055177--6a94c1b616a2f7b05a5740112dacfdfaa1262c31ea20c43e3320bb6e2162feb6.gz/SHA256E-s255055177--6a94c1b616a2f7b05a5740112dacfdfaa1262c31ea20c43e3320bb6e2162feb6.gz";
      r2 = "3j/x3/SHA256E-s257359045--6d2e15145a460f8f1bcb0865df977eba7f3e5d1502c56a7d8a0f905fa985c8e5.gz/SHA256E-s257359045--6d2e15145a460f8f1bcb0865df977eba7f3e5d1502c56a7d8a0f905fa985c8e5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 9.5.24:\nJust TP53 and TERT to be reported (not clinically needed). Is not a desert case. \n\nSample meeting follow up 2023.06.15\nPlan: send FFPE block 1GG for WES";
      blood_recall_history = "09Sep22 - DNA message left \n15Sep22 - DNA message left ";
      date_of_death = "11/2022";
      d_case_summary = "42yo F with relapsed metastatic uterine leiomyosarcoma \n Her initial tissue (hysterectomy) is at the Womens  Hospital 20.10.21, Lab no 21978887";
      date_consented = "2022-08-17";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "42 years old female \n\n2021-09: initial diagnosis, surgery, TAH BSO, FFPE block 1G received. \nIHC positive: vimentin, SMA and caldesmon, desmin and CAM5.2 patchy, \nIHC negative: AE1/3, 34BE12, CD10, melaA, HMB45, sox10, inhibin, calretinin\nER 2+ and PR 1+\n1/12/2021 - 7/01/2022: radiation\n2/8/2022 - 13/9/2022 DOXOrubicin\n2022-09: Blood B1 collected\n2022-11: deceased\n\nQuick summary:\n30/9/2021\tdiagnosis uLMS\n20/10/2021\tTAH BSO\n1/12/2021\tRTx\n1/7/2022\tPD\n1/8/2022\tDoxorubicin\n1/11/2022\tdeath";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "18Apr23: Oct21 sample received from RWH pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01646";
    capture = TwistV2HR;
  }
