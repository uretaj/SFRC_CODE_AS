with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1AN";
      class = "tumours";
      pdx = false;
      r1 = "vz/Gw/SHA256E-s18288720067--a180b854c8174256a27fa37dc0be9eeb18faa8841172443966013ab2ceb963b7.gz/SHA256E-s18288720067--a180b854c8174256a27fa37dc0be9eeb18faa8841172443966013ab2ceb963b7.gz";
      r2 = "6J/qK/SHA256E-s18717666048--07bc05dba3c327a4ca524b715d359dea48ddb75ea33320497818423e4e8be1a6.gz/SHA256E-s18717666048--07bc05dba3c327a4ca524b715d359dea48ddb75ea33320497818423e4e8be1a6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vJ/qQ/SHA256E-s4770738613--ed4b9e3c8905b0b113be2f64c84331d3903e527367c8e45fdec52119c9c45d83.gz/SHA256E-s4770738613--ed4b9e3c8905b0b113be2f64c84331d3903e527367c8e45fdec52119c9c45d83.gz";
      r2 = "V9/5Q/SHA256E-s5043201135--f0355c2bae0fad050e48020bc4a83305e0dbbac5132a734351c5637c8c9eceef.gz/SHA256E-s5043201135--f0355c2bae0fad050e48020bc4a83305e0dbbac5132a734351c5637c8c9eceef.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's Meeting 17.11.2022\nBH74 IHC: 50% cells with strong membranous positivity in tumour.\nNothing can be done as B7H4 trial is not open for cervical cancer in Australia.\n\nRC Meeting 13.10.2022\nNothing actionable from WES report; Matt: Not MMR-D. Do B7H4 IHC.\n\nEmail from Mandy 11.07.2022\nPatient has had a recurrence, is requesting urgent WES. Mandy to contact her med onc for possibility of a biopsy for fresh tissue.\n\nClare and Rachael meeting 06.05.2022\nOrganise WES when ready. ARC portal letter requested.";
      d_case_summary = "- smear and screening in Nov 2016 deemed clear and no concern.\n- diagnosed stageIVB cervical cancer in Sept 2020 - primary tumour 4.5cm in cervix, cancer in multiple lymph nodes from para-aortic to virchows node at neck.\n- 6 rounds chemo (paclitaxel, carboplatin and avastin) Oct2020 to Feb 2021, then 22 daily radiation neck to pelvis (missed three from side-effects) followed by 4 weekly brachytherapy until April 2021\n- scan in July/Aug - tiny spot but deemed \"clear\"\n- scan in November - tiny spot now a recurrence of 2.6cm tumour in uterus, removal of uterus, cervix, tubes and ovaries in December. Pathology on removed material showed tumour was actually 3.5cm and traces of cancer cells in lymph system and veins (how it moved to uterus after all the treatment earlier in 2021).\n- yet to do next scans. doctors want to \"wait and see\" until next recurrence.";
      tumour_type = "Cervical SCC (Squamous Cell Cancer)";
      tumour_details = "Stage IVB Cervical Cancer; large cell keratinising moderately differentiated squamous cell carcinoma";
      case_details = "43F\n\n2020-09: diagnosed Stage IVB cervical cancer following cervical core biopsy: large cell keratinising moderately differentiated squamous cell carcinoma. \n\n2020-10 - 2021-02: Chemo (paclitaxel, carboplatin, avastin)\n\n2021-02 - 2021-04: Consolidation radiation (L supraclavicular, para-aortic, pelvic with brachytherapy)\n\n2021-11: Recurrence of tumour in uterus.\n\n2021-12: Surgery: TLH/BSO\nTissue from uterus fixed and blocked (Block 1AN)\n\n2022-04: Blood B1 received. Block 1AN received.\nReferred for MoST sequencing:\nSomatic BAP1 found (Also seen in WES). No clinical trials or therapies recommended.\n\n2022-06: Commenced cemiplimab\n\n2022-07: Progressive disease: 2x metastases\n\n2022-08: DNA from Block 1AN and Blood B1 sent for WES: nothing actionable from WES report. Matt: Not MMR-D.\n\n2022-10: Block 1AN stained for B7H4:  \n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01549_ARCPortalLetter_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "05/04/2022: Dec 2021 sample requested from SSWP pathology by Devindee. \n13/04/2022: Dec 2021 block received from SSWP pathology by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01549";
  }
