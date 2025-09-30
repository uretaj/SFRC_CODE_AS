with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9P/55/SHA256E-s40214104688--07c978e7f539d19d5279194e876c0b3e6d3a4e470236bc976270b0118e085eed.gz/SHA256E-s40214104688--07c978e7f539d19d5279194e876c0b3e6d3a4e470236bc976270b0118e085eed.gz";
      r2 = "Xx/kg/SHA256E-s42800950022--a235156a4f3fb2fc7dee40879735ac528a0085884017eaec08933f99fe65ccb9.gz/SHA256E-s42800950022--a235156a4f3fb2fc7dee40879735ac528a0085884017eaec08933f99fe65ccb9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "vk/95/SHA256E-s99046340467--2f9eb8c7d39ef34f9cd9a26a16c40c47adbc0698a1b972ba01c35b3b4e2bf865.gz/SHA256E-s99046340467--2f9eb8c7d39ef34f9cd9a26a16c40c47adbc0698a1b972ba01c35b3b4e2bf865.gz";
      r2 = "G9/J1/SHA256E-s103808448003--fb283c64f5b2fd1abc849f73b8a1f90d677709b7497f77f1b25032897ad22194.gz/SHA256E-s103808448003--fb283c64f5b2fd1abc849f73b8a1f90d677709b7497f77f1b25032897ad22194.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "RC Meeting 2021.10.28\nDiscussed WGS report (Grimmond only).\nPotential Monash trial. \nNTRK3 and FOXA1 are of research potential, when PDX comes up. \n\nClare's meeting 2021.08.12\nMacrodissect to get good tumour purity and send for WGS.";
      d_case_summary = "80 yo male diagnosed with tonsillar ca, Fresh tissue for review.";
      tumour_type = "Other rare";
      tumour_details = "tonsillar cancer";
      patient_information_complete = "Incomplete";
      other_tumour_type = "tonsillar cancer";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01442";
  }
