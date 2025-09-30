with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "18/kP/SHA256E-s43458466566--22d57ae0c82d5a7082488381ac94eafd5d1d50093c96247299eea6f4669972ca.gz/SHA256E-s43458466566--22d57ae0c82d5a7082488381ac94eafd5d1d50093c96247299eea6f4669972ca.gz";
      r2 = "wV/FZ/SHA256E-s44456799544--2f94bd11849121dee90b431e6d46a46437c0d8f16f47a1eeca8314b901e8a71b.gz/SHA256E-s44456799544--2f94bd11849121dee90b431e6d46a46437c0d8f16f47a1eeca8314b901e8a71b.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "1V/QJ/SHA256E-s34209976551--e603eb944c8d294930186c962c08cb3cf65ffb0d9dc5b78af481bc88a5a35132.gz/SHA256E-s34209976551--e603eb944c8d294930186c962c08cb3cf65ffb0d9dc5b78af481bc88a5a35132.gz";
      r2 = "F6/5Z/SHA256E-s35050775893--0144c96fee10d5fab96bf1b7e3c267718a13e56d9ced415c6b369b3a92de61d9.gz/SHA256E-s35050775893--0144c96fee10d5fab96bf1b7e3c267718a13e56d9ced415c6b369b3a92de61d9.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "G5/Vm/SHA256E-s26750920575--adfbd4ec7831b99a436439e7c3d45349cfb6ec044cc7ac8f539e53b29f64792e.gz/SHA256E-s26750920575--adfbd4ec7831b99a436439e7c3d45349cfb6ec044cc7ac8f539e53b29f64792e.gz";
      r2 = "V7/pk/SHA256E-s27056663214--7398ca41ece8137589adc8e38f846461ac0128937993179d8125502feaf347e7.gz/SHA256E-s27056663214--7398ca41ece8137589adc8e38f846461ac0128937993179d8125502feaf347e7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      date_of_death = "10/2017";
      date_consented = "2016-11-10";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC, needs BROCA";
      case_details = "Specimen no: EP17P2261\nTissue (block) received15-Feb-19";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01033";
    predictNeoantigens = true;
  }
