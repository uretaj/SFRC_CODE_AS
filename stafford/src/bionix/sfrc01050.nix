with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "xq/jQ/SHA256E-s20171107682--e6262266117e0ce140f162d0d7985b89950bcffd88febbc75ed298bf1f64ac88.gz/SHA256E-s20171107682--e6262266117e0ce140f162d0d7985b89950bcffd88febbc75ed298bf1f64ac88.gz";
      r2 = "Mq/k0/SHA256E-s21205812194--25fa9570b006a42e0754136cc684b1a8c3ff3f50455f653b1dc0c2937eb2d70a.gz/SHA256E-s21205812194--25fa9570b006a42e0754136cc684b1a8c3ff3f50455f653b1dc0c2937eb2d70a.gz";
    }
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "Pw/FM/SHA256E-s14180206730--0c9aa7c5a95967542c83d992173713c6341606d6dd3f6382a074d59d213714a1.gz/SHA256E-s14180206730--0c9aa7c5a95967542c83d992173713c6341606d6dd3f6382a074d59d213714a1.gz";
      r2 = "vz/pm/SHA256E-s14585048678--0df6f65442fd9704f40d96a1bcea7ca0f4ad9ab865a566bcd16f7db89ffb8448.gz/SHA256E-s14585048678--0df6f65442fd9704f40d96a1bcea7ca0f4ad9ab865a566bcd16f7db89ffb8448.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "18/6f/SHA256E-s3766565412--e07fbc3c5ac907ad2fed2d682408b6ce5d6dbc58caf69484bb2d6a8ce957f115.gz/SHA256E-s3766565412--e07fbc3c5ac907ad2fed2d682408b6ce5d6dbc58caf69484bb2d6a8ce957f115.gz";
      r2 = "xK/06/SHA256E-s3925210608--8dcb75be8a9eefb1c16744884c6f4a4e9a3d16ef4aa680bd09f313e74aaae1fe.gz/SHA256E-s3925210608--8dcb75be8a9eefb1c16744884c6f4a4e9a3d16ef4aa680bd09f313e74aaae1fe.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare meeting 18.06.2020\nExtract DNA from blocks to do BROCA. Kristy to check with Clare whether to do WES also.\n\nRedcap meeting with Clare 09.03.2020\nSend FFPE DNA 1B for Broca";
      d_case_summary = "Breast, SqC insitu oesophagus on Barretts, primary peritoneal ca; significant FHx";
      date_consented = "2017-08-03";
      tumour_type = "HGS primary peritoneal";
      tumour_details = "Breast Cancer (ILC) 2005, Squamous CC in situ oesophagus on Barretts epithelium (not invasive) 2013, Primary Peritoneal Carcinoma 2016;";
      case_details = "FHx oesophageal and breast cancer";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 plus 1 or more non-malignant";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01050";
    predictNeoantigens = true;
  }
