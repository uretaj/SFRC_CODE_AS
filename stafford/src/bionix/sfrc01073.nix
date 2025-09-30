with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        gridss.softClipsToSplitReads = def gridss.softClipsToSplitReads {
          mem = 30;
          heapSize = "31g";
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      suffix = "_001";
      prefix = "grimmond/FASTQ/2019-04-09T0307__WGS_SFRC01073/data/181015_A00130_0078_BHF7T5DSXX_PRJ180599_SFRC01073_S2N";
      hash1 = "b0e7add99c25ed7ca89b7e13a8ba46385d1ff2546407e5bc283b2d4301aaf237fdb88d71495edf0d78c69261af8f85427c008a6dada367451c7358f222e74ea7";
      hash2 = "69e99efc7c53120e7a9708a84e2c3f58b213c9afc7864933657e80776373e06bb36a7c005f043b7129ae44512b007bafcc00389c771f0c141ddb20b039dc31ad";
    }
    {
      site = "S2";
      class = "tumours";
      suffix = "_001";
      prefix = "grimmond/FASTQ/2019-04-09T0307__WGS_SFRC01073/data/181015_A00130_0078_BHF7T5DSXX_PRJ180598_SFRC01073_S2T";
      hash1 = "3473047093bcb72dcc3fa50079b1dabc368f1ba34812b5a83f5fa13da17e8256c6355e263873d7fed65556481585101830991c11f1ba52b72b453e27f13559f6";
      hash2 = "da9b14535762714942f8ee7e78ca598d6a476a4344fa4af3740fb48b440a9f641d43b3d7337e748edb5dc4f62725902e428b8db15a35c4a8c52b2ba0bf5dc950";
    }
    {
      site = "S2";
      class = "rna";
      r1 = "3z/gp/SHA256E-s4353820088--8eadf4775072659acd833f8aaf296ea3c1e776ed9c29a7450a8cbe2aebb44708.gz/SHA256E-s4353820088--8eadf4775072659acd833f8aaf296ea3c1e776ed9c29a7450a8cbe2aebb44708.gz";
      r2 = "zz/1W/SHA256E-s4485127616--11bfae1afa2dfe998e7dc51e70bac2326571d0182a7e5ff7df5db9de667df593.gz/SHA256E-s4485127616--11bfae1afa2dfe998e7dc51e70bac2326571d0182a7e5ff7df5db9de667df593.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "NOMINATOR 01014";
      genomes100_tumour_types = "ECS";
      meeting_discussions_follow_up = "16.03.2020 Redcap meeting Clare/Amandine\nSend the same DNA that went for WGS for BROCA.\n";
      date_of_death = "11/2019";
      date_consented = "2018-03-20";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "endometrial carcinosarcoma, brain met, previous lung metastases";
      case_details = "brain metastasis resected, recurrent brain met, resected, irradiated, commenced on PARP inhibitor, progressed, palliative care";
      pre_analysis_mutations = "TP53 & PTEN";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01073";
  }
