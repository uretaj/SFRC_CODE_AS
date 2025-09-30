with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9F/qJ/SHA256E-s17970610087--44c32a7c4b0ac24bceab302aedd18826d4366b6724122d8b72c23fc7d836a4ec.gz/SHA256E-s17970610087--44c32a7c4b0ac24bceab302aedd18826d4366b6724122d8b72c23fc7d836a4ec.gz";
      r2 = "f5/Kf/SHA256E-s19585367781--5cd2abd0adf7ad6d880eec96a56dc6604ebf2e14c12ee526c01c7acc60cd9e46.gz/SHA256E-s19585367781--5cd2abd0adf7ad6d880eec96a56dc6604ebf2e14c12ee526c01c7acc60cd9e46.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PG/k8/SHA256E-s21898037208--3cf9cc7631eaf30ebe0d1d717829c452af0043f6a2e06e33b7f426bf06f19307.gz/SHA256E-s21898037208--3cf9cc7631eaf30ebe0d1d717829c452af0043f6a2e06e33b7f426bf06f19307.gz";
      r2 = "Jp/5k/SHA256E-s23615359487--5ab2c931cbca6da0477114b1b024aaac20570a7f432a37882409101867a5a83e.gz/SHA256E-s23615359487--5ab2c931cbca6da0477114b1b024aaac20570a7f432a37882409101867a5a83e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Wk/qV/SHA256E-s27870479036--4836d334aa8d6f7e32e32f4c05412710a1b2824120f97e612dd580f8aff2928a.gz/SHA256E-s27870479036--4836d334aa8d6f7e32e32f4c05412710a1b2824120f97e612dd580f8aff2928a.gz";
      r2 = "K2/Kk/SHA256E-s30331567953--3598c3fe2248685a494f347c01432f603c778ffb32137cfca7501e9752105b13.gz/SHA256E-s30331567953--3598c3fe2248685a494f347c01432f603c778ffb32137cfca7501e9752105b13.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Zz/z1/SHA256E-s53434171339--adcb94ef548dd3e8dbced618bfa054dcb88f0e056fa8d5681401dacdacef6df9.gz/SHA256E-s53434171339--adcb94ef548dd3e8dbced618bfa054dcb88f0e056fa8d5681401dacdacef6df9.gz";
      r2 = "qQ/W7/SHA256E-s57744133369--8c097b8aafb4345ce055726eac7a475164cc9fc880fa2cc1ac5f1670fa48830c.gz/SHA256E-s57744133369--8c097b8aafb4345ce055726eac7a475164cc9fc880fa2cc1ac5f1670fa48830c.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "32/7x/SHA256E-s3710811526--06b1a751cf4c141fa4eeac6aff97864a8e0ff92c15c26edfde31d1fb54d4c235.gz/SHA256E-s3710811526--06b1a751cf4c141fa4eeac6aff97864a8e0ff92c15c26edfde31d1fb54d4c235.gz";
      r2 = "5j/4W/SHA256E-s3833436852--f0af885bbb8d32cbb42ed1bba3e616b9eadcec73ecaafc35dc5708dbd0dee38d.gz/SHA256E-s3833436852--f0af885bbb8d32cbb42ed1bba3e616b9eadcec73ecaafc35dc5708dbd0dee38d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "Meeting notes 2.4.20:\nThis has been reported to clinician \nThis mutation not so responsive to imatinib - need higher doses or change drug \nGIST is metastatic throughout her abdomen (also previously had HER2+ breast cancer but the GIST is the problem) \nDoesn't have SDHB mutation \nNo PDX yet \n\nMeeting notes 2019.11.21\n2 biopsies that processed for everything (PDX, SF, OCT, mince) - send both SF bits (from S1 and S2) to Kym with blood for urgent WGS.\nThese are all synchronous so not similar to most of our other multiple primary cases \n\n ";
      date_consented = "2019-10-30";
      tumour_type = "Other rare";
      tumour_details = "Multiple primary  Metastatic GIST  Her2 amplified Breast Cancer";
      case_details = "WGS clinical notes\n43 yo with aggressive synchronous multiple primary: breast ca ER/PR neg, HER2 amplified dx 2/8/19; Met GIST liver; BRCA panel no mutation found (BRCA1/2, ATM, PALB2, TP53); biopsy of peritoneal nodule was GIST\nMutation in cKIT and RB1\nOn Imatinib";
      patient_information_complete = "Incomplete";
      other_tumour_type = "GIST";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01230";
  }
