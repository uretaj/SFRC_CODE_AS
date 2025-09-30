with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "F1/VW/SHA256E-s3851193574--aaeb1173c9d41b7fefd7bc1cf1f1f35c40fdb7062006e0300b67b5fc5557ca8f.gz/SHA256E-s3851193574--aaeb1173c9d41b7fefd7bc1cf1f1f35c40fdb7062006e0300b67b5fc5557ca8f.gz";
      r2 = "21/Zg/SHA256E-s4061260984--1c54a810a3784625c9c8be6d3b13fd5c330d6e74857a5ecc5f951ab3b4b3c898.gz/SHA256E-s4061260984--1c54a810a3784625c9c8be6d3b13fd5c330d6e74857a5ecc5f951ab3b4b3c898.gz";
    }
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "z7/M0/SHA256E-s8734779433--28d14ec2ba4ba6eabbe5c2c20304bfb4ac3cecfd541fc6ae88097256d848ecfe.gz/SHA256E-s8734779433--28d14ec2ba4ba6eabbe5c2c20304bfb4ac3cecfd541fc6ae88097256d848ecfe.gz";
      r2 = "f8/Xf/SHA256E-s8843530514--5d9a9af2be3b8f34314fd30bb544223c3f3a02e33782b76a6f8ade655c442df6.gz/SHA256E-s8843530514--5d9a9af2be3b8f34314fd30bb544223c3f3a02e33782b76a6f8ade655c442df6.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "PW/4j/SHA256E-s8724210480--f3123d96f39281e77dfd13155c52d78e3ed257d4f2cabf0afdbf9d2904674028.gz/SHA256E-s8724210480--f3123d96f39281e77dfd13155c52d78e3ed257d4f2cabf0afdbf9d2904674028.gz";
      r2 = "Qm/Px/SHA256E-s8659714568--f6a14082c1066191e40796f5d3aa8e572a116cea291e1b8c041310726f13d988.gz/SHA256E-s8659714568--f6a14082c1066191e40796f5d3aa8e572a116cea291e1b8c041310726f13d988.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE #3 or 5?";
      meeting_discussions_follow_up = "Redcap meeting with Clare 09.03.2020\nSend this case for BROCA";
      date_consented = "2016-11-10";
      tumour_type = "HGSOC";
      tumour_details = "Cervical, HGSOC, RCC, cured of all";
      pre_analysis_mutations = "FCC - gBRCA1/2 WT";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01029";
    predictNeoantigens = true;
  }
