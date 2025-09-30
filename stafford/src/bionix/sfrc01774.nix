with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Q1/Gg/SHA256E-s2043398427--9f924d47bb6b1006e3151f8789ff6ea1f108b64d32a01eae93553569bc4bd90f.gz/SHA256E-s2043398427--9f924d47bb6b1006e3151f8789ff6ea1f108b64d32a01eae93553569bc4bd90f.gz";
      r2 = "kK/5m/SHA256E-s2067152033--b5ccdc6c40f3c80a771c36c7193a8639bc79d32d4c9b8a093fdf47d8da11a797.gz/SHA256E-s2067152033--b5ccdc6c40f3c80a771c36c7193a8639bc79d32d4c9b8a093fdf47d8da11a797.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "P2/Jf/SHA256E-s2053949566--c1da44ba6ecf54e58601263844fdc288d2af906ca64bd66d20a75eba5d85c8e4.gz/SHA256E-s2053949566--c1da44ba6ecf54e58601263844fdc288d2af906ca64bd66d20a75eba5d85c8e4.gz";
      r2 = "XK/g4/SHA256E-s2091804773--2004f11e01ccc965bd6cc76918fb539f7888be5cd2753b5119ee0b84351675bf.gz/SHA256E-s2091804773--2004f11e01ccc965bd6cc76918fb539f7888be5cd2753b5119ee0b84351675bf.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jx/Qj/SHA256E-s2024991550--95199ded30fec639835ae26e69ebe6e3795675461cb58c574f60724f06f109dc.gz/SHA256E-s2024991550--95199ded30fec639835ae26e69ebe6e3795675461cb58c574f60724f06f109dc.gz";
      r2 = "X8/52/SHA256E-s2056355282--c13c86d1e6c49a3fb548e47fed015fafcfeaa8a297c0525db766c6912480c61d.gz/SHA256E-s2056355282--c13c86d1e6c49a3fb548e47fed015fafcfeaa8a297c0525db766c6912480c61d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5q/3k/SHA256E-s2159555981--759f31e4cf6f45da5f4687beb1173417ae3034b10ee1cb78d8cdd150fdbe2428.gz/SHA256E-s2159555981--759f31e4cf6f45da5f4687beb1173417ae3034b10ee1cb78d8cdd150fdbe2428.gz";
      r2 = "5k/7J/SHA256E-s2207315132--933e1b7cd30e91eead7d5673ccee4758d7aa0354ba63dc4261f6eefa54c64d75.gz/SHA256E-s2207315132--933e1b7cd30e91eead7d5673ccee4758d7aa0354ba63dc4261f6eefa54c64d75.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Jv/5f/SHA256E-s2083568507--a272166613b931d1408c1dc7ac1c13bd1b9d233fcd2e9f948b23f7c4bd2f7892.gz/SHA256E-s2083568507--a272166613b931d1408c1dc7ac1c13bd1b9d233fcd2e9f948b23f7c4bd2f7892.gz";
      r2 = "qj/zG/SHA256E-s2100103847--e082d36efbe75c25c1b9ee046ea88598a0b2e3fefb2ea462dae1a3d826cae7ef.gz/SHA256E-s2100103847--e082d36efbe75c25c1b9ee046ea88598a0b2e3fefb2ea462dae1a3d826cae7ef.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "7g/7z/SHA256E-s2096118261--6e93225054041f6f487c9f3e3235635f9f17c9f48a61102c6a9c0e84c6e4570c.gz/SHA256E-s2096118261--6e93225054041f6f487c9f3e3235635f9f17c9f48a61102c6a9c0e84c6e4570c.gz";
      r2 = "Gg/97/SHA256E-s2127138716--dce003aaaf83198649d12b166a6370ad0c1cb0f9631a2beaebdebc8fe2d3cb0c.gz/SHA256E-s2127138716--dce003aaaf83198649d12b166a6370ad0c1cb0f9631a2beaebdebc8fe2d3cb0c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "wZ/kW/SHA256E-s2066353811--d17825ab1ff49a1641a82c0f797d2860c48ea132279a2280e403f5e273686fcd.gz/SHA256E-s2066353811--d17825ab1ff49a1641a82c0f797d2860c48ea132279a2280e403f5e273686fcd.gz";
      r2 = "jf/30/SHA256E-s2090333223--6d8acd21b815f8e5d5dfee8cb9cf2f34cd5ec2ed801409cb63c72624b02cdedb.gz/SHA256E-s2090333223--6d8acd21b815f8e5d5dfee8cb9cf2f34cd5ec2ed801409cb63c72624b02cdedb.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "z5/00/SHA256E-s2174287413--dc2ccc5de543a43f809a42d6593877149b0cbf05d0de928a71d4f2f0e5a491b9.gz/SHA256E-s2174287413--dc2ccc5de543a43f809a42d6593877149b0cbf05d0de928a71d4f2f0e5a491b9.gz";
      r2 = "28/Z1/SHA256E-s2213768137--868251eed782960657436f900bb13e334c9d3bd994cfab65fc5ea657f5905753.gz/SHA256E-s2213768137--868251eed782960657436f900bb13e334c9d3bd994cfab65fc5ea657f5905753.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "CA0165";
      meeting_discussions_follow_up = "Sample Meeting 29.04.2024\nCASCADE FFPE Blocks: \n-Earmarked for certain projects now? Holly has looked at them for Stromal Project (controls). \n-Breast and Ovarian are excluded from MP. \n-Kas and Matt - let them know about this case, check the WRN in the WES. \n-Liz as well. Waiting on PDX. \n-Won't do anything unless there is reason for Project.  \n\nSample meeting 04.04.2024\n-Put on the list for future OPAL (all blocks)-Kristy. A pre-screen prior to WES. \n-Talk to Cass about which samples to put in mice (S6 only; 60% purity, entirely tumour).\n-Section and review additional 12 blocks received from CASCADE.\n\nRC Meeting 14.3.24:\nReport MSH2 to FCC - outreach from Sydney \n\nClare meeting 05.10.2023\nDiscussed S1 OCT block.\nPlan: Ratana to extract DNA from the OCT, will be for WES. \nPatient is unwell. \n\nClare's sample meeting 2023.09.07\nPlan: Multiple primary for Kristy. WES? \nCS-WES on ovarian only (ffpe 2E), leave breast for now. ";
      blood_recall_history = "04Aug23 - Text Sent\n18Sep23- scheduling B2 for appointment on the 22nd Sep";
      date_of_death = "01/2024";
      d_case_summary = "CASCADE CA0165\n\n71 y female.\nDiagnoses: synchronous HGSOC and multifocal R BC in mid 2017\n\nMultifocal breast cancer Dx July 2017; IDC and also an ILC which was HER2 amplified\nR TM plus SNB July 2017; Taxotere carboplatin x 6 from Sept 2017, switch to carboplatin 75% /paclitaxel 50% with PN; trastuzumab for 12 months till Aug 2018;\nSept 2018 tamoxifen to Letrozole then Anastrazole, all poorly tolerated, ceased.\n\nHGSOC Dx July 2017 FIGO 1C3, 23/8/17 primary debulking surgery;\n1st line adj chemo Sept 2017 see below - Carboplatin/Taxotere switch to Carboplatin/paclitaxel x 6\nOct 2019, raised CA125, retroperitoneal LN\nNov 12th 2021 - Core biopsy L supraclavicular LN - ER weak 40% PR negative HER2 1  ISH neg\nFeb-June 2022 - 2nd line chemo 'Calypso' regimen: carboplatin/paclitaxel x6 full dose \nDec 2022 Rising CA125, PD on CTCAP and bone scan, RT and palliative admission Feb-March 2023\nMay 2023, some response on CTCAP - on a treatment break - nothing to biopsy at the moment\n";
      date_consented = "2023-06-13";
      tumour_type = "HGSOC";
      tumour_details = "synchronous HGSOC and right breast cancer";
      sfrcp_her2_report = "SFRC01774_HER2_12Nov2021_Redacted.pdf";
      case_details = "71F\n\n2017-07: Dx HGSOC FIGO 1C3 and multifocal breast cancer, HER2 amplified\nSurgery: R) Mastectomy (FFPE Blocks 1CC and 1T)\nIHC positive: HER2 (2+, 10%), PR (2+ 80%), ER (3+, 95%)\nKi67: 10%\n\n2017-08: Surgery: TAH/BSO (FFPE Block 2E)\nIHC positive: PAX8, WT1, CA125, ER (2+, 70%), PR (2+, 5%)\nIHC negative: P53 (null), \n\nBreast:\nIHC positive: ER, PR\nIHC negative: HER2\nFISH: HER2 amplified\n\n2017-08 - 2018-08: Trastuzumab\n\n2017-09: Chemotherapy: Carboplatin/Taxotere, switched to carboplatin/paclitaxel x6\n\n2018-09: Immunotherapy: Tamoxifen to letrozole, then anastrozole. All poorly tolerated, ceased.\n\n2019-10: Raised CA125, retroperitoneal LN\n\n2020-06: Metastasis in retroperitoneum\n\n2021-11: Metastasis in L) supravascular LN. Immunphenotype consistent with HGSOC\nIHC positive: CK7, PAX8, WT1, ki67, ER (1-2+, 40%)\nIHC negative: CK20, TTF1, NapsinA, GATA3, mammaglobin, GCDFP15, SOX10, p16, p53 (null), PR\nHER2 IHC and ISH: Negative\n\n2022-02 - 2022-06: Chemotherapy: CALYPSO doxorubicin/carboploatin x6 full dose\n\n2022-12: Rising CA125, progressive disease. Increasing retroperitoneal mass. Platinum resistant.\n\n2023-02 - 2023-03: Radiation\n\n2023-05: Partial response seen on CTCAP\n\n2023-07: Sections from FFPE Block 1T, 1CC, (Breast) and 2E (HGSOC)\n\n2023-08: Blood B1 received. Fresh tissue S1 received. FFPE Block (no ID).\nIHC Positive: CK7, ER (moderate, 80%), PAX8 (strong, diffuse), WT-1\nIHC negative: GATA3, CK20\np53: loss of staining (null cell pattern)\nHER2: focal weak membranous reactivity (Score +1)\n\n2023-09: Blood B2 received.\n\n2023-10: B1 and S1 DNA sent for WES:\n-Reportable germline MSH2 spice variant\n-Reportable somatic TP53 frameshift variant \n-Focal amplification of KRAS (x 40 copies) \n\n2024-01: Deceased. Enrolled in CASCADE. Fresh tissue S2 - S7 received.\n\n2024-02: FFPE Block (no ID) from 2023-08 biopsy received.\n\nNB: no treatments during 2023, too unwell.";
      brca_report = "SFRC01774_BRCA_27Oct2017_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "04Jul23: Aug17 sample requested from RWH by Monica\n11Jul23: Jul17 sample requested from RWH by Monica\n18Jul23: Jul17 sample received from RWH by Monica\n18Jul23: Aug17 sample received from RWH by Monica\n13Feb24: Aug23 sample received from PMC by Haris ";
      mp_subgroup_sfrcp4_new_id = "2 Primary Breast Ovary only";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01774";
    capture = TwistV2HR;
  }
