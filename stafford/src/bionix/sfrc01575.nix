with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.9";
      class = "tumours";
      pdx = false;
      r1 = "1m/ZV/SHA256E-s13901708058--d3e0d69c5f09541b5a71c1aa805313a91be20da56fd512c14d03c79f3086d631.gz/SHA256E-s13901708058--d3e0d69c5f09541b5a71c1aa805313a91be20da56fd512c14d03c79f3086d631.gz";
      r2 = "20/8J/SHA256E-s13851096917--6b6b7fc6e9dae138b19db0706199028ae256afcfd0beb115f66d817378f5c98a.gz/SHA256E-s13851096917--6b6b7fc6e9dae138b19db0706199028ae256afcfd0beb115f66d817378f5c98a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "JX/XP/SHA256E-s5385522863--df0737326ec43e9b6eb9aa4b1f0764aa72e8e755fde30a0bc976de8d1a2e2987.gz/SHA256E-s5385522863--df0737326ec43e9b6eb9aa4b1f0764aa72e8e755fde30a0bc976de8d1a2e2987.gz";
      r2 = "16/65/SHA256E-s5552992466--e33ca600bcf4305f8998cfb15032013d514e6a8f3b8768103d874876e5e9bf30.gz/SHA256E-s5552992466--e33ca600bcf4305f8998cfb15032013d514e6a8f3b8768103d874876e5e9bf30.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "WES Meeting 20.10.2022/Clare, Ratana, Rachael, Mandy 21.10.2022\nLibrary highly fragmented contributing to lower coverage and impaired calling.\n\n!! Sample failure. CNV bad. Not a good quality sample. No report. \n\nPatient is deceased (09-2022). If was still alive, would send DNA for TSO500. Mandy to issue non-urgent report to Dr. \n**Send all adenosarcomas for URGENT TSO500.\n\nClare's meeting 30.06.2022\nSubmit FFPE block 1.9 for WES. Clinically urgent.";
      date_of_death = "09/2022";
      d_case_summary = "Metestatic SMARC-deficient uterine adenosarcoma, with sarcomatous overgrowth (NOS)\nneeds WES on FFPE";
      date_consented = "2022-05-03";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "uterine adenosarcoma, with sarcomatous overgrowth, SMARC deficient";
      case_details = "58yo woman\n\n2021-04: Diagnosed adenosarcoma of uterus\n\n2021-05: Hysteroscopy: specimen comprised of multiple polypoid fragments of abnormal endometrium\nIHC positive: \n-PR (patchy staining in epithelial component)\n-ER (strong staining in majority of epithelial component)\n-PAX8 (strong epithelial staining)\n\nIHC negative: \n-Cyclin D1 (stromal component)\n\n-Desmin: minimal patchy staining, negative in areas of sarcomatous growth\n\n\n2021-07: Surgery: TLH+BSO / (L) PSW peritonectomy / R/O (R) uterosacral ligament nodule. Stage IIB, complete resection. Tumour fixed and blocked (Block 1.9)\n\nHistopath: adenosarc w sarcomatous (NOS) overgrowth\n-PLD1 <1% in tumour and inflammatory cells,\n-normal MMR IHC,\n-p53: wild type,\n-VEGF: difficult to interpret,\n-Loss of staining within tumour cells for BRG1 (suggesting lesion is a SMARC deficient uterine sarcoma), present in cells considered to be inflammatory in nature,\n-IHC negative: ER, PR, SMA, Desmin, Melan A and Myogenin.\n\n2021-08 - 2021 - 10: Radiation\nWhole Pelvic RT - 50.4 Gy in 28 fractions\nPelvic Peritoneal Cavity - 46.48 Gy in 28 fractions\n\n2021-09: Peter Mac histopath review on right pelvic peritoneal biopsy from TAHBSO\n-IHC negative: AE1&3, EMA, CK7, PAX8, CYC D1, CD117, SMA, Desmin, ER, PR, Napsin A\n-Patchy p16 of varying intensity\n-p53 wild type\n\n2022-04: Gynae MDM (PMCC):\nuterine adenosarcoma / HG sarcome NOS overgrowth\nSMARC deficient\nPET: Retroperitoneal LN mass / peritoneal / lung met's\nLung lesions too small for Bx / RPLN mass close to major vsls\nRec:\nMolec sequencing on archival tissue (Stafford Fox)\nExplore systemic Rx options\nRT to RPLN mass if symptomatic\n\n2022-05: pMMR / PD-L1 IHC <1% (Austin)\n(no current indication for immunoRx)\nReferred to Stafford Fox for WES (will take months)\nReferred to EDD for TSO500 / consideration for trials\n\nFFPE sections from Block 1.9 (TAHBSO 07-2021) received\n\n2022-06: Blood B1 received\n\n2022-08: 1.9 and B1 DNA sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "16/05/2022: July 2021 sample requested from Austin pathology by Devindee. \n31/05/2022: July 2021 sample slides received from Austin pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01575";
  }
