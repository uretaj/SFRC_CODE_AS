with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "f8/7K/SHA256E-s53034558877--819668f267212af2fa73e7e46abff80bd87cfe9fbea81b414ce0683a702c55cf.gz/SHA256E-s53034558877--819668f267212af2fa73e7e46abff80bd87cfe9fbea81b414ce0683a702c55cf.gz";
      r2 = "5V/vk/SHA256E-s57642959772--ca081f11c3befeb32315d92409ace85c1cb5a076a49eabffbc55b9cb98feeaa2.gz/SHA256E-s57642959772--ca081f11c3befeb32315d92409ace85c1cb5a076a49eabffbc55b9cb98feeaa2.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "6Z/Gg/SHA256E-s99347112698--2e6e142466ac9ce61b156d1786ac290f7bc5cfc345eca1fe28ce21fbbba4d920.gz/SHA256E-s99347112698--2e6e142466ac9ce61b156d1786ac290f7bc5cfc345eca1fe28ce21fbbba4d920.gz";
      r2 = "fx/p1/SHA256E-s109079361235--d011e7c1983938124cf36e1e9f52075fc033d118b41b81dcb856581dfc86661c.gz/SHA256E-s109079361235--d011e7c1983938124cf36e1e9f52075fc033d118b41b81dcb856581dfc86661c.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "ww/1X/SHA256E-s3967898653--06e4b6b608ef6dff7f6331ef9b21a29d5376bc3dcd4ba127d90a3d99215a6d46.gz/SHA256E-s3967898653--06e4b6b608ef6dff7f6331ef9b21a29d5376bc3dcd4ba127d90a3d99215a6d46.gz";
      r2 = "fM/9p/SHA256E-s3964102451--e9798c6fb60f9d7a875793f3c8a32dd4a98fb66d501c391aeeffada5f9d37c9a.gz/SHA256E-s3964102451--e9798c6fb60f9d7a875793f3c8a32dd4a98fb66d501c391aeeffada5f9d37c9a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 24.08.2023\nDiscussed WGS report with SFRC data.\nNothing additional to report from SFRC that's not in the Grimmond report. \nAny other way to be able to determine if ovarian or endometrial? \n\nClare, Ratana and Rae meeting 29.06.2023\nDiscussed TSO500 report. Still don't know if ovarian or endometrial, so submit same samples for WGTS.\n\nCorrespondence from 5.06.2023\nSecond OCT block reviewed, looks like tumour 25-40% purity for certain pieces.\nDNA + RNA extractions performed, enough for WGTS, Clare said yes to submit.\nEmail from clinician, send samples for urgent TSO500 instead.\n\n*No portal letter will be issued.\nSample meeting with Clare 2023-05-18\nPlan for S1: Looks like a decision has already been made, IHC on the way to determine if tumour or not on a new OCT block made from snap frozen, as Gayanie could not determine if it was tumour or not  on the first OCT block and we could not get any IHC done as the block as been depleted on uncharged slides, not good for IHC.\n\nPatient is a doctor, now on Len/Pembro. What date is our blood? (if before Len/Pem). Could ask for liquid TSO if this second OCT block is not good. Already know the PIK3CA and KRAS. ";
      urgency_details = "Patient is progressing, very aggressive cancer.";
      date_of_death = "06/2023";
      d_case_summary = "40 year old female diagnosed with Stage IV ovarian adenocarcinoma on 05/08/2022. Palliative RTx 1L carbpac. PET-CT showed multiple bone, nodal, liver serosa and peritoneal, lung, hepatorenal and bladder wall involvement on 22/12/22. SA Pathology breast and ovarian panel: no variants detected in BRCA1/2, BRIP1, CHEK2, PALB2, PTEN, RAD51C/D, TP53\nMonash 70 gene panel: PIK3CA H1047R, KRAS G12A.";
      date_consented = "2023-01-12";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "ovarian adenocarcinoma, metastatic poorly differentiated endometrioid adenocarcinoma is favoured";
      case_details = "40 years old female  \n\n2022-08\tliver biopsy, adenocarcinoma \nIHC positive: CK7, CK20, PAX8 \nBreast and ovarian panel on blood (BRCA1, BRCA2, BRIPl, CHEK2, PALB2, PTEN, RAD51C, RAD510, TP53) no variants detected. \nCarboplatin/paclitaxel  \n\n2022-10:\tNGS solid tumour panel (70genes) on FFPE block from 2022-08 \n - PIK3CA, KRAS (IIC) \n- Vus: ALK, APC, ATM, ESR1 \nPlan to change to carboplatin, gemcitabine \n\n2022-12: \tliver biopsy (FFPE block 1A received) \nIHC positive: PAX8, ER \nIHC negative: PR, WT1, P16,  \nP53 WT, MMR intact \n\n2023-01: commenced Lenvatinib and Pembrolizumab (self funded)\n\n2023-03: \tBlood B1 and fresh biopsy S1 received ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-02-01";
      case_urgent = "Yes";
      fcc_report = "SFRC01707_GynaeGenePanel_15Aug22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "15Mar23: Dec2022 sample requested from ClinPath pathology by Monica\n4Apr23: Dec2022 sample received from ClinPath pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01707";
  }
