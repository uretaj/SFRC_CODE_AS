with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kj/px/SHA256E-s37383914669--a322654b44105bbbf729fcf2f01b26bde90da565e1a27904fcd9cf0093ad656b.gz/SHA256E-s37383914669--a322654b44105bbbf729fcf2f01b26bde90da565e1a27904fcd9cf0093ad656b.gz";
      r2 = "GG/6P/SHA256E-s39229000575--36b1cf69f3e39654cacb1979ce8cc3b364a7120734bc22e9b543635411b0c5e9.gz/SHA256E-s39229000575--36b1cf69f3e39654cacb1979ce8cc3b364a7120734bc22e9b543635411b0c5e9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "X5/kp/SHA256E-s81456531252--7219cb82c9461f4e46a5273c1fe4811f784fc5d49aba6f4d898a06939aaff447.gz/SHA256E-s81456531252--7219cb82c9461f4e46a5273c1fe4811f784fc5d49aba6f4d898a06939aaff447.gz";
      r2 = "Wv/73/SHA256E-s84588004217--eefa4bd12ab4b2e0ea66f8f509fcf1895da445d6d764ba863041926ca027d24f.gz/SHA256E-s84588004217--eefa4bd12ab4b2e0ea66f8f509fcf1895da445d6d764ba863041926ca027d24f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "6j/WK/SHA256E-s4507787441--e4db4e6ba6985c6b2ff9979607af39838fcf7484912f8f1220ec8abcb4aea9ed.gz/SHA256E-s4507787441--e4db4e6ba6985c6b2ff9979607af39838fcf7484912f8f1220ec8abcb4aea9ed.gz";
      r2 = "Pf/wf/SHA256E-s4474146970--ca3dc09ca5244a80cd725cf110a55505b626f7425667a126b91eb02e7b1c49d2.gz/SHA256E-s4474146970--ca3dc09ca5244a80cd725cf110a55505b626f7425667a126b91eb02e7b1c49d2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 08.12.2022\nDiscussed WGS report with SFRC data.\nKRAS and CDKN2A are common in MOC cases.\nCNV - a lot of deletions (nearly 100), but this is because of the CN models.\n\nClare's Meeting 26.08.2022\nWGS on OCT sections (slide 8 onwards, purity 70 - 80%)";
      d_case_summary = "Ovarian mucinous carcinoma";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Mucinous ov ca.    (Originally thought to be ovarian adenocarcinoma (possibly high-grade endometrioid?))";
      case_details = "30yo woman\n\n2022-07: Left ovarian malignancy discovered on ultrasound, following cyst known and present for 6mos.\n\n2022-08: Diagnosed mucinous ovarian carcinoma\nSurgery:  laparotomy, unilateral ovarian cystectomy +/- oophorectomy, +/- appendicectomy, +/- biopsies \n-Fresh tissue S1 (ovary) received in lab.\n-IHC positive: CK7 (diffuse strong), CK20 (focal in \n tumour epithelium), PAX8 and CEA (in tumour \n epithelium), \n-IHC negative: ER, PR, vimentin\n-pMMR";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01638";
  }
