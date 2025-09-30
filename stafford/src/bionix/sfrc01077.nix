with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xK/Gx/SHA256E-s31871456552--d012b170c3a6ce642ff1ed0063020b4bac2b6b37ead38f91fb9011297b8ed4bb.gz/SHA256E-s31871456552--d012b170c3a6ce642ff1ed0063020b4bac2b6b37ead38f91fb9011297b8ed4bb.gz";
      r2 = "Q5/z3/SHA256E-s35687687055--da85841178bd35d894ad771040b78e35b5d690b9ef84bdf24731b38d617a0a57.gz/SHA256E-s35687687055--da85841178bd35d894ad771040b78e35b5d690b9ef84bdf24731b38d617a0a57.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "gW/5Q/SHA256E-s55037599069--be4ebe7ad6e2257fd2a68d5fc22f639d5c74c5a8ae3a9084db24db6174caccd1.gz/SHA256E-s55037599069--be4ebe7ad6e2257fd2a68d5fc22f639d5c74c5a8ae3a9084db24db6174caccd1.gz";
      r2 = "KZ/kV/SHA256E-s62236512151--b717f778eafd9327f35f2438714aab4cd4b9d67508158ef2cf035f3988cd151f.gz/SHA256E-s62236512151--b717f778eafd9327f35f2438714aab4cd4b9d67508158ef2cf035f3988cd151f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Qv/Fg/SHA256E-s6715481694--f560cd5cd45116dd46baecd5719878688df803eadbf2dd5be719e142870f4737.gz/SHA256E-s6715481694--f560cd5cd45116dd46baecd5719878688df803eadbf2dd5be719e142870f4737.gz";
      r2 = "jQ/2v/SHA256E-s6959293155--77020a45ba9bae44eb0b71e7bc3ba61e6cf692153199307f78de2723a8fa565e.gz/SHA256E-s6959293155--77020a45ba9bae44eb0b71e7bc3ba61e6cf692153199307f78de2723a8fa565e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "iPREDICT";
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "06.08.2020 RC Meeting\nWGS reports no somatic or germline mutations. Joep found variant in ARHGEF7, but until the function of this gene is known, no further clinical actions.\n\n04.06.2020 Clare meeting\nwaiting for IHC notes on new biopsy. URGENT clinical sample. Will need to dissect slides for DNA \n\n20.03.2020 Redcap meeting Clare/Amandine\nEmailed Damien to check if this patient is part of Nominator or not.";
      date_of_death = "05/2023";
      date_consented = "2018-04-17";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC, some high grade components    Now on CAR-T cell therapy trial";
      case_details = "ALLOCATE and iPREDICT panels showed no germline or somatic variants or mutations.\nOn Lewis Y CAR-T cell therapy trial at Petermac. Started mid-Feb 2020.\nIf PDs would have to biopsy at RMH for WGS.";
      pre_analysis_mutations = "No clinically significant somatic variants. Losses of chromosomal arm 1p and 22q12.1-qter. Low-level gain of chromosomal arm 1q.\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01077";
  }
