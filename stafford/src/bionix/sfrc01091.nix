with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        gridss = with gridss; {
          collectMetrics = def collectMetrics {walltime = "48:00:00";};
          callSomatic = def callSomatic {mem = 50;};
        };
        minimap2.align = def minimap2.align {
          walltime = "48:00:00";
          ppn = 42;
        };
        octopus.callSomatic = def octopus.callSomatic {mem = 180;};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/AGRF_CAGRF18906_HFFY2DSXX/SFRC01091_B1_HFFY2DSXX_AAGTCCAA_L003";
      suffix = "";
      hash1 = "c71c4fe4a7f535f87f4b496c721757f36c7dea822d4d4d5c6bdcebf1e979ec50d52163c24e0ad46bc581ad8c79a1584739ba625fbbbb0f53f6a8c79be1c16346";
      hash2 = "e1c555b3db11e9fbfb877b39ed119597be133cc34656c4505a41f87eca5cd7d2ab77b8892ce223f8e7d3fcccc3711d8eaadbedd0d6704ff9171f07b0298db24d";
    }
    {
      site = "13B";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HG2W3DSXX/SFRC01091_13B_HG2W3DSXX_GACGTCAT-TCTTTCCC_L003";
      suffix = "";
      hash1 = "d824d6ba8e9c1817279c98633285f3301c0bfdb6970dc01a38e3271ed8ae09bdac1e2c9253c165f05113b1a85cea543435319f7fbf3fcb6e4ebb3774a51ea3ca";
      hash2 = "1567b2e2a13fc074271b939a5109c503a3c88747b75b371365124e59a003e0cefbadf364a5b99bb818e68b73d4bbba0cda66eccd0faad2ef0f3a38729506049f";
    }
    {
      site = "17B";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HFFY2DSXX/SFRC01091_17B_HFFY2DSXX_GTAACCGA_L003";
      suffix = "";
      hash1 = "6cdb2b69e1c7fa4b6f74794691346db78246cbf959ba3037caf1158241c0e1b1d19475d12fa24e6f56f3a1dc83b43e49122f32ca43275d6e6ab26f5314f485e8";
      hash2 = "331e7c119d735ac67835292135c9464c773fdd863c540fc6e94e054712bdce8267e93d6344ddb06402ed5cfd9fb02a08e70859a889b31b1fe6755e7c538501c8";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "23.03.2020 Redcap meeting Clare/Amandine\nPatient of Damien. He has been emailed and ask if this patient is from Nominator and if he would like anything else done for this case.";
      date_consented = "2018-05-28";
      tumour_type = "CNS cancer";
      tumour_details = "Neurocytoma";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01091";
  }
