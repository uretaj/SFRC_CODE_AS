with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        manta.call = def manta.call {walltime = "48:00:00";};
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/FASTQ/2019-04-05T0132__WGS_SFRC01115/data/181220_A00130_0087_BHCL3NDMXX_PRJ180679_SFRC01115N";
      suffix = "_001";
      sha256-1 = "43750c32c428ff7e39e94b66a01330205fed097aca74cf1273dabbcf89eb59ed";
      sha256-2 = "204941a03049871ab02eb6c113add226fd04d991b2c639a80e8374609b04b303";
    }
    {
      class = "tumours";
      site = "4";
      prefix = "grimmond/FASTQ/2019-04-05T0132__WGS_SFRC01115/data/181220_A00130_0087_BHCL3NDMXX_PRJ180680_SFRC01115T";
      suffix = "_001";
      sha256-1 = "0a263af01b36c0327df466783b760a94c754ab1c1779689ce5259af8d467dc34";
      sha256-2 = "bda4893d7e5f7690e5eb542023a8135b0835081499699090621809b7c3a4663d";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      date_consented = "2018-11-23";
      tumour_type = "Melanoma";
      tumour_details = "Malignant Melanoma - suspected blue nevus melanoma";
      case_details = "BRAF wild type, GNAQ mutation positive malignant melanoma. Molecular path performed June 2018 confirming BRAF WT and GNAQ mutation\n\nWide local excision performed June 2018, adjuvant radiotherapy planned in July2018 due to involved margins\n\nNew drug for GNAQ uveal melanomas currently being trialed";
      pre_analysis_mutations = "Previous panel analysis\nBRAF wild type\nGNAQ mutation positive\n\nIHC: SOX10, Melan A, HMB45 positive";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01115";
  }
