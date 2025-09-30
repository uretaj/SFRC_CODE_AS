with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.22";
      class = "tumours";
      pdx = false;
      r1 = "3k/Pk/SHA256E-s31737409586--118378533db3cd0e4c59db5673d64b71475e04145c094e2b36c3d5bda2e1b8af.gz/SHA256E-s31737409586--118378533db3cd0e4c59db5673d64b71475e04145c094e2b36c3d5bda2e1b8af.gz";
      r2 = "xK/Qq/SHA256E-s34118196257--c7157ea5fdaf670e1e23ba1cff29f9d5857b4a12d7235c9b1681942aa132e8ca.gz/SHA256E-s34118196257--c7157ea5fdaf670e1e23ba1cff29f9d5857b4a12d7235c9b1681942aa132e8ca.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6G/zz/SHA256E-s4967794976--9159f06e0a6149cc408b1104748f21f8fe281a4b50c8e469e8497de0f1d798ea.gz/SHA256E-s4967794976--9159f06e0a6149cc408b1104748f21f8fe281a4b50c8e469e8497de0f1d798ea.gz";
      r2 = "Zz/28/SHA256E-s5300582301--14e9b2b6ce632a6bfea53b03914d66a5a7ba5bddd636eebc5ef7d2ddd7ebbe87.gz/SHA256E-s5300582301--14e9b2b6ce632a6bfea53b03914d66a5a7ba5bddd636eebc5ef7d2ddd7ebbe87.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2023.05.18\ndiscussed c-myc in house IHC \nPlan: looks like the staining did not work, liaise with histology to get it redone for free.  \nRae to Email Ellen images with Gayanie's comments and have staining redone with another positive control. Email Gwo, Matt, Holly about appropriate positive control for c-MYC. \n\nRC Meerting 02.03.2023\nDiscussed WES report (FFPE Block 1.22):\n-Low TMB, LOH 45%\nGermline ATM - refer to FCC\n-Somatic RHO\n-Amplification of HMGA2 and MDM2, CN 12 \n-PARPi + immunotherapy trial? \n-MDM2 amplification (instead of TP53 mutation) \n-MYC IHC on Block 1.22 (c-MYC and MYCN)\n\nClare's Meeting 30.11.2022\nUrgent WES on Block 1.22";
      blood_recall_history = "Bloods received 11Oct2022";
      d_case_summary = "bile duct carcinoma dx 2022. Patient known to Mandy.";
      date_consented = "2022-09-21";
      tumour_type = "Other rare";
      tumour_details = "perihilar cholangiocarcinoma";
      case_details = "38M\n\n2022-07: Dx T3/N1 cholangiocarcinoma\nSurgery: resection (FFPE Block 1.22)\n-pMMR\n\n2022-10: Adjuvant chemotherapy: Capecitabine\nBlood B1 received\n\n2022-11: Sections from FFPE Block 1.22 (2022-07 resection) received\n\n2022-12: B1 and Block 1.22 DNA sent for WES:\n-Low TMB, LOH 45%\nGermline ATM - refer to FCC\n-Somatic RHO\n-Amplification of HMGA2 and MDM2, CN 12\n\n2023-04: Block 1.22 submitted for c-MYC IHC. tumour is entirely negative. Even in the positive control only a small amount of positivity is seen in the squamous epithelium. Need to find a better +control also.\n\n2023-11: Block 1.22 submitted for c-MYC IHC (new antibody): this tumour is negative.";
      patient_information_complete = "Incomplete";
      other_tumour_type = "perihilar cholangiocarcinoma";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "17/10/2022: July 2022 sample requested from Austin Pathology by Devindee.\n08/11/2022: July 122 slides received. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01657";
    capture = CREv2;
  }
