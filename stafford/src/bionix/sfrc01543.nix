with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.9";
      class = "tumours";
      pdx = false;
      r1 = "p9/qQ/SHA256E-s24862330882--22699d7a63c4413f85b278c8fe556f38fe36af6b7a0462b4f2e46df9fd55d2b5.gz/SHA256E-s24862330882--22699d7a63c4413f85b278c8fe556f38fe36af6b7a0462b4f2e46df9fd55d2b5.gz";
      r2 = "vX/mv/SHA256E-s25681551439--c5d2690c43ba97d8d42901d25f6c2f09eacc3eb6f84e3f636895352eb1480170.gz/SHA256E-s25681551439--c5d2690c43ba97d8d42901d25f6c2f09eacc3eb6f84e3f636895352eb1480170.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X5/kx/SHA256E-s7180934923--9045229c2c6e23da577b97f73015c824bae58c1eea8ab5781e48b406062e0d0a.gz/SHA256E-s7180934923--9045229c2c6e23da577b97f73015c824bae58c1eea8ab5781e48b406062e0d0a.gz";
      r2 = "FZ/zq/SHA256E-s7475429369--02dbd8cc02d1d107d926a142ee5c3082b72c65bc4e4d2f150cae15e8a9d48abd.gz/SHA256E-s7475429369--02dbd8cc02d1d107d926a142ee5c3082b72c65bc4e4d2f150cae15e8a9d48abd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "WhatsApp test Rae: FFPE Block 1B, not for Clare's review, block has been recalled for BROCA. \n\nClare, Ratana, Rae 03.04.2023\nBROCA on HGSOC block (2004)\n\nRC Meeting 10.11.2022\nDiscussed WES report:\nKRAS and CDK2NA mutations confirm mucinous ovarian rather than HGSOC. Share report with Kylie's lab.\n\nClare's Meeting 30.05.22\nThis case in collaboration with Kylie's lab and their section of tissue\nMicrodiscect both ours (FFPE Block 1.9) and Kylie's sections (will be done by Olivia, Kylie's PhD student). DNA extraction is 48h on heat block. Aim for extra depth WES. If not enough DNA, send for TSO500 (we know what we're looking for, for mucinous ovarian cancer) ";
      d_case_summary = "77 yo woman HGSOC 2004 6x Carbo pacli\nMBOT recurred 2017\n2022 March intra-epthelial carcinoma in abdominal scar from 2017 - ? mucinous (or HGSOC possibly)";
      date_consented = "2022-03-16";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Primary HGSOC, recurrent well-differentiated mucinous adenocarcinoma";
      case_details = "77F\n\n2004-06: Dx HG serous ovarian cancer - clear cell carcinoma\nSurgery: Laparotomy LSO. FFPE Block 1B.\nChemotherapy \npMMR\n\n2012-02: Recurrence: Borderline mucinous tumour with intraepithelial carcinoma.\nSurgery: Excision of mucinous cystadenoma\n\n2013: Surgery: Excision of mucinous cystadenoma\n\n2016: Surgery: Excision of recurrent pelvic mass\n\n2017-11: Surgery: Resection of pelvic mass; borderline tumour with intraepithelial carcinoma\n\n2022-02: Potential metastasis: Postcontrast CT scans of the chest, abdomen, pelvis. Small irregular focal nodules measuring 5 and 4mm in size noted in the left lung apex posteriorly. Non specific, small metastasis cannot be excluded \n\n2022-03: Recurrence; mucinous adenocarcinoma. Tissue (rectosigmoid colon, ureter, tumour mass) fixed and blocked (Block 1.9) \nIHC: p53 wild type. \n\n2022-04: Sections from FFPE block 1.9 received \n\n2022-05 - 2022-08: Chemotherapy: 6x cycles SA Carbo\n\nCOV panel negative.\n\n2022-06: Blood B1 received\n\n2022-08: DNA from FFPE Block 1.9 and Blood B1 sent for WES:\ngermline BRCA2 VUS\nsomatic KRAS G12V\nCDKN2A homozygous deletion\n\n2023-07: FFPE Block 1B received (Ovarian mixed clear cell and high grade serous papillary carcinoma).";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "06/04/2022: March 2022 sample requested from Austin Pathology by Devindee. \n14/04/2022: March 2022 slides received from Austin pathology by Devindee.\n23May23: Jun2004 sample requested from St V by Monica\n04Jul23: Jun2004 sample received from St V by Monica";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01543";
  }
