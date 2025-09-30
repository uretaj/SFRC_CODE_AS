with import ./milton-slurm.nix {}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L1901031_S1";
      suffix = "_001";
      site = "S1";
      class = "tumours";
      sha256-1 = "fe28c602d223eb6c74e3d8746be11d6933e1e24ee43fe19f99e81280d1ecf818";
      sha256-2 = "363f024a47332c0532e96a51499b77535095b9dff91e3d47e8d4df563f6a154f";
    }
    {
      prefix = "grimmond/s3/batch8/L1901031_topup_S2";
      suffix = "_001";
      site = "S1";
      class = "tumours";
      sha256-1 = "3814b368cd7ce5744466c4e0645c4115aa84f39e5094c330ddc419539495fbb1";
      sha256-2 = "67b0cd0f7af82ffd44b05de7078dc4715d8b0c5d02d6d36554bed0ca14ea8022";
    }
    {
      prefix = "grimmond/s3/batch8/L1901032_S2";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "608c8cc2d93ba2274ea15d8e8b7a3d76a8d07ee1f43406ea5b7526ac25d86e79";
      sha256-2 = "502a16dbc7582f56605109a3619a79253d27d6c0b293b2888128e945293d6f7a";
    }
    {
      prefix = "grimmond/s3/batch8/L1901032_topup_S3";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "a316f5539f9a3fca94da52914e8098e3a9658eb839981ee05e8ae3870c146c02";
      sha256-2 = "b14851170d4534d26fce7e62dca490741fcf3b19790aeb849ed1e64ccf505648";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC Meeting notes 2020.07.09\nCould do Nanostring on any relapse tissue. Could compare this with Never Responders (this one is a good responder). For Gen. \nEpigenetic + Immunotherapy potential future trial option \n\nMeeting notes 2019.12.05\nDefinitely go ahead with WGS \n\nMeeting notes 2019.10.24\nImportant to do WGS on this sample.\nH&E is not showing pure tumour. Organise OCT on snap frozen from S1, get review by Gayanie and microdissect.";
      date_consented = "2019-09-09";
      tumour_type = "Gynae NET";
      tumour_details = "Stage 3 Small Cell Neuroendocrine Carcinoma of Cervix.";
      case_details = "Stage IIIIB small cell neuroendocrien carcinoma of cervix, pelvic USS on 24/08/2019 showing neoplasm, diagnosed on D&C on 26/08/2019, MRI on 28/08/2019 showing Stage IIIb\n\nCTx with carboplatin and etoposide (6 cycles on a 3-weekly basis), and brachytherapy\n\nPET on 6/9/2019 shows nodal disease, but no mets\n\nWGS clinical notes \nSmall cell neuroendocrine cancer of the cervix, young, from Geelong, first diagnosis";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01222";
  }
