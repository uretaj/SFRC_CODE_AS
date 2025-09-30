with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "wg/88/SHA256E-s4245303329--4f045b5b5b582b407d9c79da07d7baf5c77f7d66f9896e1412621052d82352b1.gz/SHA256E-s4245303329--4f045b5b5b582b407d9c79da07d7baf5c77f7d66f9896e1412621052d82352b1.gz";
      r2 = "K1/0W/SHA256E-s4229826356--0334c20087d9e8aac97edf82843a4796a84f3d188afa1ec9f37908c77e2f6841.gz/SHA256E-s4229826356--0334c20087d9e8aac97edf82843a4796a84f3d188afa1ec9f37908c77e2f6841.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "48/KJ/SHA256E-s4227716572--3c91d8377ddc60ed5f35fec007d41036c0c2a3f48bad44d31ecb8c87c46284f0.gz/SHA256E-s4227716572--3c91d8377ddc60ed5f35fec007d41036c0c2a3f48bad44d31ecb8c87c46284f0.gz";
      r2 = "8f/8G/SHA256E-s4236059763--0745e7efad7dbd26a39e8dd6b22752d097a6badb04ba05c695fd04e266d963a4.gz/SHA256E-s4236059763--0745e7efad7dbd26a39e8dd6b22752d097a6badb04ba05c695fd04e266d963a4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2v/KW/SHA256E-s2910955496--f81fcd1b299b2d6b47e31fa8b1b4f52a4136873250d25a3701723458bf1b9889.gz/SHA256E-s2910955496--f81fcd1b299b2d6b47e31fa8b1b4f52a4136873250d25a3701723458bf1b9889.gz";
      r2 = "wk/zw/SHA256E-s2936527840--fbcbcc3207920ce0fe2e091e9a0449b5f4bcd57447292d51741fcf79fc12d80f.gz/SHA256E-s2936527840--fbcbcc3207920ce0fe2e091e9a0449b5f4bcd57447292d51741fcf79fc12d80f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VP/Q9/SHA256E-s3041759946--670c806c4d70ad2ef65a56d611d718163567fd49dd53ab9f0be4736e44d60064.gz/SHA256E-s3041759946--670c806c4d70ad2ef65a56d611d718163567fd49dd53ab9f0be4736e44d60064.gz";
      r2 = "Km/8X/SHA256E-s3090849856--828f19a207cfcad5d2d9e8dca5f6ac2f4f264dfe3b535b1bbcfe5b633612a5c8.gz/SHA256E-s3090849856--828f19a207cfcad5d2d9e8dca5f6ac2f4f264dfe3b535b1bbcfe5b633612a5c8.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "j9/Zz/SHA256E-s7764973761--52b5d3c90bbf8af8e7ee9de9718227ae76cd2259a3992912c214fd815904197f.gz/SHA256E-s7764973761--52b5d3c90bbf8af8e7ee9de9718227ae76cd2259a3992912c214fd815904197f.gz";
      r2 = "Pf/qK/SHA256E-s7800131674--fb1ffd20e4eff26509ef32b7b11a4501e0e029d40396485f6581afe9bc23beb0.gz/SHA256E-s7800131674--fb1ffd20e4eff26509ef32b7b11a4501e0e029d40396485f6581afe9bc23beb0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3w/mf/SHA256E-s2717884834--1dfef4bdcc4aec69581d41f882fdc80e44610019045198890e4c01ccb8ce17e4.gz/SHA256E-s2717884834--1dfef4bdcc4aec69581d41f882fdc80e44610019045198890e4c01ccb8ce17e4.gz";
      r2 = "12/M4/SHA256E-s2766402934--106211a005fed241063b574c0ee3e3e17b28dfa35b1a143958dd61e646e90d94.gz/SHA256E-s2766402934--106211a005fed241063b574c0ee3e3e17b28dfa35b1a143958dd61e646e90d94.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.2.2024:\nERBB2 (HER2) amplified in sample (x 41copies). However, targeting HER2 in MOC has not shown to be useful yet. \n\nClare's meeting 2023.05.18\nPlan for FFPE block 1D: Send for WES? Yes  ";
      d_case_summary = "36 year old female diagnosed with Stage IC mucinous ovarian cancer. Incidental L ovarian cyst in pregnancy (EDD 02/06/23), now confirmed to be mucinous ovarian cancer. 25/11/22 MRI (RWH report): Solitary, 7cm multiloculated cystic mass arising from the left ovary with solid nodular areas exhibiting diffusion restriction. Appearances are most in keeping with borderline or low grade malignant neoplasm. No evidence of metastatic nodal or peritoneal disease.";
      date_consented = "2023-01-03";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Stage IC mucinous ovarian cancer";
      case_details = "36 year old female \n\n2022-10\tIncidental L ovarian cyst in pregnancy \n\n2022-12\tLeft LSO + washings + omental biopsy (FFPE block 1D received) \nDiagnosis figo stage IC \nIHC Positive CK7 (diffuse), CK20.CDX2/PAX8 (focal);  \nIHC negative WT1/ER/PR  \nNo loss of MMR proteins \nCytology for washing: inconclusive  \n\n2023-02: Blood B1 received  ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "15Mar23: Dec2022 sample requested from RCH by Monica\n15Apr23:  Dec2022 sample received from RCH by Monica";
    };
    inherit samples;
    name = "SFRC01710";
    capture = TwistV2HR;
  }
