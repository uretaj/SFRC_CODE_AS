with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "JX/Pm/SHA256E-s709475576--8c64990c9d55c003fb5cb9d8f87ab077d32841f5cbde8ca9deb61df6dd2117f3.gz/SHA256E-s709475576--8c64990c9d55c003fb5cb9d8f87ab077d32841f5cbde8ca9deb61df6dd2117f3.gz";
      r2 = "k3/k0/SHA256E-s717949825--f66d28f1ca3126f7493a1468b6ec1ac8d558c8bf94712fdcd32cad6e5a2a3eea.gz/SHA256E-s717949825--f66d28f1ca3126f7493a1468b6ec1ac8d558c8bf94712fdcd32cad6e5a2a3eea.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "pW/X9/SHA256E-s716458239--663e0f01641cd6f79092befc295ffdddc5a9f04c24a760be352d0fad4029bfb8.gz/SHA256E-s716458239--663e0f01641cd6f79092befc295ffdddc5a9f04c24a760be352d0fad4029bfb8.gz";
      r2 = "vG/KQ/SHA256E-s730017782--8b1cf7f4a671e278cb27b8f66fa3dafe42bea9f29e91ec9e580ec04b5171d42f.gz/SHA256E-s730017782--8b1cf7f4a671e278cb27b8f66fa3dafe42bea9f29e91ec9e580ec04b5171d42f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "55/xJ/SHA256E-s708275535--e24dfc7191901366463f547dbf7bfa75bacf00e3b0d1007571ca96f910cd5680.gz/SHA256E-s708275535--e24dfc7191901366463f547dbf7bfa75bacf00e3b0d1007571ca96f910cd5680.gz";
      r2 = "G4/Vz/SHA256E-s720457667--a4e95fe0e6191b646a5a868ec8b6f8ce9ddc7e3571e67b6df915af4b336b0319.gz/SHA256E-s720457667--a4e95fe0e6191b646a5a868ec8b6f8ce9ddc7e3571e67b6df915af4b336b0319.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8z/wf/SHA256E-s774605584--0b9c3d3de2c25239e9a325cbbf31eaa7be5a8b956cbf4931fb07023a5483f366.gz/SHA256E-s774605584--0b9c3d3de2c25239e9a325cbbf31eaa7be5a8b956cbf4931fb07023a5483f366.gz";
      r2 = "z4/11/SHA256E-s794143473--c4c28869c202eee21e29cfa9abd1cff7e1d128184b2373aa1d6ab2453316b5d6.gz/SHA256E-s794143473--c4c28869c202eee21e29cfa9abd1cff7e1d128184b2373aa1d6ab2453316b5d6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 29.06.2023\n-WES on FFPE Block A15 only, not enough DNA from B4. \n-From now on, no WES on GCTs which already have a panel report done.\n\nClare's Meeting 23.03.2023\n-Both FFPE blocks A15 (baseline) and B4 (recurrence) for WES. \n-Ask Matt and Kristy for another paired WES case ";
      d_case_summary = "Recurrent granulosa cell malignancy of the left ovary. Initial cytoreduction 2019. Secondary cytoreduction 2020 due to recurrent disease. Now with rising inhibin B. Has been referred for MoST. For enrolment into Stafford Fox granulosa cell sub-study.";
      date_consented = "2021-01-10";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "granulosa cell malignancy of the left ovary";
      case_details = "2019-07: Dx Stage IIIC GCT\nSurgery: Hysterectomy, LSO, R salpingectomy (FFPE. Block A15 - serosa nodularity)\nIHC Positive: Inhibin (focal), calretinin, WT-1\nIHC Negative: CK5/6, SMA, EMA, CD10\n\n2019-08 - 2021-04: Hormone therapy: Zoladex and letrozole (Carbo/taxol/BEP declined)\n\n2020-07: Recurrence, peritoneum and R ovary (FFPE Block B4)\nIHC positive: Inhibin, WT1, calretinin\nIHC negative: AE1/3, CD10\nEMA: equivocal.\n\n2021-04: Recurrence, pelvic mass\nChemotherapy: Carboplatin/Paclitaxel x6, with dose reduction from cycle 5. Trialled Provera also but did not tolerate.\n\nFoundationOne report: FOXL2 and MLL2 mutations\n\n2022-05: Rising inhibin levels; PET negative.\n\n2021-06: Blood B1 received.\n\n2023-03: FFPE Blocks A15 (serosa nodularity) and B4 (right ovary and peritoneum) received. \n\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07Feb2023: 2019 Sample request from St George by Monica\n1Mar2023: 2019 sample received by Monica";
    };
    inherit samples;
    name = "SFRC01362";
    capture = TwistV2HR;
  }
