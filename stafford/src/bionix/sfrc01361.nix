with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "W6/76/SHA256E-s3686214527--fd5436ed1333cb326c330a836a595d254e72e310eb8f94ec96df040f0b945e8e.gz/SHA256E-s3686214527--fd5436ed1333cb326c330a836a595d254e72e310eb8f94ec96df040f0b945e8e.gz";
      r2 = "jf/w1/SHA256E-s3753029599--e8b797ae5069b054ceaffda05000bdf96b9d2b2f7478e2e3a0f48263c20e1996.gz/SHA256E-s3753029599--e8b797ae5069b054ceaffda05000bdf96b9d2b2f7478e2e3a0f48263c20e1996.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      d_case_summary = "71 year old male  - multiple primary:\n1998 Bowel Cancer\n2008 Hodgkin's Lymphoma\n2012 Bladder Cancer\n2015 Prostate Cancer\n\nBloods organised for 1 Feb 2021.";
      tumour_type = "Other rare";
      tumour_details = "Multiple primary - bladder, Hodgkin's lymphoma, bowel, prostate";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Bladder cancer";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "17Mar23: Feb2010 Bladder sample and Nov2017 Prostate sample requested from Aquesta Pathology by Monica\n21Jul23: FU with the lab ";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01361";
    predictNeoantigens = true;
  }
