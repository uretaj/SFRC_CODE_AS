with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "MK/KM/SHA256E-s644978639--7605ed888790014a9e39b153adfdd50fba9e780cffc42247cc4f9f27b38b8f91.gz/SHA256E-s644978639--7605ed888790014a9e39b153adfdd50fba9e780cffc42247cc4f9f27b38b8f91.gz";
      r2 = "V4/Pk/SHA256E-s650688639--ac2a7f16d267f524076130e795311f7b02da53cdfcf1a5cbc3604785ebac119d.gz/SHA256E-s650688639--ac2a7f16d267f524076130e795311f7b02da53cdfcf1a5cbc3604785ebac119d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3K/v4/SHA256E-s648586247--4f8c3122719dab2604908b6430c68aa2e3fd567ae11e0d2d6fd093a95befdddd.gz/SHA256E-s648586247--4f8c3122719dab2604908b6430c68aa2e3fd567ae11e0d2d6fd093a95befdddd.gz";
      r2 = "GK/q1/SHA256E-s658804691--4649e3a2edcfac10b475a027f2cd50a809a3f247e328b90e411b584b6526e8c7.gz/SHA256E-s658804691--4649e3a2edcfac10b475a027f2cd50a809a3f247e328b90e411b584b6526e8c7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4W/mm/SHA256E-s639106042--3ecaddd9941e418b6dc0117a35d6efa7ee6144cf71d3dd342b8ee1fe5649ecfe.gz/SHA256E-s639106042--3ecaddd9941e418b6dc0117a35d6efa7ee6144cf71d3dd342b8ee1fe5649ecfe.gz";
      r2 = "Xq/Vj/SHA256E-s647482501--ce182be21a07d9f91d59e119c117facd20be1689e26c3d89ca0657fb76b09c71.gz/SHA256E-s647482501--ce182be21a07d9f91d59e119c117facd20be1689e26c3d89ca0657fb76b09c71.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qZ/GQ/SHA256E-s679068107--3ce720d6a7d979ab1b44fe46a4f29cc9d15995bd0feaccaec8ec8fefe6e274cd.gz/SHA256E-s679068107--3ce720d6a7d979ab1b44fe46a4f29cc9d15995bd0feaccaec8ec8fefe6e274cd.gz";
      r2 = "Fx/MG/SHA256E-s692942733--310f10e09ff2f8e49ca7e17ef9158d971ba0036793da32a5083c98625ea3c404.gz/SHA256E-s692942733--310f10e09ff2f8e49ca7e17ef9158d971ba0036793da32a5083c98625ea3c404.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G7/k9/SHA256E-s1305194245--417648d50af5b32577bc599179767d2e1ea2100fbddb028444015e448379d390.gz/SHA256E-s1305194245--417648d50af5b32577bc599179767d2e1ea2100fbddb028444015e448379d390.gz";
      r2 = "Zk/2w/SHA256E-s1327430357--4bef3af915db5ff53ad0fe489586eba088ef06418af2acc17efc5ac45c92ad9c.gz/SHA256E-s1327430357--4bef3af915db5ff53ad0fe489586eba088ef06418af2acc17efc5ac45c92ad9c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "w4/0X/SHA256E-s1285488122--ba564c3a337e503979397d3f60fa0401e1854773b8805015ff72935d36b9cac8.gz/SHA256E-s1285488122--ba564c3a337e503979397d3f60fa0401e1854773b8805015ff72935d36b9cac8.gz";
      r2 = "7v/kP/SHA256E-s1309738532--e4f6475ec184b6a256467a0afd728aea05c1a5837078348d088a0c3d71fe2056.gz/SHA256E-s1309738532--e4f6475ec184b6a256467a0afd728aea05c1a5837078348d088a0c3d71fe2056.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "12.06.2024 Samples Meeting:\nFFPE Block 1B: Proper 3 primary. Need histopath for cervix and breast. Can we get blocks from those? \n\nDo WES on this ovary. Still want the other cancers. ";
      d_case_summary = "56 yo female with multiple primary cancers, very elevated CA19.9 (>5000) and has not normalised post operatively, had a recent scan that showed a significantly inflamed lymph node which could be a possible site of metastasis although it has not yet reach 10mm in size. \n\nTAH with cervical cancer, unilateral mastectomy (L), BRCA negative   \n\n- Melanoma 16yrs\n- 2006 Breast Cancer 26yrs\n- Jun 2006 HG Cervix cancer 26yrs\n- 2022 Mucinous ovarian cancer (invasive) arising from borderline ovarian mucinous tumour at 56yrs. \n\n(daughter of 01640)";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Multiple Primary case  - Melanoma 16yrs  - 2006 Breast Cancer 26yrs  - Jun 2006 HG Cervix cancer 26yrs  - 2022 Mucinous ovarian cancer (invasive) arising from borderline ovarian mucinous tumour at 56yrs.";
      case_details = "57F\n\nMultiple Primary case \n\n?? -  Melanoma (at 16yrs)  \n\n? 2006 - Breast Cancer and HG Cervix cancer \n\n2022-01: Mucinous ovarian cancer (invasive) arising from borderline ovarian mucinous tumour.\nSurgery: BSO\nIHC positive: CK7, PAX8, CDX2 (focal)\nIHC negative: CK20\n\n2022-01: FFPE Block 1B\n\n2022-05: Blood B1 received.\n\n2024-05: Sections from FFPE Block 1B received.";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "24Apr2024 - 6Jan2022 sample tissue requested from Melbourne Pathology by Haris\n\n21May202 - 6Jan2022 sample tissue received from Melbourne Pathology by Haris";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    inherit samples;
    name = "SFRC01576";
    capture = TwistV2HR;
  }
