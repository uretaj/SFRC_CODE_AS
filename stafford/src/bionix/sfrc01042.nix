with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      suffix = "_001";
      prefix = "grimmond/s3/batch3/PRJ190637_SFRC01042_B1_S10";
      hash1 = "712aef4b82b046266652ed26053c63d9b0c26a04d2ede12f441ad88ede6c0609dd370347e623bfc7754de4b481d32f2c33f14f4eaa0283b02667186af26373a0";
      hash2 = "5975aad39bfbd94caacd6b82a104d91d25c8f29ea0713e67004b136fd7c5598064756d7e2fc8834cd0a64b5a3eec8fd7d96ef576dd1fe90f67768573000ac067";
    }
    {
      site = "S1";
      class = "tumours";
      suffix = "_001";
      prefix = "grimmond/s3/batch3/PRJ190635_SFRC01042_S1_S8";
      hash1 = "18bcf8da5c1f4c5f9ee6ff3129f84d0baf87edeece996d7d9d48251082fade0ebd9522ec708d1f54b4e5edff426a37d0e3277a706bf4a2d1935eedc1b2e47a28";
      hash2 = "10e44d9e0212d42b346f3e6cd5a8511be7e66cc935f93afebbb1be99f52bd2b28faa4cd2ccdf6039d76c4dcc4aa5bd8640695abdaa87b31b2d869861837c220a";
    }
    {
      site = "S2";
      class = "tumours";
      suffix = "_001";
      prefix = "grimmond/s3/batch3/PRJ190636_SFRC01042_S2_S9";
      hash1 = "fbcb140bddf52dacdb8b41753c1196650485500d7b2dee4dc68eb3dee2b578b37365ee10d55485fddc9a24f6ba8bd764642c8f6da0d017ad909573f4082c82b4";
      hash2 = "2d4620f8f108ea8d5d3543d5cf139f4cf7af951398af6cc69cfbe6a3887a1dd763c2a144dd1404be23926919bd8c7e2ba422ae8726942d5737f1a449885e4236";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "Amandine's Notes \nNo more OCT block or Snap frozen tissue to be able to extract more DNA for BROCA. BROCA not going ahead. \n\n\nBroca meeting Clare/Amandine 07/07/2021\nSend SFRC01042_S2 for Broca, priority cat 1\n\nRC meeting 14.05.2020\nWGS report draft\n72% tumour purity (L) and 95% tumour purity (R). \nGermline BRCA2 mutation known pathogenic \nSomatic: TP53 mutation however most reports say likely benign \nCopy number: black line is total and red line is lower value so lots of amplification and LOH \nDamaging: collapsed 4 determinants into yes (2 or more) or no \nPlanning to include lists of genes included in amplified and deleted regions \nUpdates coming.\n\nRedcap meeting with Clare 09.03.2020\nSend for Broca\nUpdate: no PDX, so was not sent for BROCA Aug 2020.";
      d_case_summary = "Carcinosarc ovary, Breast ca x2, melanoma, gBRCA2\nComplete response to 2nd line BGB290. Alive as of 25/11/2019";
      date_consented = "2017-03-15";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "ovarian carcinosarcoma, Breast ca, Melanoma";
      case_details = "Carcinosarc ovary, Breast ca x2, melanoma, gBRCA2\nComplete response to 2nd line BGB290.";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Block from 2006 in situ melanoma has been destroyed- only kept for 10 years. ";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_germline_mutations = "BRCA2";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01042";
    predictNeoantigens = true;
  }
