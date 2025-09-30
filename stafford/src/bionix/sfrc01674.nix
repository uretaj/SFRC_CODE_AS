with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "f4/Z0/SHA256E-s2369187795--1c3cf8c4dc591d6ef124716218f0aa268b144277a5c8b591f4aa599e2dde1bbb.gz/SHA256E-s2369187795--1c3cf8c4dc591d6ef124716218f0aa268b144277a5c8b591f4aa599e2dde1bbb.gz";
      r2 = "FJ/80/SHA256E-s2339287867--ab661117257ff05f587e6e577c99f6a27fd27535c5da91caffff88e13ab24d2f.gz/SHA256E-s2339287867--ab661117257ff05f587e6e577c99f6a27fd27535c5da91caffff88e13ab24d2f.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "1x/P2/SHA256E-s2417997678--fb55ebcb64e04a3f2b68c7bd32e27b9e256f913aca63e9e730eda206185de59c.gz/SHA256E-s2417997678--fb55ebcb64e04a3f2b68c7bd32e27b9e256f913aca63e9e730eda206185de59c.gz";
      r2 = "WK/Pw/SHA256E-s2392637098--91714558f5cd910c043ea46510b73c259d10b025983e72b1b6d29003ea09d3f2.gz/SHA256E-s2392637098--91714558f5cd910c043ea46510b73c259d10b025983e72b1b6d29003ea09d3f2.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FQ/xP/SHA256E-s1386590149--7e527c496e1b70b316a52d171a7e05525c8a667325be0edbdbbcdb3fbb4e7777.gz/SHA256E-s1386590149--7e527c496e1b70b316a52d171a7e05525c8a667325be0edbdbbcdb3fbb4e7777.gz";
      r2 = "FW/9x/SHA256E-s1420572337--318b52c5bb02d2babbdf76440cf5e12c17054e1b6a2165740824c8a7b300e516.gz/SHA256E-s1420572337--318b52c5bb02d2babbdf76440cf5e12c17054e1b6a2165740824c8a7b300e516.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Zw/1v/SHA256E-s1461769374--f9341e9590b9dbd05e6b05937cff68dd8171269cff39b95b72a1472507fa68a4.gz/SHA256E-s1461769374--f9341e9590b9dbd05e6b05937cff68dd8171269cff39b95b72a1472507fa68a4.gz";
      r2 = "wf/6g/SHA256E-s1501189059--508d35e63abb8e37acf4318007d1d4e702dab79cbb757e9cd0adf798c8f4ae7f.gz/SHA256E-s1501189059--508d35e63abb8e37acf4318007d1d4e702dab79cbb757e9cd0adf798c8f4ae7f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.11.2023\n- Germline: pathogenic RET1 (already knew about this) \n- Somatic: pathogenic MSH2 \n- TMB = 908 (>20% is 7) - but not MSI \n- Request MMR IHC on block (MMR IHC cannot be done on recurrent sample, need more sections from the WES diagnostic sample) \n- Don't issue report until IHC back. \n\nClare's Meeting 20.04.2023\nReviewed FFPE Block 1D\n30% tumour in large region. Still no blood--Briony/Mandy to organise blood so we can submit this tissue for WES.\n\nClare's Meeting 22.12.2022\nFFPE Block 1A has tiny areas of tumour, 50% purity, not enough for sequencing. Rachael to email Devindee to write a new letter, requesting another block, since this one is inadequate. (Emailed 03.01.2023). Need bloods.";
      blood_recall_history = "21Apr23 - Message left\n26Apr23 - spoke to pt, have sent blood pack. pt to confirm when it arrives and to provide the name of the path clinic via text\n16May23 - Follow up text";
      d_case_summary = "Stage IV Medullary Thyroid Cancer - ?De novo varient parents and daughter was tested and all have not had RHET N2 variants";
      date_consented = "2022-10-28";
      tumour_type = "Thyroid cancer";
      tumour_details = "Stage IV Medullary Thyroid Cancer";
      case_details = "40 years old male  \n\nDx Stage IV Medullary Thyroid Cancer \n\n2007-04: Medullary thyroid carcinoma, total thyroidectomy, block 1D received \n\tIHC positive: calcitonin, CEA, synaptophysin \n\tIHC negative: somatostatin, VIP \n\n2022-03: Right paratracheal lymph node biopsy. Block 1A fixed and blocked. \nIHC positive: synaptophysin, chromogranin, calcitonin \nMorphology and immunoprofile is consistent with metastasis from known medullary carcinoma of the thyroid. \n\n2022-06: Commenced Cabozanitinib \n\n2022-10: Enrolled into SFRCP\n\n2022-12: Sections from FFPE Block 1A received. \n\n \n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2022-11-02";
      portal_letter = "SFRC01674_ARCPortalLetter_17Oct2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/11/2022: 2022 sample requested from SA Pathology by Devindee.\n01/12/2022: 2022 slides received.\n 12Feb2023: 2022 sample requested from SA pathology by Monica - Block 1A was the only one they had so was unable to process this request.\n6Mar23: April 2007 sample requested from SA pathology by Monica \n23Mar23: April 2007 sample received from SA pathology by Monica \n\n";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "RET";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01674";
  }
