with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3";
      class = "tumours";
      pdx = false;
      r1 = "j1/mj/SHA256E-s17305081438--fa573ea5ceaa3ba47a386702fa23a92ff224895da76394488b6a774f90db7c35.gz/SHA256E-s17305081438--fa573ea5ceaa3ba47a386702fa23a92ff224895da76394488b6a774f90db7c35.gz";
      r2 = "0q/g6/SHA256E-s18550239772--46b2e6b51eb2300956b1d6ded45183eae1e355acf174f6b78a6b827b53cd37c9.gz/SHA256E-s18550239772--46b2e6b51eb2300956b1d6ded45183eae1e355acf174f6b78a6b827b53cd37c9.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Z1/X4/SHA256E-s4286774658--ba59c713cfae4da86f997216f41b9f0682d2373918981ad7d8be8c16a2f681e3.gz/SHA256E-s4286774658--ba59c713cfae4da86f997216f41b9f0682d2373918981ad7d8be8c16a2f681e3.gz";
      r2 = "zX/9J/SHA256E-s4501262245--8790cd88f4e86804409596971dd5a9107edbeb7f1392f449ded2f9d077837f6d.gz/SHA256E-s4501262245--8790cd88f4e86804409596971dd5a9107edbeb7f1392f449ded2f9d077837f6d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "WES Meeting 20.10.2022/Clare, Ratana, Mandy, Rachael 21.10.2022\nNothing targetable from WES results. Issue negative report.\n\nRC Meeting 15.09.2022\nDiscussed TSO500 report. Just recurrent FOXL2 mutation and VUS of TCF7L2. \n\nRare cancer 21/04/22\nWES on FFPE 3 sample. Urgent.";
      d_case_summary = "Metastatic granulosa cell tumour of the ovary, diagnosed 1994.";
      date_consented = "2022-01-08";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa cell tumour";
      case_details = "62yo woman. Multiple recurrence and metastases, original diagnosis 1994. \n\n1994-10: Granulosa cell tumor of the ovary.\n\n2007-05: Laparotomy, TAH, RSO and division of adhesions: One mass anterior and\nright of the bladder, second posteriorly in POD. Path: recurrent Granulosa cell tumour (normal R ovary)\n\n2011-06: increasing inhibin level, CT scan - recurrent right pelvic mass. Path: Recurrent granulosa tumour\n\n2012-07: Increasing inhibin level, CT Scan - right inguinal canal mass and right subphrenic lesion, liver. Path: Recurrent granulosa tumour\n\n2013-03 Hepatic progression, recurrent right pelvic lesions. Radioablation to liver.\n\n2015-11: started letrozole due to Pelvic disease progression with PR\n\n2016-06: CT showing reduction in size of tumors\n\n2020-07: progressive disease, new recurrent pelvic tumors. Recurrent Granulosa tumour. Continuing letrozole\n\n2020-08: Sample of Granulosa cell tumor of the ovary collected, fixed and blocked for FFPE (Block 3).\nIHC positive: alretinin, inhibin, CD99 \n\n2020-11: PD RIF mass and large volume ascites.\n\n2021-06: Diagnosis of endometroid carcinoma. \nIHC: p53 wild type.\n\n2021-12: Commenced carboplatin and paclitaxel. Letrozole ceased.\n\n2022-03: Blood B1 received. FFPE of granulosa cell tumor of the ovary (Block 3) received \n\n2022-08: Block 3 and B1 DNA sent for WES\n\n2022-09: Block 3 DNA sent for TSO500:\nTier II - Potential Clinical Significance- FOXL2 variant";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01514_ARCPortalReport_12Jan2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "10/02/2022: Aug 2020 sample tissue requested from Clinpath pathology by Devindee. \n18/03/2022: Aug 2020 sample block received from Clinpath pathology by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01514";
  }
