with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3D";
      class = "tumours";
      pdx = false;
      r1 = "G4/M6/SHA256E-s19805538067--df60a4ff20ff4c7b8308aec0ce646398e3cfdd8dacf12ea19b48b036483c85df.gz/SHA256E-s19805538067--df60a4ff20ff4c7b8308aec0ce646398e3cfdd8dacf12ea19b48b036483c85df.gz";
      r2 = "p5/ZM/SHA256E-s20244470194--cea495ada407066b372fa1f412b944f572511b62d226cb16e73fe795292a9fd7.gz/SHA256E-s20244470194--cea495ada407066b372fa1f412b944f572511b62d226cb16e73fe795292a9fd7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ww/qf/SHA256E-s5373867147--f4444dc985632b877c1eeee9ab10f2f5f256c9ae8be3773c8d227f944a69b4bd.gz/SHA256E-s5373867147--f4444dc985632b877c1eeee9ab10f2f5f256c9ae8be3773c8d227f944a69b4bd.gz";
      r2 = "1J/J1/SHA256E-s5475059740--843118325e7410f6b270028a03ac031902fc0437ccaa3ab83ceec3c0f0f03249.gz/SHA256E-s5475059740--843118325e7410f6b270028a03ac031902fc0437ccaa3ab83ceec3c0f0f03249.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 10.03.2022\nBlock 3D: organise WES and fusion panel. \n\nRC meeting 16.12.2021\nFresh sample S1: Not going ahead with RNA extraction, will be difficult to do on OCT as the region is small.\nThis will not affect the patient clinical follow up \n\nSample meeting catch up 06.12.2021\ncan try to extract DNA only, it is going to be difficult to get a good amount, very small area of tumour and will have to deplete the block \nWant TruSight Fusion panel, plus WES would be ideal. \nAsk Damien/Holly if RNA only is ok for fusion panel. \nMight not need DNA? ";
      d_case_summary = "Fibrolamellar hepatoma to lung (M1)";
      date_consented = "2021-11-11";
      tumour_type = "FLC (Fibrolamellar hepatocellular carcinoma)";
      tumour_details = "Fibrolamellar hepatoma to lung";
      case_details = "30yo male\n\n2021-10:\tInitial diagnosis. Biopsy liver. Metastatic fibrolamellar hepatoma. FDG PET: primary lesion, and diffuse lymphadenopathy, along with 5 lung lesions\n\n2021-11:\tBiopsy for SFRC (S1, 25% in circled area, very small, <5% entire sample, not enough for WGS). Tissue from right hepatectomy fixed and blocked (Block 3D)\nFresh tissue S1 from hepatectomy received in lab and processed. \nBlood B1 received\nHistopath on right hepatectomy:\nIHC positive: CK7 (diffuse, 2+ or 3+), CD68 (diffuse, varable intensity, paranuclear dot and granular cytoplasmic), CK 8/18, hepPAR-1, CEA polyclonal (canalicular pattern)\nIHC negative: AFP, Glypican 3, SMA, HMB-45\n\n2022-02: Block 3D recalled  ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01483_ARCPortal_26Nov2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "08/02/2022:  Nov 2021 tissue sample requested from DHM Pathology by Devindee. \n17/02/2022: Nov 2021 sample block received by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01483";
  }
