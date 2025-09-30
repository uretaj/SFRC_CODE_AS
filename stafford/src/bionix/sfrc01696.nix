with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1I";
      class = "tumours";
      pdx = false;
      r1 = "3j/g3/SHA256E-s2980982830--f977922f79cfc916bc94ad0f42caa5175f72f4bd5eebb0eeb80e94c8f724d647.gz/SHA256E-s2980982830--f977922f79cfc916bc94ad0f42caa5175f72f4bd5eebb0eeb80e94c8f724d647.gz";
      r2 = "gQ/kW/SHA256E-s2936935088--ed05c7449faf46631dba963f3a1c70d4344d8cd5fbc30cb1a5c58cb9f9e3240b.gz/SHA256E-s2936935088--ed05c7449faf46631dba963f3a1c70d4344d8cd5fbc30cb1a5c58cb9f9e3240b.gz";
    }
    {
      site = "1I";
      class = "tumours";
      pdx = false;
      r1 = "3z/VJ/SHA256E-s3041785280--fd048892745ecbf82fdf0a0c1321613a1642e310cb0d404595529307616b32a3.gz/SHA256E-s3041785280--fd048892745ecbf82fdf0a0c1321613a1642e310cb0d404595529307616b32a3.gz";
      r2 = "0G/Kg/SHA256E-s2999401657--4673406e313153247651eaa6d397b409bcd6a88967628af1ed96390970e8a093.gz/SHA256E-s2999401657--4673406e313153247651eaa6d397b409bcd6a88967628af1ed96390970e8a093.gz";
    }
    {
      site = "1I";
      class = "tumours";
      pdx = false;
      r1 = "xW/G7/SHA256E-s2754301158--d85437defdc42dfda48ce42054d48a0cbbe28a3534a9ffc6b0bcea635fe0c081.gz/SHA256E-s2754301158--d85437defdc42dfda48ce42054d48a0cbbe28a3534a9ffc6b0bcea635fe0c081.gz";
      r2 = "8x/G6/SHA256E-s2686173144--0de56054b3ab1879ed8365682fdb1daf7d8312fb58d5fc4f9f4beb28bb98a4e8.gz/SHA256E-s2686173144--0de56054b3ab1879ed8365682fdb1daf7d8312fb58d5fc4f9f4beb28bb98a4e8.gz";
    }
    {
      site = "1I";
      class = "tumours";
      pdx = false;
      r1 = "Zk/z6/SHA256E-s2836074063--acdd82e5d36df704aa1489676ba205e9430fb7818327a99384f54e825cebee7a.gz/SHA256E-s2836074063--acdd82e5d36df704aa1489676ba205e9430fb7818327a99384f54e825cebee7a.gz";
      r2 = "W7/V2/SHA256E-s2771135361--c1b181d313013b2c8485c9a758f500891bba754e44bdd4ea5d844e1c080aba34.gz/SHA256E-s2771135361--c1b181d313013b2c8485c9a758f500891bba754e44bdd4ea5d844e1c080aba34.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "83/XP/SHA256E-s1477474502--68bdf5eb4c8958559427b9c2da21cecda141adda7a527ecc096bdb1315ff46df.gz/SHA256E-s1477474502--68bdf5eb4c8958559427b9c2da21cecda141adda7a527ecc096bdb1315ff46df.gz";
      r2 = "XZ/9F/SHA256E-s1520400552--4707132aa0f1cbd14bcff63f241c12516a71d05e8a86da579a4983b7bf57684c.gz/SHA256E-s1520400552--4707132aa0f1cbd14bcff63f241c12516a71d05e8a86da579a4983b7bf57684c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "86/kX/SHA256E-s1542386627--b5f99c54f1ad3a4dfc306791b98105af94255239f34a7298c7f62ed4989d830d.gz/SHA256E-s1542386627--b5f99c54f1ad3a4dfc306791b98105af94255239f34a7298c7f62ed4989d830d.gz";
      r2 = "PP/gX/SHA256E-s1590225260--a217fbf411e1a0492c9d2fe7279d401eb997e5919e865245a6487fa1d959ef6f.gz/SHA256E-s1590225260--a217fbf411e1a0492c9d2fe7279d401eb997e5919e865245a6487fa1d959ef6f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Samples Meeting 29.04.2024\nClare mentioned this patient has a new melanoma (now double primary). Will follow up case with Adriana.\n\nRC Meeting 2023.10.19\nTWIST WES on FFPE Block 1l\nDiscussion Comments: PARPi due to ATM variant and high HD score. Genomic features consistent with HRD. \n\nClare's Meeting 23.03.2023\nWanted to do WGS on fresh S1, but only 75ng DNA total. \nWill do WES on FFPE Block 1I (for HGSEC project).\n\nClare/Ratana/Rae meeting 16.03.2023\nHad reviewed S1 tissue in January, was to be submitted for WGS. Waited for bloods for 3 months. DNA extraction only got 75ng DNA total.\nHave block 1I in the lab that is to be reviewed by Gayanie next week. Will do WES (project related) on that, nothing more on S1 DNA.";
      blood_recall_history = "Were not able to get bloods at biopsy\n\n24Jan23 - Waiting for confirmation of when the patient is next in Parkville, will find out at doctors review 13Feb23\n15Feb23 - Call to patient re bloods still does not know when they will be able to take them, waiting on oncologist opinion\n17Feb - Text to patient to follow up blood collection\n21Feb23 - Still waiting on oncologist opinion for bloods test, invited to have bloods collected seperate from clinical bloods (text)";
      d_case_summary = "FIGO Stage 1B endometrial serous carcinoma, grade 3, LVSI positive";
      date_consented = "2023-01-16";
      tumour_type = "HGSEC";
      tumour_details = "High grade serous endometrial cancer, FIGO Stage 1B, pMMR";
      sfrcp_her2_report = "SFRC01696_Histology_HER2DISH_09Feb2023_Redacted.pdf";
      case_details = "75F\n\n2020-05: Dx HGSEC, Stage IB, Grade 3\nSurgery: TLH/BSO (FFPE Block 1I - anterior endo-myometrium)\np53: Mutation type overexpression\n\n2020-06 - 2020-07: Radiation with concurrent cisplatin\n\n2020-06 - 2020-11: Chemotherapy: carboplatin/paclitaxel\n\n2020-08: TSO500\nTier IIC: PIK3CA\nTier IID: TP53\n\n2022-07: Recurrence, L para-aortic LN\n\n2022-12: Recurrence SCF LN \n\n2023-01: Surgery: R supravascular LN biopsy. Fresh tissue S1 received.\nIHC positiveL CK7, PAX8, p53, ER and PR (moderate, >90%), HER2 (3+, DISH pending)\nIHC negative: CK20, WT1\n\n2022-02: Sections from FFPE Block 1I received.\n\n2023-03: Blood B1 received.";
      pre_analysis_mutations = "TruSight Oncology \n8/12/2020\nactivating PIK3CA mutation VAF 14%\ninactivating p53 mutation VAF 24%";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "PIK3CA, TP53 (TSO500 Dec2020)";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "12-Feb-2023: May2020 TAHBSO sample requested from Melbourne pathology by Monica \n19-Feb-2023: May2020 TAHBSO sample received from Melbourne pathology by Monica ";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01696";
  }
