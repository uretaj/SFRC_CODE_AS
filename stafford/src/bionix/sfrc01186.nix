with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3k/p0/SHA256E-s53130355409--8255ddb1c8649b618432ca1fdb5ec23e05b2193d190966bf14183cfa7d53cbb0.gz/SHA256E-s53130355409--8255ddb1c8649b618432ca1fdb5ec23e05b2193d190966bf14183cfa7d53cbb0.gz";
      r2 = "QZ/x8/SHA256E-s55604776235--637f0b0058c241604b7848f52c5be5c6032f381542596c80711db932b0ee10e3.gz/SHA256E-s55604776235--637f0b0058c241604b7848f52c5be5c6032f381542596c80711db932b0ee10e3.gz";
    }
    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "0G/Vq/SHA256E-s83485839101--1066a549828e2e1ce521984de219789b571a7afd012f3d439e50df356003d3b9.gz/SHA256E-s83485839101--1066a549828e2e1ce521984de219789b571a7afd012f3d439e50df356003d3b9.gz";
      r2 = "Fx/92/SHA256E-s87297880198--e305c69999c9e128e4686b4478cd23574e222bb02b65dcd4d54f7d1b6bfc8045.gz/SHA256E-s87297880198--e305c69999c9e128e4686b4478cd23574e222bb02b65dcd4d54f7d1b6bfc8045.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "WGS/WES Meeting 18.08.2022\nCase is actionable via trials.\nSubmit DNA for methylation analysis.\n\nClare and Ratana meeting 13.07.2022\nS3 sample has 40% tumour purity. Do DNA and RNA from OCT, submit for urgent WGTS.\n\nEmail from Holly 09.07.2022\nOncologist has said that patient has progressed and requested urgent WGS so patient can access treatments. To be discussed with Clare on 13.07.2022.\n\nMeeting notes 22.08.2019\nNo tumour in both tissue, nothing to do for the moment.";
      d_case_summary = "Metastatic triple negative breast cancer.";
      date_consented = "2019-06-05";
      tumour_type = "Breast cancer";
      tumour_details = "Breast TNBC";
      case_details = "Patient has progressed and case is now urgent please.\n-----------------------------------------------------------------------\n46yo woman\n\n2018-12: Diagnosed triple negative right breast cancer.\n-Histopath on biopsy (pre-NACT): \n -IHC positive: CK5/6 (focal staining, suggestive of \n  basal phenotype tumour)\n -IHC negative: ER/PR/HER2 (confirmed triple \n  negative). Ck14, p63, androgen \n  receptor\n-Also underwent sentinel lymph node biopsy and \n showed metastatic involvement\n-FCC test: ATM (c.7271T>G only), BRCA1, BRCA2, \n PALB2, TP53: No mutations detected.\n-Commencement of NACT: dose-dense AC, 4 cycles \n followed by weekly paclitaxel.\n\n2019-07: Miller-Payne grade 4 response (final pathology grade 2, T2pN0, triple negative breast cancer).\n-Dr reported excellent clinical response to NACT.\n-Histopath on R) breast wide local excision *post* \n NACT\n  -IHC negative: ER, PR, HER2. \n  -Ki67: <5%\n-Fresh tissue from R) breast received and processed in lab (Tissues S1 and S2). No tumour present.\n\n2021-04: Continuing treatment of Capecitabine. Patient is reported to be well, no recurrence of disease.\n\n2022-05: No signs of disease relapse. \n\n2022-06: Fresh tissue from right infraclavicular biopsy received and processed (Tissue S3).\n-Histopath on core biopsy:\n  -IHC positive: e-cadherin: positive in tumour cells, \n   confirming metastatic carcinoma of no special \n   type, consistent with metastatic disease. \n  -IHC negative: ER, PR, HER2\n  -Ki67: 40%\n\n2022-07: Blood B1 received. \n**Patient has progressed**\n\nKas Nesic: Homozygous BRCA1 methylation in S3 sample";
      brca_report = "SFRC01186_BRCAPanel_20Dec2018_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01186";
  }
