with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "XP/pv/SHA256E-s40458263829--3e4ac8edea0f7a83121b4761e51d0875b266efa4e6534553d9180de8e99497ce.gz/SHA256E-s40458263829--3e4ac8edea0f7a83121b4761e51d0875b266efa4e6534553d9180de8e99497ce.gz";
      r2 = "fM/qf/SHA256E-s41505123357--e6802eeada66e5370c472ac82052973f17916ca9a0def2fd0265b28746316705.gz/SHA256E-s41505123357--e6802eeada66e5370c472ac82052973f17916ca9a0def2fd0265b28746316705.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "V5/k0/SHA256E-s90697301678--9740e7dcff5f07e95e57c017f4d201a6774cc23fabdd2ddbef2c70e213fb5a54.gz/SHA256E-s90697301678--9740e7dcff5f07e95e57c017f4d201a6774cc23fabdd2ddbef2c70e213fb5a54.gz";
      r2 = "vJ/V7/SHA256E-s92721784763--95812cb2cc9244906e92e41aaee410e0172fbf80b41dec09abe939b47160b40c.gz/SHA256E-s92721784763--95812cb2cc9244906e92e41aaee410e0172fbf80b41dec09abe939b47160b40c.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "qv/W9/SHA256E-s5380319544--da1686b8b9a67c8494006f747d7e7d3bca9851e19ed19af6cb880a08c0a8e80e.gz/SHA256E-s5380319544--da1686b8b9a67c8494006f747d7e7d3bca9851e19ed19af6cb880a08c0a8e80e.gz";
      r2 = "3q/03/SHA256E-s5320910056--507fe935e9d92bc7edddaa550bcac73a569d81f12e4a960c858564c08785b726.gz/SHA256E-s5320910056--507fe935e9d92bc7edddaa550bcac73a569d81f12e4a960c858564c08785b726.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "RC Meeting 26.05.2022\nDiscussed WGS report (Grimmond).\nConsistent with tumour type (diagnostic fusion gene), but no actionable targets.\n\nRare cancer meeting 21/04/22\nWGS on OCT S2 samples\n\nBriony's email 24.02.2022\nHold off on WES for now, patient is scheduled for another biopsy. If tumour % is good we will go ahead with WGS, if not then WES on Block.\n\nClare's meeting 24.02.2022\nFFPE block 3D: Go ahead with WES? Extract both DNA and RNA and do WES and the fusion panel - need to check with Holly/Matt about the EHE panel? \nFusions for Matt to review if in fusion panel: EHE = WWRT1-CAMTA1, FLC = DNAJB1-PRKACA \n\nClare's meeting 02.12.2021\nThis case should have an other biopsy soon, Briony and Damien are organising it. Priority will be WGS. \nWarren to recall block from original resection and then do WES\n\n\nMeeting with Clare 18.11.2021\nFresh tissue S1:\nShould we recall a block from previous biopsy? Yes, Damien and Clare to check/organise ";
      d_case_summary = "Fibrolamellar HCC- Recurrent, unresectable involving retroperitoneal and mediastinal nodes";
      date_consented = "2021-10-07";
      tumour_type = "FLC (Fibrolamellar hepatocellular carcinoma)";
      tumour_details = "Fibrolamellar hepatocellular carcinoma";
      case_details = "Patient clinical history \n\n24 years old Male. \n\n2018-11:\tInitial resection \n\nIHC positive:CK7, HepParl, CD68 \n\n2020-12:\t(12/2021 on portal letter, I believe it is a mistake). Biopsy confirms FLC relapse. Nodal recurrence involving the right paraesophageal, aortocaval, gastrohepatic, paraaortic, and mesenteric nodes. \n\n2021-02:\tlymph node biopsy, metastatic hepatocellular carcinoma \n\n2021-10: \tBiopsy for SFRC \n\n2022-04:        core biopsy abdominal lesion received, tissue S2";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01468_ARCPortal_Case_Report__FLC,_systemic_Rx_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2018 block received by Devindee 22/12/2021. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01468";
  }
