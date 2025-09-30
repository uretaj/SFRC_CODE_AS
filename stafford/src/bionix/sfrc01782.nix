with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5v/8f/SHA256E-s810890429--0e284254ddd47777e36fd2a8cf9c17c1d80afe0acfef45a716c26e0d420e39d0.gz/SHA256E-s810890429--0e284254ddd47777e36fd2a8cf9c17c1d80afe0acfef45a716c26e0d420e39d0.gz";
      r2 = "90/Mx/SHA256E-s803495242--e56e44b529a2bd96c05cd3fe4b16cd1bfb14ec14481abc7e90e225de76cbde83.gz/SHA256E-s803495242--e56e44b529a2bd96c05cd3fe4b16cd1bfb14ec14481abc7e90e225de76cbde83.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "04/7P/SHA256E-s815348018--7487b0ca64943efe859adf57b3268f45cb17fe6e1928ac9e27e8c1873ea1e9f5.gz/SHA256E-s815348018--7487b0ca64943efe859adf57b3268f45cb17fe6e1928ac9e27e8c1873ea1e9f5.gz";
      r2 = "9p/GW/SHA256E-s812718876--915e9f19081f446d689367300d19cfdead5315926ea4c629cf7ebdd476dbfb18.gz/SHA256E-s812718876--915e9f19081f446d689367300d19cfdead5315926ea4c629cf7ebdd476dbfb18.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "XX/V5/SHA256E-s810104819--a3ce4ede45fcc63ba024ce2a3bf183ffc9c59c6581128657303682d881a1d574.gz/SHA256E-s810104819--a3ce4ede45fcc63ba024ce2a3bf183ffc9c59c6581128657303682d881a1d574.gz";
      r2 = "pj/zw/SHA256E-s805253957--5e3314d30de81ad6ec6abaf08036a95bd491088bbec9c00b23bfbfa426b1399a.gz/SHA256E-s805253957--5e3314d30de81ad6ec6abaf08036a95bd491088bbec9c00b23bfbfa426b1399a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q2/VG/SHA256E-s838202138--e60599d6141d2215f5a4da85fcf21f234df7e4856f2bbddbb453d7b8a5583531.gz/SHA256E-s838202138--e60599d6141d2215f5a4da85fcf21f234df7e4856f2bbddbb453d7b8a5583531.gz";
      r2 = "QX/5x/SHA256E-s838411607--36c67401d35fabd1c912e53ccabe7a07a91fc5ed2997fdb194aec53341c7b7d9.gz/SHA256E-s838411607--36c67401d35fabd1c912e53ccabe7a07a91fc5ed2997fdb194aec53341c7b7d9.gz";
    }
    {
      site = "1.1 (462)";
      class = "tumours";
      pdx = false;
      r1 = "2v/3F/SHA256E-s2674257858--e92c25850979b47a31aa0438355fadfd5a4b9d3acdf57f3b9d11a1e5c3e39f2e.gz/SHA256E-s2674257858--e92c25850979b47a31aa0438355fadfd5a4b9d3acdf57f3b9d11a1e5c3e39f2e.gz";
      r2 = "g7/z3/SHA256E-s2721920020--9137c5b90a0990e3336451a18db952bc838e7cde9dec97e6771e4da8f2c9e50b.gz/SHA256E-s2721920020--9137c5b90a0990e3336451a18db952bc838e7cde9dec97e6771e4da8f2c9e50b.gz";
    }
    {
      site = "1.1 (462)";
      class = "tumours";
      pdx = false;
      r1 = "Xq/KM/SHA256E-s2691586729--6b511a815e9ec6aa0691ca305fbc0a760a105c1b27cf4af51d213429152fd52b.gz/SHA256E-s2691586729--6b511a815e9ec6aa0691ca305fbc0a760a105c1b27cf4af51d213429152fd52b.gz";
      r2 = "qJ/8x/SHA256E-s2740061675--57a9d87971093daf877d7acd409b5b1af4e2647a7b327fa25a7a920562a1e54c.gz/SHA256E-s2740061675--57a9d87971093daf877d7acd409b5b1af4e2647a7b327fa25a7a920562a1e54c.gz";
    }
    {
      site = "1.1 (462)";
      class = "tumours";
      pdx = false;
      r1 = "F3/z4/SHA256E-s2896433200--eb760dfe2e61a9e8d66f6cd92f3c0fb92556243f08d0d52532dd6159616c05cb.gz/SHA256E-s2896433200--eb760dfe2e61a9e8d66f6cd92f3c0fb92556243f08d0d52532dd6159616c05cb.gz";
      r2 = "xm/X3/SHA256E-s2955819067--6a289689cd1916f0886fb511d26c5bae151468d3ca7b26c11578555137aee049.gz/SHA256E-s2955819067--6a289689cd1916f0886fb511d26c5bae151468d3ca7b26c11578555137aee049.gz";
    }
    {
      site = "1.1 (689)";
      class = "tumours";
      pdx = false;
      r1 = "Vg/p2/SHA256E-s2022645831--714835295612c3cd9e2d9fa9c82ad86b807297b320119da74dfb7ba37ce394f8.gz/SHA256E-s2022645831--714835295612c3cd9e2d9fa9c82ad86b807297b320119da74dfb7ba37ce394f8.gz";
      r2 = "6f/ZZ/SHA256E-s2032161658--ca1c92f748984021c4a79b109fd7765aa398f876755a2eeaa943005ff63fb8b2.gz/SHA256E-s2032161658--ca1c92f748984021c4a79b109fd7765aa398f876755a2eeaa943005ff63fb8b2.gz";
    }
    {
      site = "1.1 (689)";
      class = "tumours";
      pdx = false;
      r1 = "X7/ZK/SHA256E-s2012085098--8623488f6cff2132a3b199f593bcecb94c675f7d6596bf9aef5abeaf3966ab32.gz/SHA256E-s2012085098--8623488f6cff2132a3b199f593bcecb94c675f7d6596bf9aef5abeaf3966ab32.gz";
      r2 = "gV/F1/SHA256E-s2022031062--065efa4ed1e578efc575663efa32000dceca28409aaf53417a30b9591e5f9636.gz/SHA256E-s2022031062--065efa4ed1e578efc575663efa32000dceca28409aaf53417a30b9591e5f9636.gz";
    }
    {
      site = "1.1 (689)";
      class = "tumours";
      pdx = false;
      r1 = "F8/Zw/SHA256E-s2193546778--436f184dd561f2b89f457b94d0b3f0beaeb4f22e62943225d5dd4a3a158d15f6.gz/SHA256E-s2193546778--436f184dd561f2b89f457b94d0b3f0beaeb4f22e62943225d5dd4a3a158d15f6.gz";
      r2 = "Qm/vP/SHA256E-s2209294692--a1f3d3123cc20b23c497cd0b2c53b282b8a69012446c6b565342976903abd7e4.gz/SHA256E-s2209294692--a1f3d3123cc20b23c497cd0b2c53b282b8a69012446c6b565342976903abd7e4.gz";
    }
    {
      site = "1.1 (462)";
      class = "tumours";
      pdx = false;
      r1 = "4G/F3/SHA256E-s1773133185--d29d9a3c2f1a6e3022b4eb89e5de13761633a9895e7323b5572c44fbf636deb2.gz/SHA256E-s1773133185--d29d9a3c2f1a6e3022b4eb89e5de13761633a9895e7323b5572c44fbf636deb2.gz";
      r2 = "1J/Q2/SHA256E-s1793418657--4984dddd19e72775a9377d84ede1bda64bb9a8cc28d76c101af570510b569a04.gz/SHA256E-s1793418657--4984dddd19e72775a9377d84ede1bda64bb9a8cc28d76c101af570510b569a04.gz";
    }
    {
      site = "1.1 (462)";
      class = "tumours";
      pdx = false;
      r1 = "V8/m2/SHA256E-s1757969321--29827056db227b19ccd13ad8d547b918c897fcd42334125528b54d5fdb633cbe.gz/SHA256E-s1757969321--29827056db227b19ccd13ad8d547b918c897fcd42334125528b54d5fdb633cbe.gz";
      r2 = "fk/x9/SHA256E-s1774988306--dba452201615fd9d8e522619ee4bf72380d4c7246aaf742c6e59a345a00f6fb0.gz/SHA256E-s1774988306--dba452201615fd9d8e522619ee4bf72380d4c7246aaf742c6e59a345a00f6fb0.gz";
    }
    {
      site = "1.1 (462)";
      class = "tumours";
      pdx = false;
      r1 = "3P/Fj/SHA256E-s1675313434--dd4b61cda634c15451aaa5c1e30f9efdd3f5203ade07f13481d31659c16cfba1.gz/SHA256E-s1675313434--dd4b61cda634c15451aaa5c1e30f9efdd3f5203ade07f13481d31659c16cfba1.gz";
      r2 = "Kx/8J/SHA256E-s1699385226--708c8e5d97297cb0a73b97814214d12d5a189c6ee370b102314108da21862c39.gz/SHA256E-s1699385226--708c8e5d97297cb0a73b97814214d12d5a189c6ee370b102314108da21862c39.gz";
    }
    {
      site = "1.1 (462)";
      class = "tumours";
      pdx = false;
      r1 = "F5/5V/SHA256E-s1722026575--be0afb57577577604da1c999257da92c863c1700f78e2e3c39b5153f8d239791.gz/SHA256E-s1722026575--be0afb57577577604da1c999257da92c863c1700f78e2e3c39b5153f8d239791.gz";
      r2 = "6j/9K/SHA256E-s1755073240--927a6bc4a0d72b0a685508126175b71dcde6e9e655638a3fcd48da401a1a112e.gz/SHA256E-s1755073240--927a6bc4a0d72b0a685508126175b71dcde6e9e655638a3fcd48da401a1a112e.gz";
    }
    {
      site = "1.1 (462)";
      class = "tumours";
      pdx = false;
      r1 = "4M/9p/SHA256E-s2062142531--a418b967461980a38326d1b348ef965d78b7efa50fc5a5cebb2ecefbd80aa92a.gz/SHA256E-s2062142531--a418b967461980a38326d1b348ef965d78b7efa50fc5a5cebb2ecefbd80aa92a.gz";
      r2 = "04/PJ/SHA256E-s2094762849--e3580e32c3ff4c8cd494572012b057a8767b758c8590494f8e36b41ada3c1457.gz/SHA256E-s2094762849--e3580e32c3ff4c8cd494572012b057a8767b758c8590494f8e36b41ada3c1457.gz";
    }
    {
      site = "1.1 (689)";
      class = "tumours";
      pdx = false;
      r1 = "FV/j7/SHA256E-s338520952--6a5ffd8ba8c1154b07797d281beac768c085df7836b7ceed1a6243637202f233.gz/SHA256E-s338520952--6a5ffd8ba8c1154b07797d281beac768c085df7836b7ceed1a6243637202f233.gz";
      r2 = "F8/KV/SHA256E-s337474566--6ef22902f0079bb1b14bd2437aaf61ef295617d942c9125b97d0fad19a9ad54d.gz/SHA256E-s337474566--6ef22902f0079bb1b14bd2437aaf61ef295617d942c9125b97d0fad19a9ad54d.gz";
    }
    {
      site = "1.1 (689)";
      class = "tumours";
      pdx = false;
      r1 = "Kp/76/SHA256E-s287336362--b87c0761494f3515dc0b38145db558fa2858fd3c66e7dc8ca4a0ca8e6751c8ad.gz/SHA256E-s287336362--b87c0761494f3515dc0b38145db558fa2858fd3c66e7dc8ca4a0ca8e6751c8ad.gz";
      r2 = "kX/X9/SHA256E-s286214764--12d958d15a25e676cbaf6069d01bd68fc96dae36eadfaa296e0aa72a693168a4.gz/SHA256E-s286214764--12d958d15a25e676cbaf6069d01bd68fc96dae36eadfaa296e0aa72a693168a4.gz";
    }
    {
      site = "1.1 (689)";
      class = "tumours";
      pdx = false;
      r1 = "jj/0F/SHA256E-s369538631--9a99c615208216af3d98828833f40ddb4870227c0fbdbefb28dc33b3728d2a07.gz/SHA256E-s369538631--9a99c615208216af3d98828833f40ddb4870227c0fbdbefb28dc33b3728d2a07.gz";
      r2 = "mZ/qx/SHA256E-s370101779--d1b8343437f6a47e780889239e76eff0a6149141769fd042448575cc60d8428f.gz/SHA256E-s370101779--d1b8343437f6a47e780889239e76eff0a6149141769fd042448575cc60d8428f.gz";
    }
    {
      site = "1.1 (689)";
      class = "tumours";
      pdx = false;
      r1 = "qq/7M/SHA256E-s380168468--fce29f836c2e1b0b1649c8925a0c9b80ce4e441fa18a9d47f971e73aed583b1e.gz/SHA256E-s380168468--fce29f836c2e1b0b1649c8925a0c9b80ce4e441fa18a9d47f971e73aed583b1e.gz";
      r2 = "9v/Pg/SHA256E-s382194704--a58ea5453ecf1bad8b94aaf766cba003b901d6de1cb5f5f8a63a4d69d4a4e4a9.gz/SHA256E-s382194704--a58ea5453ecf1bad8b94aaf766cba003b901d6de1cb5f5f8a63a4d69d4a4e4a9.gz";
    }
    {
      site = "1.1 (689)";
      class = "tumours";
      pdx = false;
      r1 = "Mg/zg/SHA256E-s656370283--ef46ee5f4d4eceecd14a079f519deb9ff432d9aca726b318ad4b7286a8dc7ed3.gz/SHA256E-s656370283--ef46ee5f4d4eceecd14a079f519deb9ff432d9aca726b318ad4b7286a8dc7ed3.gz";
      r2 = "KX/pP/SHA256E-s658949330--c62e56c1025ef126c944bfc324114d3fd6a03a4b7eb98f0ab7c057b658d3a134.gz/SHA256E-s658949330--c62e56c1025ef126c944bfc324114d3fd6a03a4b7eb98f0ab7c057b658d3a134.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 9.5.24:\n2/5 brothers Ca in 60s; Sister; x 3 Aunts; Grandson - With this family history, what is in the germline would not be on a panel. \nMatt and Justin to keep looking closely at this report. Do not need an urgent result, need a comprehensive one for the family. \n\nEmail from Clare 2023.12.07 Note to admin team: Please send WES Report to FCC (non-urgent) once through.\n\nClare sample meeting 2023.10.05\nPlan: WES on both FT block (rare) and hurthle cell carcinoma (super rare). Non urgent. \nBe careful both blocks are labelled 1.1, you can differentiate them by the path report number.  \n\nClare sample meeting 2023.09.21\nPlan on ffpe block 1.1 (2022): Use node block from 2022 for WES (non urgent) and organise Cyclin E  \n\n2019-05:  hemithyroidectomy - JUST CHECKING THIS WAS FOR RECURRENT THYROID \t\t\tCANCER? YES (FFPE block 1.1 received pending review) Should we do something with it? Bring it up for review again to decide if for WES or not \n\n2 invasive cancers for Kristy. \nDeciding if clinically urgent (Adriana) \n\nSample meeting 11.08.2023\nPlan on FFPE block 1S (15-20%): purity is bordeline for Twist (needs to be at least 20%). Should we try anyway?  \n\n2022-04\t\tNode Surgery CAN WE GET THE FFPE FROM THIS????\tAS THE 2015 SURGERY IS SO LONG AGO AND ALREADY HAVE ALLOCATE PANEL FROM AFTER THAT? \n\nCAN WE DO CYCLIN E, B7H4 AND MYC IHC ON THE BASELINE AND THE LN IF WE GET IT PLEASE ";
      blood_recall_history = "31Aug23: Apr22 sample requested from Melbourne Pathology by Monica\n05Sep23: Apr22 sample received from Melbourne Pathology by Monica";
      date_of_death = "08/2023";
      d_case_summary = "dx HGS fallopian tube ca 53, thyroid hurthle cell carcinoma 56. BRCA1/2 NAD (Feb 2016)";
      date_consented = "2023-07-07";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS Fallopian tube, Hurthle cell carcinoma (thyroid)";
      case_details = "62 year old female with two primary cancers (high grade serous ovarian cancer Dx 2015 and Hurthle cell carcinoma Dx 2019 - both were active in 2019) \n\n2015 Sept\tHGSOC FIGO III, initial diagnosis, surgery, Neoadjuvant chemotherapy xC6,  \nHGSOC FFPE block 1S received \nIHC positive: P53, WT1 (weak patchy) \nER moderate in 30% tumour cells , PR strong in 10% tunour cells  \n\n2018\t\tRecurrence, biopsy \n\n2019-01\t\t2nd line Carboplatin + Liposomal doxorubicin for HGSOC\n\n2019 May 13th hemithyroidectomy - \n1st instance of thyroid cancer\n23 mm Hurthle Cell thyroid cancer diagnosed\nIHC positive: CK7, x, TTF1, vimentin \nIHC negative: CD10, CD163, ROS1, PanTRK, ALK \nSomatic panel variant on thyroid cancer FFPE : no oncogenic variant detected ROS1, panTRK and ALK, \n2019-06\tdiagnosis confirmed by doctor (actually diagnosis made based on surgery and histology from May 2019\n\n2019-09\t\tresection of LN in mediastinum (centre of the chest) \nIHC positive: TTF1, thyroglobulin (patchy) \n\n2019-12\t\tHGSOC symptomatic progression, recurrence of ovarian carcinoma, biopsy \n(at this point she had two active cancers - but they were not diagnosed synchronously)\n\n2020-02/2020-06: 3rd line Carboplatin/Gemcitabine xC6, residual disease\n\n2020-08\t\tRadiotherapy \n\n2021-03\t\tR costophrenic angle mass - c/w HGSOC not Hurthle Cell\nIHC positive: CK7, PAX8, P53 \nIHC negative: thyroglobulin, TTF1, WT1 \nER and PR weak patchy \n\n2021-04 \t4th line Carbo/Taxol \nALLOCATE: TP53 mutation, nil actionable. No pathogenic germline variants. \n\n2021-08\t\tCommenced Niraparib maintenance Rx  \n\n2021-11 \t Stopped Niraparib due to intolerance \n\n2022-04\t\tR supraclavicular mass + R brachial plexus mass - metastatic carcinoma\nconsistent with high grade ovarian carcinoma\nNode Surgery \nIHC negative: ER, PR, TTF1 \nIHC positive: PAX8, P53, WT1 (patchy) \nFor topotecan/ bev with local medical oncology \n\n2023 Jan-Apr        Taxol Bev     \n\n2023\t\tCommencing radiotherapy for treatment of ovarian recurrence Chest Wall\n\n2023-07\t\tBlood B1 received  \n\n2023-08: Deceased\n\nQuick summary:\n1/9/2015\tNACT chemo\n11/11/2015\tTAH BSO (Block 1S), HGSOC Dx\n2018\t        recurrence HGSOC\n1/1/2019\tCarboplatin and Caelyx\n13/5/2019\tDx Hurthle cell carcinoma, hemithyroidectomy\n1/9/2015\tresection lymph node for Hurthle cell\n1/12/2019\trecurrence HGSOC\n1/2/2020\tCarboplatin and Gemcitabine\n1/8/2020\tRTx\n1/1/2021\trecurrence Hurthle cell carcinoma\n1/3/2021\trecurrence HGSOC\n1/4/2021\tCarboplatin and Paclitaxel\n1/8/2021\tNiraparib (maintenance. Ceased 11/21)\n27/4/2022\trecurrence HGSOC\n1/1/2023\tPaclitaxel and Bevacizumab (to Apr)\n2023\t        RTx\n1/8/2023\tdeceased\n\n\nFamily history: 8 cancer types, 5 rare, one adolescent in youngest generation, 5 of 9 siblings with cancer (4 rare cancer types).\n\nFirst degree relatives: HGSFT 53 yo+Hurthle Cell Thyroid 56 yo, NET pancreas 58 yo, Fibrous meningioma 37yo, lung early 60s, Bladder early 60s, mother Bowel ca 78 yo, father Bowel ca 87 yo\nSecond degree relatives: NPC 17yo";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01782_FamilialCancerPanel_14Sep2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "17Jul23: May19 (Hurthle cell carcinoma) requested from PMCC by Monica\n17Jul23: Nov15 sample requested from RWH by Monica\n18Jul23: Nov15 sample received from RWH by Monica\n12Sep23: May19 (Hurthle cell carcinoma) received from PMCC by Monica";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01782";
    capture = TwistV2HR;
  }
