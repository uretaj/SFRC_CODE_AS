with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "Q1/Gx/SHA256E-s1576118364--ea441ccd1ac00f78f0b757c8a3b3a62f265e2f92816926830629178ede0f306a.gz/SHA256E-s1576118364--ea441ccd1ac00f78f0b757c8a3b3a62f265e2f92816926830629178ede0f306a.gz";
      r2 = "60/Z9/SHA256E-s1592346827--baa3f9fc73a65a5396aef268cb3c5daa1090e580a2d30d23969d44b76d09a195.gz/SHA256E-s1592346827--baa3f9fc73a65a5396aef268cb3c5daa1090e580a2d30d23969d44b76d09a195.gz";
    }
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "M3/wZ/SHA256E-s1573463372--58a9ecddd0608326a5a07f32d11739a81f4da62305572a6b7501941aeee0bac9.gz/SHA256E-s1573463372--58a9ecddd0608326a5a07f32d11739a81f4da62305572a6b7501941aeee0bac9.gz";
      r2 = "pF/0V/SHA256E-s1597353135--a80bdddf391c2684a926c6f1ac44dfc8e71b14b34097b7c8b2c26893003287a5.gz/SHA256E-s1597353135--a80bdddf391c2684a926c6f1ac44dfc8e71b14b34097b7c8b2c26893003287a5.gz";
    }
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "16/Jf/SHA256E-s1581244023--a54339c6db2b071622c401b1b157da2932bdca4d9041a6dc78af832697f97a37.gz/SHA256E-s1581244023--a54339c6db2b071622c401b1b157da2932bdca4d9041a6dc78af832697f97a37.gz";
      r2 = "6g/1W/SHA256E-s1603341857--5b891530abc85c93d6e312116b7eecd47ac0e2d017fb9c04ddf29142e56701fb.gz/SHA256E-s1603341857--5b891530abc85c93d6e312116b7eecd47ac0e2d017fb9c04ddf29142e56701fb.gz";
    }
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "7v/W0/SHA256E-s1471262121--9a1d6c8f8962a06f66193233a011e7e65aec04151890b86e4ff1116bc47555b8.gz/SHA256E-s1471262121--9a1d6c8f8962a06f66193233a011e7e65aec04151890b86e4ff1116bc47555b8.gz";
      r2 = "zM/jF/SHA256E-s1501868834--d4352b1fd5255f96a5e733e6f4843cc543105e9fa4ee8fbea24fc0aa79b0ea24.gz/SHA256E-s1501868834--d4352b1fd5255f96a5e733e6f4843cc543105e9fa4ee8fbea24fc0aa79b0ea24.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9F/vk/SHA256E-s681073322--fe952eb73f681b680e49f9a380971ef1a46e44e217116fde4c08fa5ee72ddeb2.gz/SHA256E-s681073322--fe952eb73f681b680e49f9a380971ef1a46e44e217116fde4c08fa5ee72ddeb2.gz";
      r2 = "3J/m6/SHA256E-s677589302--baf2b535eca86e56a34648f0ff250e66b9511b418b9d65fddd70000bca1efc0b.gz/SHA256E-s677589302--baf2b535eca86e56a34648f0ff250e66b9511b418b9d65fddd70000bca1efc0b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jW/z3/SHA256E-s682585510--d03ce1437f7e5bed469772b92de4010e63c730f4ed94ecba0844e002fb58a69b.gz/SHA256E-s682585510--d03ce1437f7e5bed469772b92de4010e63c730f4ed94ecba0844e002fb58a69b.gz";
      r2 = "31/16/SHA256E-s683041689--9c82a59db536ba3149bc6e8cab8787ee540552d0c21c600782d2709d00d09a5b.gz/SHA256E-s683041689--9c82a59db536ba3149bc6e8cab8787ee540552d0c21c600782d2709d00d09a5b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9Q/GM/SHA256E-s678762670--57ade3e442ac0352619d53b20b57707bd3cd04a1a860f9a036cb0040fb735740.gz/SHA256E-s678762670--57ade3e442ac0352619d53b20b57707bd3cd04a1a860f9a036cb0040fb735740.gz";
      r2 = "W3/w6/SHA256E-s677493173--8ed74ef7764c4e469939e68ec3755746da3ddba3a844d49f13eef90e5e946fc9.gz/SHA256E-s677493173--8ed74ef7764c4e469939e68ec3755746da3ddba3a844d49f13eef90e5e946fc9.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GF/M6/SHA256E-s709497674--365246110f095c14a2679c68d70f613bef681c7bbed21091372ad0eae3e48827.gz/SHA256E-s709497674--365246110f095c14a2679c68d70f613bef681c7bbed21091372ad0eae3e48827.gz";
      r2 = "gQ/65/SHA256E-s712244814--9e63984ee1b2bf991c23164b88b6196cd5f7fe3ff520ca13acc7168e8abdfdaa.gz/SHA256E-s712244814--9e63984ee1b2bf991c23164b88b6196cd5f7fe3ff520ca13acc7168e8abdfdaa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 14.3.24:\nReport TSC2. Check with Damien. \n\nClare's sample meeting 29.06.2023Plan on FFPE block A1: To do WES. \nBriony had confirmation from treating clinician that NO new fresh tissue is planned for the future, proceed with WES ";
      blood_recall_history = "01Aug23 - Call to organise blood expected collection date 07 Aug";
      d_case_summary = "74F with recurrent endometrial stromal sarcoma. Initial TAH BSO 1986 then Provera. Rsection R pelvic fossa mass 1997 continued Provera further until approx 10 years. Off treatment for approx 15 years when presented 6/2021 with R medial pelvic/groin pain over 12 months. MRI 72mm R pelvic mass and lung mets. Lung biopsy confirmed met low grade ESS, positive CD10, ER and PR. Started Letrozole 8/2021 but caused depressive side effects, switched back to Provera 9/2022. Feb/ 2022 palliative RT to the pelvic mass and R groin nodal for progression with R hydronephrosis from pelvic mass (planned for stenting). Minimal response to RT.";
      tso500_external = "SFRC01762_MoST_Panel_28Jun2023_Redacted.pdf";
      date_consented = "2021-09-22";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Metastatic endometrial stromal sarcoma (ESS)";
      case_details = "73-year-old female Metastatic Recurrent endometrial stromal sarcoma  \n\n1986 Laparotomy to TAHBSO Started Provera  \n\n1997 Recurrence, Laparotomy/right pelvic fossa mass resected Continued Provera \n\n 2006 Patient self-ceased Provera  \n\n2021-07 \tMetastatic recurrence (pelvic mass, lungs), FFPE block A1 received  \nIHC positive: CD10, ER, PR \nIHC: STAT6 neg \n\n2021-08\tCommenced Letrozole, intolerance \n\n2021-08\tSwitched to Provera \n\n2022-02\tPalliative radiotherapy, minimal response \n\n\t\tReferal to ARC, if a biopsy is planned, transport of fresh tissue to the Stafford Fox Rare Cancer Program may be arranged for whole genome sequencing. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-05-26";
      portal_letter = "SFRC01762_ARCSummary_25May2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "05Jun23: Jul21 sample requested from ACT pathology by Monica \n07Jun2023: Fax received to say Jul2021 tissue has been shipped.\n14Jun23: Jul21 sample received from ACT pathology by Monica ";
    };
    inherit samples;
    name = "SFRC01762";
    capture = TwistV2HR;
  }
