with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.1(E2)";
      class = "tumours";
      pdx = false;
      r1 = "56/GG/SHA256E-s23478135260--aa58de1e6b9d2adda507e022648ca1253f8c47a37767a0a331b8fb240caabd4c.gz/SHA256E-s23478135260--aa58de1e6b9d2adda507e022648ca1253f8c47a37767a0a331b8fb240caabd4c.gz";
      r2 = "QF/GF/SHA256E-s24245737902--ad046c94371dba2c3777333e375ce37fe7eb28dd9bf670096ee2b2a37a468105.gz/SHA256E-s24245737902--ad046c94371dba2c3777333e375ce37fe7eb28dd9bf670096ee2b2a37a468105.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k3/7Z/SHA256E-s10200317852--f20fd6e0a4c4255e696d081fe8e37b259a8fee0e44eea925f5556d789db6662a.gz/SHA256E-s10200317852--f20fd6e0a4c4255e696d081fe8e37b259a8fee0e44eea925f5556d789db6662a.gz";
      r2 = "ZW/wk/SHA256E-s10796362683--4c8c09ead9768ec237dd1e8779536e797a31a12fa767239e2c211f312f215824.gz/SHA256E-s10796362683--4c8c09ead9768ec237dd1e8779536e797a31a12fa767239e2c211f312f215824.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 10.02.2022\nYes, go ahead with WES on FFPE sample 2.1 (we can compare with WGS on fresh tissue if it ever grows). Keep it as a priority as the patient has progressed with few treatment options.  \n\nMeeting notes 06.02.2020\nClare emailing Stephen Fox to decide if we send FFPE block to him directly or extract DNA in the lab first. Replied Extract DNA in the lab before submitting for BRCA.";
      date_of_death = "06/2022";
      date_consented = "2019-03-25";
      tumour_type = "uLMS";
      tumour_details = "Uterine Leiomyosarcoma";
      case_details = "48yo woman\n\n2013-03: Surgery: Laparoscopic myomectomy (morcellated) \nPath: atypical leiomyoma\n\n2013-12: initial diagnosis: uLMS. Surgery\nDiagnostic laparoscopy (recurrent pelvic mass)\nPath: LMS\n\n2014-02: Surgery: TAHBSO / ultra-low anterior resection \nHistopath on small bowel peritoneum: \nIHC positive: desmin, smooth muscle actin. p16 (strong diffuse) p53 (moderate to strong diffuse), ki67 (positive staining of cell nuclei in at least 50% of tumour cells), ER (2+ staining in 70% cells), PR (3+ staining in 90% cells)\n\nHistopath on left abdominal wall\nIHC positive: CD68\n\nHistopath on right anterior abdominal wall\nIHC positive:  ER (2+ staining in 70% cells), PR (3+ staining in 90% cells)\n\nHistopath on umbilicus: \nIHC positive: p16, SMA, desmin.\n\n2015-09: Surgery: Diagnostic laparoscopy\nPath: NED\n\n2018-05: Surgery: Laparoscopic resection abdo wall lesions\nPath: LMS\n\n2018-09: Surgery: VATS resection LUL lesion\nPath: LMS\nHistopath on left upper love wedge of lung\nIHC positive: SMA\nER: 1+, <1%\nPR: 1+, 10%\n\n2019-02: Surgery: Resection of recurrent pelvic masses / (R) hemicolectomy / terminal ileectomy. Right colon fixed and blocked (Block 2.1)\nHistopath on peritoneum:\nIHC positive: SMA and desmin (diffusely positive) ER (weak positive in 10% of tumour cells)\nIHC negative: PR, S100 protein, CD117, (c-kit), EMA\nKi-67 index approximately 50%\n\n2019-02: BRCA1/2 test: no pathogenic variants detected.\n\n2019-03: Blood B1 received\n\n2019-09: Blood B2 received\n\n2020-01: FFPE Block 2.1 received\n\n2020-02 - 2020-03: Medical Treatment: Letrozole (PD)\n\n2020-03: Radiation. \n\n2020-06 - 2020-10: Doxorubicin 50mg\n\n2021-04 - 2021-05: DOXOrubicin (60mg/m2)\n\n2021-10: fresh tissue from small biopsy (S1) and ascites (S2) received.\n\n2022-02: DNA from block 2.1 and germline sent for WES\n\n2022-06: Deceased.\n---------------------------------------------------------------------------\nfor uLMS project (BRCA1/2 testing with Stephen Fox)";
      brca_report = "SFRC01156_BRCAReport_25Feb2020_Redacted (1).pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "30Jan2023: 2019 samples received from PMCC by Briony\n03/11/2022: 2014 and 2019 samples requested from RWH and PMCC, respectively, by Devindee for the uLMS project. ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01156";
  }
