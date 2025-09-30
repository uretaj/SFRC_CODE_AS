with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "X0/1Z/SHA256E-s16464810909--fd1e639f5fb8c94648224d74ab38f65d55dca11cea5849847cdde3bd6378f343.gz/SHA256E-s16464810909--fd1e639f5fb8c94648224d74ab38f65d55dca11cea5849847cdde3bd6378f343.gz";
      r2 = "Kg/0Z/SHA256E-s16275221089--e6aec8a163710fad169459c128aa828628fa8b0bb3bd94f0b4fa6f117cfbff96.gz/SHA256E-s16275221089--e6aec8a163710fad169459c128aa828628fa8b0bb3bd94f0b4fa6f117cfbff96.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J7/9Q/SHA256E-s4424570580--b7b2f7de6006b5dda0c8c5a1f2391ee41f8cc52c15bd552773e72986f6c54df4.gz/SHA256E-s4424570580--b7b2f7de6006b5dda0c8c5a1f2391ee41f8cc52c15bd552773e72986f6c54df4.gz";
      r2 = "Wk/kp/SHA256E-s4456876331--6af3d8624b0dce0546e1b20a264d6f050ba69be1bf8e985acccae7e55e25c523.gz/SHA256E-s4456876331--6af3d8624b0dce0546e1b20a264d6f050ba69be1bf8e985acccae7e55e25c523.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 23.02.2023\nDiscussion: \n-CN plots look like HRD? High LOH but no signature 3, and no HR gene mutations.  Suspected HRD, unknown cause by copy number.  \n-Check for BRCA1/RAD51C methylation\n-SPEN on one of Matt's lists of interest. HRD-adjacent.\n\nClare's meeting 05.05.2022\nWES and BROCA (send for WES when B1 received)";
      blood_recall_history = "08Sep22 - Blood Booked for 15Sep22 ";
      d_case_summary = "Jul 2019: liver biopsy high-grade serous papillary adenocarcinoma, neoadjuvant chemotherapy with\ncarboplatin and paclitaxel.\n? Oct 2019: TAH/BSO, bilateral salpingo-oophorectomy followed by resection of the liver and\nsubdiaphragmatic peritoneal deposits.\n? Apr 2019: Further chemotherapy completed\n? Jun 2021: Peritoneal nodules and subhepatic pleural nodules. PET CT, moderate activity in the capsular\nsurface of the right lobe of the liver adjacent as well as moderate activity in the left axillary and\nsupraclavicular node. Node biopsy- negative for malignancy.\n? Jul 2021: Surgery for resection of hepatic nodule. Histology- mixed serous and carcinosarcoma.\n? Jul 2021: Carboplatin and paclitaxel.\n? Nov 2021: Referred to ARC Portal for molecular sequencing (tissue available from ANATA Pathology\ngroup).\nFeb 2022 - Parp Inhibitor (200mg Niraparib) - had to stop for a little bit due to side effects";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS fallopian tube cancer";
      case_details = "2019-07: liver biopsy high-grade serous papillary adenocarcinoma, neoadjuvant chemotherapy with carboplatin and paclitaxel.\n\n2019-10: TAH/BSO, bilateral salpingo-oophorectomy followed by resection of the liver and\nsubdiaphragmatic peritoneal deposits.\nIHC positive: AE1/AE3, WT1, P16,  ER (2+, ~75%), p53 overexpression. \nLeft fallopian tissue fixed and blocked (block 1J)\n\n2019-04: Further chemotherapy completed\n\n2021-06: Peritoneal nodules and subhepatic pleural nodules. PET CT, moderate activity in the capsular\nsurface of the right lobe of the liver adjacent as well as moderate activity in the left axillary and\nsupraclavicular node. Node biopsy- negative for malignancy.\n\n2021-07: Surgery for resection of hepatic nodule. Histology- mixed serous and carcinosarcoma. Carboplatin and paclitaxel commenced.\n\n2022-03: Block 1J received";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01525_ARCPortal_05May2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "11/03/2022: Oct 2019 tissue sample requested from Melbourne Pathology by Devindee. \n18/03/2022: Oct 2019 sample slides received from Melbourne Pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01525";
    capture = CREv2;
  }
