with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "MP/Zp/SHA256E-s17517708904--03dca88770b3904252da5a1090a4b48e5f7e73a4bd51c2325906829964c384d4.gz/SHA256E-s17517708904--03dca88770b3904252da5a1090a4b48e5f7e73a4bd51c2325906829964c384d4.gz";
      r2 = "M8/Qm/SHA256E-s17821922791--214516dd88fc8a753cca161b06219a929b147251406a687a1819a65389db81f5.gz/SHA256E-s17821922791--214516dd88fc8a753cca161b06219a929b147251406a687a1819a65389db81f5.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M4/VP/SHA256E-s6431643204--f36a881d4e3792cb7a9a91034917eae16f02cf29164e820ef169fae3cb1f0dc4.gz/SHA256E-s6431643204--f36a881d4e3792cb7a9a91034917eae16f02cf29164e820ef169fae3cb1f0dc4.gz";
      r2 = "vP/PV/SHA256E-s6899061799--402dfe1b23d0dcb58c91d7c3b02918270e8d67ccb94411d3b6efc3864dd9f9d5.gz/SHA256E-s6899061799--402dfe1b23d0dcb58c91d7c3b02918270e8d67ccb94411d3b6efc3864dd9f9d5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 18.05.2023\nDiscussed WES report (FFPE Block 1F)\n-Potential triploid tumour. \n-Reduced functionality defects. Causal event possibly due to environmental stress.  \n-RAD51D - no LOH - complementary event in a gene we cannot see/aren't aware of.\n-Genomic features consistent with HRD - Matt.  \n-Clare will follow up RAD51D with VIP team \n-Add to Matt & Kas Complex HRD cases. \n-Add HR status in RedCap (dropdown menu - incoming for SOL2)\n\nClare's Meeting 23.02.2023\nSend Block 1F for WES (urgent, is clear cell) \nAsk Matt and Kas to check the RAD51D VUS ";
      d_case_summary = "Ovarian clear cell - RAD51D VUS (Paul James - \"?Suspicious variant. Would be worthwhile enrolling in VIP who might do somatic testing and other testing to help clarify.\")";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell carcinoma of the ovary";
      case_details = "2019-03: Dx Stage II Clear Cell carcinoma of the ovary. \nSurgery: Debulking. FFPE Block 1F\nAdjuvant chemotherapy: Carboplatin and Paclitaxel.\nIHC positive: CK7, Napsin A\nIHC negative: p53, WT1, ER, OCT4\n\n2022-03: PET scan: 2 external iliac nodes and\nsome nodules deep to the right abdominal wall.\nSurgery: excision of nodal tumours.\n\n2022-06: Completed chemoradiation.\n\n2022-10: FCC Panel: RAD51D VUS\n\n2022-11: Blood B1 received\n\n2023-02: Sections from FFPE Block 1F (2019 debulk) received.\n\n2023-03: FFPE Block 1F DNA sent for WES";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01676_FCPanel_09Aug2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "02/01/2023: March 2019 sample requested from Melbourne Pathology by Devindee.\n05/05/2023: March 2019 sample received by Monica.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01676";
  }
