with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "qP/Xx/SHA256E-s4002000244--43cd3b4303b97f7fd38639445cb25e36b5165a1ae325acf4a1576c34e6f7164b.gz/SHA256E-s4002000244--43cd3b4303b97f7fd38639445cb25e36b5165a1ae325acf4a1576c34e6f7164b.gz";
      r2 = "MZ/qW/SHA256E-s4311754449--53aaae377a47ead66716d03972f3fc91ca858df9ffb7176305d69b80563a904a.gz/SHA256E-s4311754449--53aaae377a47ead66716d03972f3fc91ca858df9ffb7176305d69b80563a904a.gz";
    }
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "8G/10/SHA256E-s3187410378--874504f3865a14af7576843d8c67af2ff3441767a75a340bd2b9d1babe6f6f8d.gz/SHA256E-s3187410378--874504f3865a14af7576843d8c67af2ff3441767a75a340bd2b9d1babe6f6f8d.gz";
      r2 = "Wq/Fj/SHA256E-s3448210560--11a181cb36b3e61f3d20d1bc26d18ffcc97e97c11387ceed2e5138a2f6daf04e.gz/SHA256E-s3448210560--11a181cb36b3e61f3d20d1bc26d18ffcc97e97c11387ceed2e5138a2f6daf04e.gz";
    }
    {
      site = "B1";
      class = "normals";
      r1 = "Zj/Xj/SHA256E-s2628502809--fd54fc1f79d64f82e6b869270cb20251715992fa4b6b444fb4bbb6b116d2c842.gz/SHA256E-s2628502809--fd54fc1f79d64f82e6b869270cb20251715992fa4b6b444fb4bbb6b116d2c842.gz";
      r2 = "8G/76/SHA256E-s2702071757--8b6d17258470c4fe36fe531f855698f8d4727d670132dc9cdf2ace0f1b881168.gz/SHA256E-s2702071757--8b6d17258470c4fe36fe531f855698f8d4727d670132dc9cdf2ace0f1b881168.gz";
    }
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "vG/8Q/SHA256E-s2054998040--cd0c9b51a50cc75960b280201ffe64dd1994dc79c57a9e1966c47ea2b4742a7b.gz/SHA256E-s2054998040--cd0c9b51a50cc75960b280201ffe64dd1994dc79c57a9e1966c47ea2b4742a7b.gz";
      r2 = "zG/G5/SHA256E-s1827668348--fa4b82e9ed0bebd2c61219a69c1e3436548f160c1a12134dd05387b4dbbd3a43.gz/SHA256E-s1827668348--fa4b82e9ed0bebd2c61219a69c1e3436548f160c1a12134dd05387b4dbbd3a43.gz";
    }
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "9K/ZW/SHA256E-s988091475--76a4e29edf2dbef4602c6dc332e9bb666779f7573f2ea50ccbd602d5c4afff74.gz/SHA256E-s988091475--76a4e29edf2dbef4602c6dc332e9bb666779f7573f2ea50ccbd602d5c4afff74.gz";
      r2 = "0w/zV/SHA256E-s996671615--5b5e8daec8bd811eb6b90cad25371d6eb48b5e0603ee26ac00ebf5c67815c769.gz/SHA256E-s996671615--5b5e8daec8bd811eb6b90cad25371d6eb48b5e0603ee26ac00ebf5c67815c769.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      d_case_summary = "papillary thyroid ca, clear cell renal ca, prostate ca";
      date_consented = "2018-03-15";
      tumour_type = "Thyroid cancer";
      tumour_details = "papillary thyroid ca, clear cell renal ca, prostate ca";
      pre_analysis_mutations = "Meeting notes 2019.12.05\nSend all blocks for WES (wait until after CCV grant results) \nIf predisposition gene found in WES add molecular subtype project";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Thyroid block requested on 28Oct19 by (?) Josh? From Melbourne pathology.\n\nReceived 06Nov19 (BM)";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01072";
    capture = CREv2;
  }
