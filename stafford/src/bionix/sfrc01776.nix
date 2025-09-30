with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "Mq/Q0/SHA256E-s3580930105--ab2e95ddfb9ee51a564205ea1312cb0ef30366a4c3a2d934af9500e9790baf2f.gz/SHA256E-s3580930105--ab2e95ddfb9ee51a564205ea1312cb0ef30366a4c3a2d934af9500e9790baf2f.gz";
      r2 = "P5/3X/SHA256E-s3520724163--d2c350a656428930eb1eba3b4b9ec9b8c20c332bd816009ea8e57f902e2f9856.gz/SHA256E-s3520724163--d2c350a656428930eb1eba3b4b9ec9b8c20c332bd816009ea8e57f902e2f9856.gz";
    }
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "8Z/kq/SHA256E-s3604490665--958159ad17b40b0f33511b7b3adf992f2aff66ceff20a75158794b47dbfca003.gz/SHA256E-s3604490665--958159ad17b40b0f33511b7b3adf992f2aff66ceff20a75158794b47dbfca003.gz";
      r2 = "KW/zF/SHA256E-s3550539568--720dfe1607903ed4f17a1bd340d11150b4df901adb3ac975751623b5269a508e.gz/SHA256E-s3550539568--720dfe1607903ed4f17a1bd340d11150b4df901adb3ac975751623b5269a508e.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X0/Vz/SHA256E-s1636341443--fb45dcd53f62f6bb9ee1402beb2de27f37fd5df7a95f6cad3398319de2c93b3b.gz/SHA256E-s1636341443--fb45dcd53f62f6bb9ee1402beb2de27f37fd5df7a95f6cad3398319de2c93b3b.gz";
      r2 = "jx/7k/SHA256E-s1676576654--4c2cc9d2e033704ab3abf2026a136e6ad62a8bcd57dddd96c9a6f64e6e3475d4.gz/SHA256E-s1676576654--4c2cc9d2e033704ab3abf2026a136e6ad62a8bcd57dddd96c9a6f64e6e3475d4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "w9/g4/SHA256E-s1715630859--7f2f71523ab983e2bbf8b2bee8902831059389cbb8a27d70543061f7d6173ca7.gz/SHA256E-s1715630859--7f2f71523ab983e2bbf8b2bee8902831059389cbb8a27d70543061f7d6173ca7.gz";
      r2 = "Vx/G0/SHA256E-s1762333616--7bd82afd197ee5215253798f05ccd14441f458142422413b514404fa5f4beb50.gz/SHA256E-s1762333616--7bd82afd197ee5215253798f05ccd14441f458142422413b514404fa5f4beb50.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 5.10.2023\nTWIST WES Block A1\nDiscussion\n- Only TP53 \n- Large gBRCA1 (not seen in WES-too large to pick up?) Can't be detected by WES TWIST. \n- There is somatic BRCA2 at low HF, with LOH. Too low to report. \n- Looks HRD by copy number \n- Issue report. \n\nClare's sample meeting 24.08.2023\nPlan for FFPE block 2A and 2B : \nAC- We previously discussed Block A1 from the brain metastasis (2019 and after carbo/taxol) is for WES TWIST. Those 2 new blocks are from the same surgery, use block 2A as tumour purity is better and send for WES TWIST? \n\nCS - Yes fine thank you. She does not have confirmed recurrence anymore - brain damage from radiotherapy instead (radionecrosis). She is in CR still but would be good to have the WES on that tissue.  \n\nSample meeting with Clare 20.07.2023\nNote, we have received 3 blocks, 2 are still pending review \n\nPlan on FFPE block A1: WES TWIST, urgent \nGayanie to review other blocks, if good purity/area, send for WES TWIST. \nWant to look at RAD51C/D. ";
      d_case_summary = "65 year old female with high grade serous ovarian cancer and germline BRCA1 mutation. Surgery 8/6/17: TAH BSO infracolic omentectomy, 1-2mm diffuse residual disease. Pathology: HGSC involving bilateral fallopian tubes, ovaries, posterior uterine surface, omentum, 3/6LN. Carboplatin/Taxol x 6 cycles completed Nov 2017. Dose reductions due to cytopenias. \nFeb 2019, CT/MRI  brain: isolated brain metastasis, 24mm left parietal lobe. Neurosurgery 14/3/19: resection of L parietal brain metastasis, histology serous papillary carcinoma. Radiotherapy May 2019: Stereotactic radiosurgery to cavity, 24Gy in 3";
      date_consented = "2021-02-19";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, gBRCA1";
      case_details = "64 years old female  \n\n2017-02: \tFamilial cancer panel: BRCA1 NM_007294.3 \n\n2017-06\tTAHBSO, FFPE block 2A and 2B received \n\n\t\tCarboplatin/Taxol x 6 cycles \n\nIHC positive: P53 (Strong) WT1, ER, PR, P16 (weakly) \nKi67: 40% \n\n2019-03\tNeurosurgery brain metastases, FFPE block A1 received \nIHC positive: CK7, Pax 8 \nIHC negative: CK20, CDX2, TTF1 \n\n2021-01\tbrain metastases, radiation \n\nARC recommendations Current management plan: surveillance with MRI brain and PET April 2021. Consider chemotherapy for further recurrence (carboplatin/caelyx) (whether brain only or not) and possibly follow this with PARPi. \n\n ";
      brca_report = "SFRC01776_BRCA_02Nov2017_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-06-30";
      portal_letter = "SFRC01776_ARCPortal_12Mar2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "04Jul23: Mar19 sample requested from ACT pathology by Monica\n04Jul23: Jun17 sample requested from Capital Pathology by Monica \n10Jul23: Mar19 sample received from ACT pathology by Monica\n10Jul23: Jun17 sample received from Capital Pathology by Monica ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "BRCA1";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01776";
  }
