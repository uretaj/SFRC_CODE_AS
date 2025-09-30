with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "18/xq/SHA256E-s6036720319--1bd11735ef3cc254f03564fec1d0896fa06b7c7c5f70c54e75a6f6da3108a462.gz/SHA256E-s6036720319--1bd11735ef3cc254f03564fec1d0896fa06b7c7c5f70c54e75a6f6da3108a462.gz";
      r2 = "9m/Gp/SHA256E-s6148483836--04814babd27b5ea4fa629d8e9790f3d87e19024fdf4f42f7f1629f506420024b.gz/SHA256E-s6148483836--04814babd27b5ea4fa629d8e9790f3d87e19024fdf4f42f7f1629f506420024b.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "vp/0v/SHA256E-s39746976706--c8e0939d9974fd1559755e1eaaec599085d9e3c3fcb199cdd00c985a89fb1c42.gz/SHA256E-s39746976706--c8e0939d9974fd1559755e1eaaec599085d9e3c3fcb199cdd00c985a89fb1c42.gz";
      r2 = "V0/43/SHA256E-s42223081458--883739504811c492f222aeaf71c560c5b063bf2dca7aadb14100827e804325c2.gz/SHA256E-s42223081458--883739504811c492f222aeaf71c560c5b063bf2dca7aadb14100827e804325c2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 07.09.2023\nDiscussed WES Report for OCT block S1:\n*Report the germline CHEK2 to FCC \n*CHEK2 CN neutral (CNN) LOH (4 copies) and BRCA1 CNN LOH (2 copies) \n**Could it be BRCA1 methylation? Send sample \n*Sig3 highest signature.  \n*Issue report. (IMPARP-HRD trial) \n*CN profile consistent with HRD \n\nClare's meeting 2023.05.18 \nPlan for OCT S1: Developed pleural effusion at end of therapy, no TP53 mutation detected so far. This sample is low purity, would not like to submit for WGS. Submit this for WES. \nCould be considered for liquid TSO?\n\nClare's Meeting 20.04.2023\nReviewed FFPE Block 1.2 and Fresh Tissue S1\nFFPE Block: No tumour. \nS1 OCT: Make DNA. Will revisit this case in ~4 weeks. Waiting on MoST. To let Clare know how much DNA for what sequencing.\n***URGENT CASE***";
      blood_recall_history = "Blood to be collected 01 May from Patient's house\n\nPatient did not receive pack, pack re sent\n\n 09May23 - text to see if pack recieved ";
      urgency_details = "Progressive disease.";
      date_of_death = "08/2023";
      d_case_summary = "HGSOC. \nDuring first line chemo she has had a response in her pelvis and Ca1-25 has come down but she developed a pleural effusion.\nNegative for a p53 mutation";
      date_consented = "2022-11-22";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "60 yo female, platinum refractory HGSOC\n\n2022-06: Initial diagnosis: right ovarian malignancy with mesenteric metastasis and malignant ascites \n\n2022-07: \tascitic tap \n\t\tIHC positive: CK7, PAX8, patchy p53 variable staining (interpretation is difficult in cytology fluid) p16 variable, WT patchy reactivity \n\t\tIHC negative: SOX10, GATA3, CD45, ER and PR. \nFamilial cancer panel (PeterMac) No pathogenic variants detected \n\n2022-09: Somatic BRCA testing (PeterMac) No pathogenic variants detected \n\n2022-10: \twedge resection and pleural biopsy (consistent with HGSOC) \n\t\tIHC positive: PAX8, WT1, BAP1 (Retained strong nuclear staining), BerEP4, MOC31 \n\t\tIHC negative: TTF1, P53 wild type staining (very unusual for this type of cancer), ER, PR1% \nBRCA testing (PeterMac) low tumour purity, no result available \n\n2022-11: carbo/taxol C6 finished (Avastin added with C5) \n\n2022-12: start Caelyx asap, Stafford Fox to organise TSO500 urgently.  \n\n2023-03: Fresh tissue S1, biopsy and FFPE block 1.2 \n\nMolecular testing: Ovarian germline panel including BRCA1/2 negative (PMS2 VUS). Wedge resection specimen failed BRCA1/2 mutation testing (no result). Pleural fluid - somatic BRCA1/2 mutation testing underway \n\n2023-06: S1 and B1 DNA sent for WES\n\n2023-07: Clinical Trial: AZD8205 Monotherapy (PMC79319)  ";
      brca_report = "SFRC01689_sBRCAReport_10Jan2023_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      fcc_report = "SFRC01689_FCPanel_25Sep2022_Redacted.pdf";
      portal_letter = "SFRC01689_ArcPortalSummary_09Dec2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "14/01/2023: Oct 2022 sample requested from Austin pathology by Devindee.\n07Mar23: Oct2022 sample re-requested from Austin pathology by Monica\n23Mar23: Oct2022 sample received from Austin pathology by Monica";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01689";
  }
