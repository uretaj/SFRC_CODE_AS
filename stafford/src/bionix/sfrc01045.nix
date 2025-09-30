with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jq/f0/SHA256E-s2610811053--ccbc3808383a9e053e9b93d99d7c80ed7e997563c15f58454e947b880fa47140.gz/SHA256E-s2610811053--ccbc3808383a9e053e9b93d99d7c80ed7e997563c15f58454e947b880fa47140.gz";
      r2 = "JF/XV/SHA256E-s2792175093--a93b4c448c33c67f509c1d49e8aff8681d7b76c5f5b625498d5f695c174cdaac.gz/SHA256E-s2792175093--a93b4c448c33c67f509c1d49e8aff8681d7b76c5f5b625498d5f695c174cdaac.gz";
    }
    {
      site = "1F_1";
      class = "tumours";
      pdx = false;
      r1 = "f5/k3/SHA256E-s2851094870--b4eb11baac811cd83394130728fb975f2cf35d85a4762d7c5f9bd4a9c0405e0a.gz/SHA256E-s2851094870--b4eb11baac811cd83394130728fb975f2cf35d85a4762d7c5f9bd4a9c0405e0a.gz";
      r2 = "WG/q3/SHA256E-s3091725357--4a87ee863dadd9403fc59c6c61483fb490efe4e7414dc882d43932ee24ad4c14.gz/SHA256E-s3091725357--4a87ee863dadd9403fc59c6c61483fb490efe4e7414dc882d43932ee24ad4c14.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Broca meeting Clare/Amandine 07/07/2021\nSend SFRC01045_1F for Broca, priority cat 1\n\n\nRC Meeting notes 29.10.2020\nDiscussed WES report. See analysis summary.\nMinimal report needed (patient is in 70s and cured). If further clinical information needed (if relapses), can contact SFRCP. \n\nMeeting notes 17.08.2020 (Clare and Ratana)\nAsk Gayanie and Gen/Holly for more direction of where to dissect. Is a true super responder. Complete response to carbo/taxol! \nMake DNA, do WES and BROCA, neoantigen analysis \n\nRedcap meeting with Clare 09.03.2020\nGet Josh to try to recall a block, might be difficult has surgery was 10 years ago";
      date_consented = "2017-05-02";
      tumour_type = "Clear cell gynae other";
      tumour_details = "metastatic clear cell endometrial carcinoma";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Block requested from RCH labs via email on 12-Mar-2020 by Josh\n\n2008 Clear Cell tissue 08979529 1F received 10/07/2020 by Joshua";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01045";
    capture = CREv2;
  }
