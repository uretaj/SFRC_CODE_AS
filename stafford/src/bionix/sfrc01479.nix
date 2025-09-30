with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2N";
      class = "tumours";
      pdx = false;
      r1 = "mZ/F5/SHA256E-s17518058230--5b8442eed6e63338b73f4193ef8ed56756f1cdbb6a8dd9ceb51e3607cb58e82a.gz/SHA256E-s17518058230--5b8442eed6e63338b73f4193ef8ed56756f1cdbb6a8dd9ceb51e3607cb58e82a.gz";
      r2 = "Pk/VX/SHA256E-s18534456863--8b7115597cd8f8bfea57f26b3fb9e585bdfee4f7ce5491f6b31f7d29e3ccbce8.gz/SHA256E-s18534456863--8b7115597cd8f8bfea57f26b3fb9e585bdfee4f7ce5491f6b31f7d29e3ccbce8.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4Q/vg/SHA256E-s7334569341--7387a2430dc9d49dde81d9da7f14abeafd7b3be663b2019200962b5ad09b7893.gz/SHA256E-s7334569341--7387a2430dc9d49dde81d9da7f14abeafd7b3be663b2019200962b5ad09b7893.gz";
      r2 = "6w/pG/SHA256E-s7847687634--c272f9bf31160718b605c79d7db0069257fa63eb1a54e5eb5ab43f97e34a9150.gz/SHA256E-s7847687634--c272f9bf31160718b605c79d7db0069257fa63eb1a54e5eb5ab43f97e34a9150.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Email from Mandy 21.04.2021\nPatient is progressing. Samples sent for WES, but no result yet. We are having issues with our pipeline. Try to mark this report as urgent.\n\nMeeting with Clare 20.12.2021\nBlock 2N: Organise BROCA and WES ";
      d_case_summary = "Stage IIIC clear cell adenocarcinoma of the ovary";
      date_consented = "2021-10-14";
      tumour_type = "Clear cell ovary";
      tumour_details = "clear cell adenocarcinoma of the ovary  Stage IIIC";
      case_details = "61yo woman, Stage IIIc Clear Cell Carcinoma of the Ovary\n\n2020-11: Diagnosis. TH/BSO with optimal debulking. Histology consistent with clear cell carcinoma of the right ovary with extensive omental infiltration. Tissue from sections of ovary and mass fixed and blocked (Block 2N)\nHistopath on collected tissue. \nIHC: p53 - wild type. MSH2, MSH6, MLH1, PMS2 - loss of nuclear staining is associated with high levels of microsatellite instability. Retained nuclear staining (normal pattern of staining) observed.\n\n2021-03: Completed 6x carboplatin and paclitaxel\n\n2021-04: Gene panel testing: \nBRCA1/2 test: no pathogenic variants detected\nNo mutation in: BRIP1, EPCAM, MLH1, MSH2, PMS2, RAD51C, RAD51C, TP53, PALB2.\nPALB2: Change detected, significance unknown.\n\n2021-07: Radiological recurrence of clear cell carcinoma of the ovary.\n\n2021-10: Treatment: carboplatin gemcibatine chemotherapy\n\n2021-12: FFPE sections from block 2N received.\n\n2022-03: Blood B1 received. DNA sent for WES\n";
      brca_report = "SFRC01479_BRCA_11May2021_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01479_ARCPortalReport_Oct2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2020 sample received by Warren 7/12/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01479";
  }
