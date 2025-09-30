with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9M/V3/SHA256E-s2075016881--dca3db4e94bd48623db03c609bbbb2f65a714bc798f693baf3bea7d9341f5e83.gz/SHA256E-s2075016881--dca3db4e94bd48623db03c609bbbb2f65a714bc798f693baf3bea7d9341f5e83.gz";
      r2 = "mX/Kf/SHA256E-s2091032506--ae29ac861bac27b879fb4afdec553d87fb41d9b9d602b5a2406b11a1370179d5.gz/SHA256E-s2091032506--ae29ac861bac27b879fb4afdec553d87fb41d9b9d602b5a2406b11a1370179d5.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q1/3W/SHA256E-s2091026397--34e4ea5df3c4a214c1e6ddc9f38c457e5aa5b31e92e0ce95b25a968b405156af.gz/SHA256E-s2091026397--34e4ea5df3c4a214c1e6ddc9f38c457e5aa5b31e92e0ce95b25a968b405156af.gz";
      r2 = "jF/1Z/SHA256E-s2121650764--089a3058468dcd5b2a6dd16eb02926473cb3fd81b8144f965b0e19742fe31c4e.gz/SHA256E-s2121650764--089a3058468dcd5b2a6dd16eb02926473cb3fd81b8144f965b0e19742fe31c4e.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j0/Xw/SHA256E-s2060691535--c8c169de28e7605c72b40d8282b0c5a3549ab36b3131f0ee085e79b5137f3ab2.gz/SHA256E-s2060691535--c8c169de28e7605c72b40d8282b0c5a3549ab36b3131f0ee085e79b5137f3ab2.gz";
      r2 = "6g/3Q/SHA256E-s2085264013--e55eb652feb1aa55cc73b6f67c8c96b3585a1da7f66653b57bbdbf39183d8c29.gz/SHA256E-s2085264013--e55eb652feb1aa55cc73b6f67c8c96b3585a1da7f66653b57bbdbf39183d8c29.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "MM/v0/SHA256E-s2215615210--94c4110291052dabb40e91ed814dd5bc322df354299af94f279f1ecf741742d4.gz/SHA256E-s2215615210--94c4110291052dabb40e91ed814dd5bc322df354299af94f279f1ecf741742d4.gz";
      r2 = "Z3/QF/SHA256E-s2257995642--e7b603d77e3787ae276e4416e48939e387f40681b7fef3c8fea61a6ec1778142.gz/SHA256E-s2257995642--e7b603d77e3787ae276e4416e48939e387f40681b7fef3c8fea61a6ec1778142.gz";
    }
    {
      site = "S1_T1_116";
      class = "tumours";
      pdx = false;
      r1 = "0g/W9/SHA256E-s2347654956--e949ff688fbef0089a0056f8771ddf6add1cdcc477ea3900b52238d678b0bf0b.gz/SHA256E-s2347654956--e949ff688fbef0089a0056f8771ddf6add1cdcc477ea3900b52238d678b0bf0b.gz";
      r2 = "49/m7/SHA256E-s2363413876--26b403771f7a5f97b0192f7a68c31ce7ff65f4ef2848b323509e6828f1724e54.gz/SHA256E-s2363413876--26b403771f7a5f97b0192f7a68c31ce7ff65f4ef2848b323509e6828f1724e54.gz";
    }
    {
      site = "S1_T1_116";
      class = "tumours";
      pdx = false;
      r1 = "7J/78/SHA256E-s2365019923--435977bd4d8aca96e3372bd29ff99631d69c238250a5a9dfba5cf9c9b1a9418b.gz/SHA256E-s2365019923--435977bd4d8aca96e3372bd29ff99631d69c238250a5a9dfba5cf9c9b1a9418b.gz";
      r2 = "p0/8m/SHA256E-s2397317087--9ff20670c90fe4c222d5d1268367e6d9d72303d19a9595c99d771a6c4dcd8b4f.gz/SHA256E-s2397317087--9ff20670c90fe4c222d5d1268367e6d9d72303d19a9595c99d771a6c4dcd8b4f.gz";
    }
    {
      site = "S1_T1_116";
      class = "tumours";
      pdx = false;
      r1 = "jm/89/SHA256E-s2342962816--c59e8985b7782cd38475464e9d4cb093d8ee7823e17ee91649c1f765a1895098.gz/SHA256E-s2342962816--c59e8985b7782cd38475464e9d4cb093d8ee7823e17ee91649c1f765a1895098.gz";
      r2 = "02/wx/SHA256E-s2368749993--e80dbf7cf6f42004ec4e5b403da245712908ec38d3b3d631b4ed97b257e39ce4.gz/SHA256E-s2368749993--e80dbf7cf6f42004ec4e5b403da245712908ec38d3b3d631b4ed97b257e39ce4.gz";
    }
    {
      site = "S1_T1_116";
      class = "tumours";
      pdx = false;
      r1 = "kx/W6/SHA256E-s2506263585--8b0e995f0d8a978184085b8eb66dadc45a9e6c23435b332091414d0d42b5a029.gz/SHA256E-s2506263585--8b0e995f0d8a978184085b8eb66dadc45a9e6c23435b332091414d0d42b5a029.gz";
      r2 = "WK/Mw/SHA256E-s2551005948--17b60bd3df0a06cc4a6b98fa7d4d01be50b14ae45eaf1dce4df9f47caa663fee.gz/SHA256E-s2551005948--17b60bd3df0a06cc4a6b98fa7d4d01be50b14ae45eaf1dce4df9f47caa663fee.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nThe NF1 needs to be checked (we can't see the reported variant). \nCN plot has warnings.\nFlagging Anhtony (HGSOC --> OCS) \nMYC is amplified, just a large region (tail of the chromosome). The number of copies is uncertain.\n\nClare Meeting 18.05.2023\nSample only just submitted for WGTS, but patient is now deceased. Have the ok for research only WGS report from Joep.\n\nClare's Meeting 09.03.2023\n-S1 tissue is 50 - 55% purity. To do WGTS.\n-Possible eligibily for EPOCH  ";
      date_of_death = "03/2023";
      d_case_summary = "78, met HGSOC w neurofibromatosis. Wt gBRCA, no somatic HRD mutations (EMBRACE), no promoter methylation. On Olaparib (ICON 9) since 08/2021 (SD)";
      date_consented = "2023-02-08";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, now carcinosarcoma";
      case_details = "78F\n\n2019-10: Dx HGSOC Stage IV via core biopsies\nIHC positive: p53 (80% tumour cells), PAX8, ER (2+, <2%), WT-1, BER EP4, CK7\nIHC negative: PR, CK20\n\n2019-11 - 2020-03: Chemotherapy: Carboplatin/Paclitaxel x5\n\n2020-01: Surgery: RSO, omentectomy (prior hysterectomy for benign disease)\nIHC positive: p53, PAX8, ER (+2, 5%), PR (+2, <5%), WT-1, CK7,\n\n2021-03: Recurrence; platinum sensitive.\nEMBRACE: gBRCA WT, no somatic HRD mutation, no BRCA1 promoter methylation\n\n2021-04 - 2021-07: Chemotherapy: Doxorubicin/carboplatin\n\n2021-08: Clinical Trial: PMC18/150: Olaparib + Cediranib\n- registered to ICON9 post completion of 2nd line \n  Carbo/Caelyx\n- cediranib not tolerated due to intolerable \n  GI/systemic Aes, stopped at Cycle 4\n\n2023-02: Metastasis - pelvic tumour. Carcinosarcoma.\nFresh Tissue S1 received, Blood B1 received. \nIHC positive: p53, PR (2+, <5%), AE1/3, vimentin\nIHC negative: ER\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01718";
    capture = TwistV2HR;
  }
