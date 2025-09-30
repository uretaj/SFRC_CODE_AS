with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/s3/batch3/PRJ190644_SFRC01068_B1_S12";
      suffix = "_001";
      sha256-1 = "4859309dd4a8d091bbe561b0129f4ec864f2f2dec658aaa9bd8dcf4802ca8d43";
      sha256-2 = "d65288b60ddf4c43d97781c5e3f510a92f6ee91f320ad14c8ec1feb27c11214f";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "grimmond/s3/batch3/PRJ190643_SFRC01068_S1_S11";
      suffix = "_001";
      sha256-1 = "baeae4c91b540eb777c521968b3eaa4b39285c62a2b9396f429cd45da1bd2214";
      sha256-2 = "248d9340ea7ff01ad03158aa2804f729ae96ac7f78a633492f2ca1f8453183fa";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "ECS";
      meeting_discussions_follow_up = "Redcap meeting Clare/Amandine 16.03.2020\nSend this case for BROCA ";
      date_of_death = "4/2018";
      date_consented = "2018-02-20";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "presumed metastatic carcinosarcoma of the endometrium (endothelial component serous carcinoma, sarcomatoid component at least 50%)";
      pre_analysis_mutations = "Histology Feb 2018: diffuse and strong positive p53 and vimentin staining. no CK7 staining";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01068";
  }
