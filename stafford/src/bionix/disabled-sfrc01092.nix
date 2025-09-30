with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2 = minimap2 // (with minimap2; {align = def align {walltime = "48:00:00";};});
        samtools = samtools // (with samtools; {markdup = _: x: x;});
        gridss = with gridss; {
          collectMetrics = def collectMetrics {
            mem = 32;
            heapSize = "31g";
          };
          computeSamTags = def computeSamTags {walltime = "48:00:00";};
          callsomatic = def callSomatic {mem = 50;};
        };
        octopus.callSomatic = def octopus.callSomatic {mem = 180;};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      suffix = "";
      prefix = "fastqs/AGRF_CAGRF18906_HFFY2DSXX/SFRC01092_B1_HFFY2DSXX_ATCCACTG_L003";
      hash1 = "198005964af7be32cd12e1d3c9248f59b3003a16d80ecd7b3b25204b2e1de5d4a161195043d66b98c2286eaff4583f1c48b19c8764ab7763aa6254cd163bc914";
      hash2 = "457a2634fd120e42335804ba227a43b0490ae91449dc7d7a6099cc9fea5835489eaefa98641323e788784202b03df81d5273b12e86ada9ef244175d51b4f4d60";
    }
    {
      site = "3A";
      class = "tumours";
      suffix = "";
      prefix = "fastqs/AGRF_CAGRF18906_HG2W3DSXX/SFRC01092_3A_HG2W3DSXX_AGCGAGAT-TCTTTCCC_L003";
      hash1 = "9dcea25ef95227168caa2e0a63ea152f0c4ae19958f89b2a9096a6687f09ad101d5ac925670171b2104052e0af2c603bf0f53bbbe6472897eae859f038e36aa4";
      hash2 = "75111f9470c0f579c143f67f9c5ef9555135e962c726298866575f3e0be507648ccb96831e8ae9e82bfaa120dbefa78adaec45f30b2e27ec72ad9653fe92fd34";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    redcap = {
      meeting_discussions_follow_up = "23.03.2020 Redcap meeting Clare/Amandine\nPatient of Damien. He has been emailed and ask if this patient is from Nominator and if he would like anything else done for this case.";
      date_consented = "2018-05-28";
      tumour_details = "Neurocytoma";
    };
    inherit samples;
    name = "SFRC01092";
  }
