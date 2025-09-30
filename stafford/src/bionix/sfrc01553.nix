with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Mp/k0/SHA256E-s40963307603--370fdfccd5721c0a06965406d5121afe4f7bcdfbba3e15516ef75a4a56589f2c.gz/SHA256E-s40963307603--370fdfccd5721c0a06965406d5121afe4f7bcdfbba3e15516ef75a4a56589f2c.gz";
      r2 = "G4/VM/SHA256E-s43886004671--16c9b82838b42bbdc47e912c532db568a2b5756224a36acbe974bded9e9d6fc8.gz/SHA256E-s43886004671--16c9b82838b42bbdc47e912c532db568a2b5756224a36acbe974bded9e9d6fc8.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "q6/Z1/SHA256E-s85295298806--f39ab7f10cca6b367ae203b0373d2fd12cf08105c945a8593a25dbc4cde328e4.gz/SHA256E-s85295298806--f39ab7f10cca6b367ae203b0373d2fd12cf08105c945a8593a25dbc4cde328e4.gz";
      r2 = "05/m9/SHA256E-s89132962995--b669a737dda50ac01acdbd01afc9baad277e07c6ab524a4b8a5ca247a7582fbc.gz/SHA256E-s89132962995--b669a737dda50ac01acdbd01afc9baad277e07c6ab524a4b8a5ca247a7582fbc.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "j9/mG/SHA256E-s7127956720--03499afe324bf3ad6f6f91cfbc64e641df5a37c67062767732c7c6ed470a1290.gz/SHA256E-s7127956720--03499afe324bf3ad6f6f91cfbc64e641df5a37c67062767732c7c6ed470a1290.gz";
      r2 = "FK/WM/SHA256E-s7292066824--a6c5f586760b86caac84bde1c67007d1e0933c96d47691b0967900dae4f57035.gz/SHA256E-s7292066824--a6c5f586760b86caac84bde1c67007d1e0933c96d47691b0967900dae4f57035.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "Clare's Meeting 01.11.2022\nWGS on S1 only found CTNNB1 and SPOP (both VUS). B7H4 IHC on FFPE Block 1.1 isfrom same procedure as S1 - %positivity = 15%.\nWGS has been issued. Now can let clinician know to consider referral for AZD8205 \n\nRC Meeting 13.10.2022\nDiscussed WGS report. \nStill have B7H4 to do.\n\nClare, Ratana, Mandy, Rachael 13.10.2022\nOnly want H&E and B7H4 on FFPE Block--is from same surgery as our S1. Gayanie to urgently review physical slides.\n\nClare's Meeting 19.09.2022\nTo do B7H4 IHC. Devindee to see if possible to recall FFPE block from the same procedure as our S1 (was sent for WGS). If no, use the 2014 block for the IHC.\n\nClare's Meeting 26.08.2022\nWGS report back: Activating mutation of uncertain clinical significance in CTNNB1 & SPOP detected.\n-Damien to issue the SFRC WGS report urgently.  \n Also ask AZD8205/B7H4 trial includes endometrial \n cancer (patient is Grade 1, but metastatic, and \n going for a long time).\n-Check PDX progress, potential for FFPE for Ki67 \n IHC. Possible for Ki67 IHC on OCT but need to \n check the amount of tissue in the block first.\n-Nothing for FFPE Block A5 (2014 LSO) for the \n moment.\n\nClare's Meeting 30.06.2022\n-Ratana to extract S1 DNA for WGS - URGENT case\n-Briony to find histopath report for S1 and upload to RedCap.";
      d_case_summary = "53yo female, Grade 1 endometrioid endometrial carcinoma, oligometastatic, now widely metastatic throughout abdomen\nNormally this is not considered rare but lethal metastasis of a grade 1 EEC could be considered rare (ie after so long).\n\nOriginally thought to have HGSOC, then, reclassified as HGSEC in 2015. She has had largely oligometastatic (well controlled) disease - with radiation eg to the liver and on hormones with intermitted courses of chemotherapy.\n\nSummary: \n1. Relapsed endometrial carcinoma.\n2. 2014: Salpingectomy and omentectomy, grade I ovarian carcinoma.\n3. 2015: TAH/BSO grade I, endometrial adenocarcinoma of the ovary. Positive findings in the omentum and positive omentum and pouch of Douglas.\n4. Grade I endometrial carcinoma in the endometrium with no myometrial invasion. There was metastatic disease in the parametrium and mesenteric nodes. \n5. 2015: Carboplatin and Paclitaxel.\n6. 2017: Hepatic lesion, commenced on Provera.\n7. 2019: Re-started Carboplatin and Paclitaxel. \n8. 2019: Perihepatic, further right flank lesion on PET, for hormonal therapy. \n9. 2020 RT to peri-hepatic mass\n10. 2020 Femara";
      date_consented = "2022-06-09";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Grade 1 endometrioid endometrial carcinoma";
      case_details = "53yo woman\n\n2014: Lapraotomy LSO and omentectomy for grade I ovarian carcinoma. Hysteroscopy D&C, sigmoid mass noted.\n-Left ovary fixed and blocked (Block A5)\n\n2015-02: TAH/RSO grade I, reclassified endometrial adenocarcinoma of the ovary. \n-Positive findings in the omentum and Pouch of \n Douglas. \n-Nodules in rectum, mesentery, lateral pelvic wall, \n multiple omental masses.\n-Metastatic disease in the parametrium and \n mesenteric nodes. \n-Grade I endometrial carcinoma in the \n endometrium with no myometrial invasion. \n-pMMR\n-Chemotherapy: 6x cycles Carboplatin and \n Paclitaxel, completed 2015-08\n\n2016-06: Commenced Provera following discovery of small perihepatic lesion. Nonresectable.\n\n2017: Hepatic lesion, commenced on Provera.\n\n2019-02: Small volume recurrence of ovarian cancer and progressive omental and peritoneal disease.\n-Commenced 6x cycles of carboplatin and paclitaxel. \n\n-2019-??: Progressive perihepatic lesion (likely serosal in origin) and right flank lesion found on PET, commenced letrozole.\n\n2020: Progressive oligometastatic lesion in perihepatic area. Treated with stereotactic radiotherapy and hormonal therapy, completed 2020-07\n\n2020-11: Slow progression of disease. Changed to Provera and referred to SFRC.\n\n2021-11: Repeat imaging identified new abdominal/pelvic metastases. \n\n2022-04: Diagnosed metastatic endometrial cancer\n\n2022-06: Blood B1 received. Tissue from core biopsy received (tissue S1). Tissue fixed and blocked (Block 1.1)\n-Histopath:\n -IHC positive: ER, PR, cytokeratin 7, Pax8 \n -IHC negative: HER2, CDX2, p16, cytokeratin 20, TTF- \n  1, Napsin A, WT1 \n -P53: wild type \n\n2022-07: FFPE block A5 (2014 LSO) received. \n\n2022-10: FFPE Block 1.1 (tissue from S1 biopsy) received, B7H4 IHC performed.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "13/07/2022: 2014 sample requested from Monash Pathology by Devindee. \n18/07/2022: 2014 sample re-requested from Monash Pathology by Devindee (new Monash request form). \n30/07/2022: 2014 sample received from Monash Pathology by Devindee. \n21/09/2022: June 2022 sample requested from PMCC pathology by Devindee\n03/10/2022: June 2022 sample block (with H&E stain) received.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01553";
  }
