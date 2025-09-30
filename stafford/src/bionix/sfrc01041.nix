with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "Xx/6x/SHA256E-s5449481610--6021f08bb0237c9c72c205c84518ccea2e90c5fe4ca0fbd5565eb9a2bc242b0e.gz/SHA256E-s5449481610--6021f08bb0237c9c72c205c84518ccea2e90c5fe4ca0fbd5565eb9a2bc242b0e.gz";
      r2 = "mW/6g/SHA256E-s5579935181--86b0ce4b7c0722912fce560416c275e406f3058252234f8fc766b3399b95b848.gz/SHA256E-s5579935181--86b0ce4b7c0722912fce560416c275e406f3058252234f8fc766b3399b95b848.gz";
    }
    {
      site = "B1";
      class = "normals";
      suffix = "_001";
      prefix = "fastqs/multi-pri/Sample_SFRC01041-B1/SFRC01041-B1_S3";
      hash1 = "e774a2a80bc3ea591a5a368c49e27b290c2b5b305a27164fcdda8e98fede935c59e55746fad8fcda50016829e3c649ef7ba6270320d8bf2b11f1b2b167ea2887";
      hash2 = "4955291e815ba8ff5f9e326f03891d06b5eda0493d8d1452764d670b386c4deba869b768cd8fcef837f26c72bbcd7cf6509449f99b8f42b21ba271d23f7f6580";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "4q/p7/SHA256E-s2326685220--055a43620ae03e0b1bb9392969343a51e8014fddfd7a530eb9c3ffcd1694aa7d.gz/SHA256E-s2326685220--055a43620ae03e0b1bb9392969343a51e8014fddfd7a530eb9c3ffcd1694aa7d.gz";
      r2 = "j7/23/SHA256E-s2364082513--332e235b97874ad59bc4a87387ca66f43e8838595d4ec1f107952636542a1c79.gz/SHA256E-s2364082513--332e235b97874ad59bc4a87387ca66f43e8838595d4ec1f107952636542a1c79.gz";
    }
    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "2G/Wk/SHA256E-s20115034005--09a6870d3930fd53cdf56d1df5d50e292e33a3dca0a898e2f7eca82556a623b4.gz/SHA256E-s20115034005--09a6870d3930fd53cdf56d1df5d50e292e33a3dca0a898e2f7eca82556a623b4.gz";
      r2 = "7X/jf/SHA256E-s20674247983--0f8b2c4a06e89ee45e3e0ab5377b5183a390362ab2c2d71181b99d139ba4f420.gz/SHA256E-s20674247983--0f8b2c4a06e89ee45e3e0ab5377b5183a390362ab2c2d71181b99d139ba4f420.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Broca meeting Clare/Amandine 07/07/2021\nSend SFRC01041_2.1 for Broca, priority cat 2\n\nRedcap meeting with Clare 09.03.2020\nSend for BROCA";
      date_of_death = "10/2017";
      date_consented = "2017-03-14";
      tumour_type = "HGS primary peritoneal";
      tumour_details = "HGS BRCA2 post PARPi, CRC, breast DCIS, ?lung (can't find path for this), liver mets";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 plus 1 or more non-malignant";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01041";
    capture = CREv2;
    predictNeoantigens = true;
  }
