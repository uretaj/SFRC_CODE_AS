with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Gj/j5/SHA256E-s5242832683--a0ca7414a8a177e377b124e5693308af30188e5bb919677fc15394da5cbbf0b9.gz/SHA256E-s5242832683--a0ca7414a8a177e377b124e5693308af30188e5bb919677fc15394da5cbbf0b9.gz";
      r2 = "V3/QJ/SHA256E-s5383321650--8e790cb8f5f8643996f00c26acbc82e6d9f3a349e3e922394f1e2e76f44cc99f.gz/SHA256E-s5383321650--8e790cb8f5f8643996f00c26acbc82e6d9f3a349e3e922394f1e2e76f44cc99f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "5q/28/SHA256E-s30501656199--7c7650b4e41ab0879f20efaeefa8ae24996a2a93dc435b1ef4466190e6124ecf.gz/SHA256E-s30501656199--7c7650b4e41ab0879f20efaeefa8ae24996a2a93dc435b1ef4466190e6124ecf.gz";
      r2 = "G5/VK/SHA256E-s31748107444--892564b91f06cec82faba5c0a8bf9b5beb22e6b831c77b24f8c669b0af61223b.gz/SHA256E-s31748107444--892564b91f06cec82faba5c0a8bf9b5beb22e6b831c77b24f8c669b0af61223b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 20.07.2023\nDiscussed WES report for S1 sample:\n-Unsure if ovarian or endometrial. Consistent with ovarian. \n-Can send sample for methylation \n-BRCA1 LOH?? \n-Clare to contact Dr to see if can get HRD testing. \n\nPlan: Wait for Matt to confirm HRD/CN plots. \n\n\nClare's Meeting 09.03.2023\nThis case is FGT uncertain origin.  \nTo do WES on S1 tissue as is very low purity - 15%.\nBRCA test still pending.\n\n3/8/23 methylation result from Dobrovic lab: no BRCA1 or RAD51C methylation detected";
      d_case_summary = "advanced peritoneal HGSC of FGT origin (dx on pleural fluid).";
      date_consented = "2022-11-24";
      tumour_type = "HGS primary peritoneal";
      tumour_details = "HGS primary peritoneal";
      case_details = "64-year-old female with de novo Stage IV high-grade serous carcinoma of the female genital tract,\n\n2022-10: Presentation with abdominal distension. CT-AP: Bilateral pleural effusion (worse on right). Extensive ascites with multiple omental deposits. No primary identified. Ca125 = 545, CEA not raised. \n\n2022-11:  CT-guided peritoneal biopsy: high grade serous carcinoma of female genital tract origin; CK7, PAX8 and WT1 positive, p53 negative, ER weak positive, GATA3/PR/ CK20 negative. \nRight pleural effusion cytology - also consistent with HGSC \nColonoscopy and Gastroscopy - Normal colon, mild duodenitis \n•\tMDT - advanced HGSC of FGT origin (peritoneal disease, no obvious primary on imaging, no nodal disease). Recommend neoadjuvant chemotherapy and BRCA testing\n•\tCommenced neoadjuvant chemotherapy (Carboplatin and Paclitaxel). Awaiting result of germline BRCA1/2 testing. \n•\tReferral to ARC portal: Molecular test advice/interpretation, Other (HRD testing beyond BRCA1/2)\n\n2023-02: Surgery: TAH/RSO. Fresh tissue S1 received. Blood B1 received. \nFeatures consistent with HGSC.\np53: Null phenotype.\nIHC Positive: PAX8.\nIHC negative: ER, PR.\n\n2023-05: S1 DNA sent for WES (15-20% purity).";
      brca_report = "SFRC01704_BRCATest_01Feb23_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-01-30";
      portal_letter = "SFRC01704_ARCPortalLetter_10Jan2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01704";
    capture = CREv2;
  }
