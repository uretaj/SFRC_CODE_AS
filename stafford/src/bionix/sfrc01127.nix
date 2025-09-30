with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        octopus.callSomatic = attrs:
          octopus.callSomatic (with lib;
            attrs
            // optionalAttrs (any (x:
              x == "chr1")
            attrs.targets) {mem = 160;});
        gridss = with gridss; {
          assemble = def assemble {
            mem = 128;
            heapSize = "128g";
            walltime = "48:00:00";
          };
          callsomatic = def callSomatic {mem = 50;};
        };
        manta.call = def manta.call {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/s3/batch2/SFRC01127/L1900209_S36";
      suffix = "_001";
      sha256-1 = "01333d2ad3259432768e0d386dea516817dea2a532cd9871bdfa992181e9b100";
      sha256-2 = "bd5eb69ea4980d21d944134c10a5896ffaf18bd4392a11350f39a058f9d7319d";
    }
    {
      class = "tumours";
      site = "1M";
      prefix = "grimmond/s3/batch2/SFRC01127/L1900210_S40";
      suffix = "_001";
      sha256-1 = "e698ade704eb207ad9a24f8c46948ea959ac94e18b0bd7b95cb844539115ea8d";
      sha256-2 = "7e051d87f7ff3cbf0e92e20cf4f753edd2dac32a7a6c5b4f7dc498fa15bc65f0";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "ECS";
      date_of_death = "3/2020";
      d_case_summary = "Endometrial carcinosarcoma; G3 comprising mainly poorly diff endometrioid adenocarcinoma with some focal sarcomatous differentiation. Died 10 March 2020.";
      date_consented = "2019-01-29";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial Carcinosarcoma";
      case_details = "Metastatic endometrioid carcinosarcoma of the uterus diagnosed in 21/6/2016. ER positive (heterogenous), PR positive (heterogenous)\n\nTAHBSO/Omentectomy/PLND performed June 2016.\n1 cycle of Carboplatin/Paclitaxel, Carboplatin x 5 (due to severe reaction to Paclitaxel), following discovering metastatic disease in July 2016.\n6 x carboplatin in August 2018 following discovering further liver metastases";
      pre_analysis_mutations = "ER positive (heterogenous 80%; 2-3+)\nPR positive (heterogenous 80%; 2-3+)";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "For WGS\nHistopath number: 7897-16C\nFFPE Block received 6-Feb-19\nGiven to SG lab 20-Feb-19";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01127";
    disableGridss = true;
    predictNeoantigens = true;
  }
