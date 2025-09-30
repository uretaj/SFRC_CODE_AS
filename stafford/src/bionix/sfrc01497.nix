with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9Q/4m/SHA256E-s6662506904--6b7e526520293d90eacdc1965b1481d8d2beefae614f84f5e333ebd6f6cb9ded.gz/SHA256E-s6662506904--6b7e526520293d90eacdc1965b1481d8d2beefae614f84f5e333ebd6f6cb9ded.gz";
      r2 = "f2/G1/SHA256E-s7010239735--4854d387c808e9c128505abeb65d0377fc3100a37b8975be4a4135bbf3dfd346.gz/SHA256E-s7010239735--4854d387c808e9c128505abeb65d0377fc3100a37b8975be4a4135bbf3dfd346.gz";
    }
    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "9q/3m/SHA256E-s21349523479--ef0753e1cb9c7bae82fcb1467b48fcc64863bb57f37bf35bcd89c706005b0183.gz/SHA256E-s21349523479--ef0753e1cb9c7bae82fcb1467b48fcc64863bb57f37bf35bcd89c706005b0183.gz";
      r2 = "VJ/57/SHA256E-s21752073855--2c188acf935fbbe9ec1cf72b16b9f537ae555a631ceb9341b5b5fa34a97c4661.gz/SHA256E-s21752073855--2c188acf935fbbe9ec1cf72b16b9f537ae555a631ceb9341b5b5fa34a97c4661.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block B5\n\nRC Meeting 02.03.2023\nDiscussed WES Report - Block B5\nMany somatic mutations and therapy options:\n-ARID1A - PARPis? Gemcitabine? ATARi in London (ATRi +/- PARPi). \n-ARID1A and PIK3CA very common in OCCC \n-Trial of PI3Ki + Olap? Letter from June 2022 has not mentioned any chemo or recurrence. \n-Patient from Darwin, would be seen next in Adelaide. If ATRi is not possible, a PARPi?  Monash PIK3 + talazoparib. Or could go to Perth for a trial? ATR/PARPi (Linear) **Damien to ask Tarek** \n\nClare's Meeting 30.06.2022\nWES on FFPE block B5\n\nMeeting with Clare 24.02.2022\nFresh tissue S1 and S2 no tumour, Devindee to recall a FFPE block with tumour from the surgery. Once received do WES ";
      d_case_summary = "Clear cell carcinoma of the right ovary, diagnosed at laparoscopic Right salpingo-oophorectomy 16/11/21";
      date_consented = "2021-12-12";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell carcinoma of the ovary";
      case_details = "40F\n\n2021-11: Malignancy via Laprascopic RSO. Right ovarian cyst fixed and blocked (Block B5). No IHC performed.\n\n2021-12: Diagnosed high grade ovarian clear cell carcinoma (stage at least IC1, unstaged).\nSurgery: Hysterectomy, LSO, peritoneal resection, omentectomy, iliac and paraaortic lymph node dissection, \nFresh tissue S1 and S2 received, no tumour present in either sample. Blood B1 received.\nIHC positive: AE1/AE3 (strong), CK7 (strong), PAX8 (weak to moderately strong)\nCD68 showed weak positive, is taken as aberrant staining.\nAtypical cells strongly positive for keratin stains. Malignant in nature.\n\n2022-05: Block B5 (right ovarian cyst) received.\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01497_ARCPortalLetter_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "17/05/2022: Nov and Dec 2021 samples requested from Royal Darwin Hospital pathology by Devindee. \n31/05/2022: Nov 2021 block received from RDH pathology. \nNote: Dec 2021 sample has no tumour so has not been sent. ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01497";
    capture = CREv2;
  }
