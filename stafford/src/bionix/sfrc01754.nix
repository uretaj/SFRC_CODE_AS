with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kF/Qx/SHA256E-s20004733748--19e5da588a473543e4af2999d4bc2051311da09e6af24ff4c58adf3e0e10b84b.gz/SHA256E-s20004733748--19e5da588a473543e4af2999d4bc2051311da09e6af24ff4c58adf3e0e10b84b.gz";
      r2 = "PW/XQ/SHA256E-s21875670118--a7c128664e70820ac2231dea9768297ff6c2e9f58a4d9407305553cba89686d7.gz/SHA256E-s21875670118--a7c128664e70820ac2231dea9768297ff6c2e9f58a4d9407305553cba89686d7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VP/3M/SHA256E-s19367246412--06a3eb3cd24f6bf23d441c6d613f8bff9b019fdeb2c7f83cd1e842a89840f169.gz/SHA256E-s19367246412--06a3eb3cd24f6bf23d441c6d613f8bff9b019fdeb2c7f83cd1e842a89840f169.gz";
      r2 = "98/M7/SHA256E-s21135346256--687ec20e6f64c3c77f2029f0fc683838744e16948fdc82818c3238636ec4829e.gz/SHA256E-s21135346256--687ec20e6f64c3c77f2029f0fc683838744e16948fdc82818c3238636ec4829e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "kp/fm/SHA256E-s99139427668--190ac4f314d2d0695c4888d568a922ec8404655042da44dff073cd815b828b75.gz/SHA256E-s99139427668--190ac4f314d2d0695c4888d568a922ec8404655042da44dff073cd815b828b75.gz";
      r2 = "41/Qz/SHA256E-s109910329740--1faf128d59ca5e9f0571afe3449f9d345b63d722090c43a9deaf99e5a9951861.gz/SHA256E-s109910329740--1faf128d59ca5e9f0571afe3449f9d345b63d722090c43a9deaf99e5a9951861.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Jg/fv/SHA256E-s3572717033--74e996ab660835af0bca2f96df3bee001442c0bc10f15abda70c4303773f7dbc.gz/SHA256E-s3572717033--74e996ab660835af0bca2f96df3bee001442c0bc10f15abda70c4303773f7dbc.gz";
      r2 = "vV/w6/SHA256E-s3561234045--627f6dd310e6821590271c392dfa36df6d3f931922e3c12b2a1a6778afd4b1d2.gz/SHA256E-s3561234045--627f6dd310e6821590271c392dfa36df6d3f931922e3c12b2a1a6778afd4b1d2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Sample meeting with Clare 2023. 06.15\nPlan on fresh tissue S1: WGS on OCT! DNA + RNA ";
      d_case_summary = "Cervical mass arising during pregnancy- CNS embryonal tumour with multi layered rosettes (ETMR).\nPregnant (31/40), APH (since 23/40), quickly enlarging posterior endocervical mass.";
      date_consented = "2023-05-05";
      tumour_type = "Cervical other";
      tumour_details = "CNS embryonal tumour with multi layered rosettes (ETMR)";
      case_details = "39 years old female \n\n2023-04:\tRapidly growing fibroid during pregnancy, early delivery planned, to allow treatment, Biopsy \n\t\t\tIHC negative: CD99, CK20 , EMA, GATA3, AFP, CD30, hGC, PLAp, GFAP, ER, PR, Chromogranin, TTF1, S100, Melan A, WT1, inhibin, myogenin and P16. \n\t\t\tINI1 retain, P53 WT \n\t\t\tIHC positive: synaptophysin, PAX8, desmin, cKIT, NSE and TLE1 \n\t\t\tVery focal paranuclear staining for CK7, AE1/3 \n\t\t\tMyoD1, minimal focal staining \n\t\t\ttumour cells are positive for vimentin, CD56, OCT4  \n\n\t2023-05:\t TAH/BS, initial diagnosis, primitive embryonal cancer  \n\t\t\tIHC positive: NSE, GFAP, synaptophysin \n\t\t\tBlood B1 and fresh tissue S1 received \n\nTSO 500 only reports a Vus CTNNB1\n\n2023-06: Nodal recurrence on PET\nBegan first line treatment on BEP (ciSplatin / Etoposide / Bleomycin) ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "08May23: Apr23 Sample requested from RWH pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01754";
  }
