with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      r1 = "f9/Vm/SHA256E-s27734444949--de6b97cd79df4109f0461a36a3e058412f69df9905c460d7eff12ebe6f06e483.gz/SHA256E-s27734444949--de6b97cd79df4109f0461a36a3e058412f69df9905c460d7eff12ebe6f06e483.gz";
      r2 = "ZK/P7/SHA256E-s29278004337--42450f5cecb86cd3df02b73bb9098127b57c9b458174e4b8e2e4798a6ece3d8b.gz/SHA256E-s29278004337--42450f5cecb86cd3df02b73bb9098127b57c9b458174e4b8e2e4798a6ece3d8b.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = true;
      r1 = "78/53/SHA256E-s26902576727--003f2175d13fa9f895d77c033cbed45562dd746cbf4852963498edce91b334c9.gz/SHA256E-s26902576727--003f2175d13fa9f895d77c033cbed45562dd746cbf4852963498edce91b334c9.gz";
      r2 = "mP/zf/SHA256E-s28375345452--956e69153d5d640a6360abc695317d58505c6c74f20c087af09d2b555a166841.gz/SHA256E-s28375345452--956e69153d5d640a6360abc695317d58505c6c74f20c087af09d2b555a166841.gz";
    }
    {
      site = "100fresh";
      class = "tumours";
      pdx = true;
      r1 = "PQ/v3/SHA256E-s9136333201--ba2795b9617220574038424e07077f221bfd7674acb6034b36f5e05f9755edec.gz/SHA256E-s9136333201--ba2795b9617220574038424e07077f221bfd7674acb6034b36f5e05f9755edec.gz";
      r2 = "vm/2F/SHA256E-s9520316075--afcbb3cf9c3ecacb136d8844b8101292f57ef6f2e2765b15907dc34778ae7758.gz/SHA256E-s9520316075--afcbb3cf9c3ecacb136d8844b8101292f57ef6f2e2765b15907dc34778ae7758.gz";
    }
    {
      site = "100frozen";
      class = "tumours";
      pdx = true;
      r1 = "10/Xx/SHA256E-s6261022118--200d6767646f51b78ff6722d03006dd6002cd877a7f96436ace03030ded88be3.gz/SHA256E-s6261022118--200d6767646f51b78ff6722d03006dd6002cd877a7f96436ace03030ded88be3.gz";
      r2 = "5J/64/SHA256E-s6479282745--642fbbe8355ff122dbc8e932ae3f16cc5e98dc1da027f2385c0f5ed12c06f720.gz/SHA256E-s6479282745--642fbbe8355ff122dbc8e932ae3f16cc5e98dc1da027f2385c0f5ed12c06f720.gz";
    }
    {
      site = "5fresh";
      class = "tumours";
      pdx = true;
      r1 = "p9/MW/SHA256E-s6863430910--f604fa156914650eb1ef30ff5748c3f7ead3f88678fcd27bf741e68f5214170c.gz/SHA256E-s6863430910--f604fa156914650eb1ef30ff5748c3f7ead3f88678fcd27bf741e68f5214170c.gz";
      r2 = "54/vM/SHA256E-s7208677398--8a9f8ce3f1877911c4c0eb7ef596b36f6303bc5a84cd7020662ed2c8621b7379.gz/SHA256E-s7208677398--8a9f8ce3f1877911c4c0eb7ef596b36f6303bc5a84cd7020662ed2c8621b7379.gz";
    }
    {
      site = "5frozen";
      class = "tumours";
      pdx = true;
      r1 = "f8/VZ/SHA256E-s7400129188--22a1fea3056e671e2bb92b9f877ed70bc6826f7a2efa1ee7acae261c4feb6e62.gz/SHA256E-s7400129188--22a1fea3056e671e2bb92b9f877ed70bc6826f7a2efa1ee7acae261c4feb6e62.gz";
      r2 = "G7/Pf/SHA256E-s7629106791--da1f476d0ce3648c42631d5923bf51abcba2e334e2e59eb8d78a00f2aa40a493.gz/SHA256E-s7629106791--da1f476d0ce3648c42631d5923bf51abcba2e334e2e59eb8d78a00f2aa40a493.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "AOCS: 134062";
      meeting_discussions_follow_up = "Clare, Ratana, Rae 03.04.2023\nBROCA for FFPE Block 1K\n\nClare's Meeting 06.09.2022\nask Matt if there is RNAseq. Kas and Matt to know about this block.\n\nNeed another blocks (Gayanie to go over path reports) for normal tissue -- WANT WES!!! And RNA (nanostring, or global WGchip methylation). Ask about the pathology centre for the normal tissue. Might not need another pathologist to review this--coordinate with Devindee and Gayanie to choose normal blocks.\n\nAll AOCS cases - any germline DNA?? Liz Swisher did germline BROCA? \n\nWES, nanostring, Ki-67 IHC.";
      date_of_death = "11/2021";
      d_case_summary = "Ovarian/FT serous adenocarcinoma. Waiver of Consent\nAOCS: 134062";
      date_consented = "2022-06-29";
      tumour_type = "HGSOC";
      tumour_details = "Ovarian/FT serous adenocarcinoma";
      case_details = "70yo woman\n\n2012-07: Diagnosed serous adenocarcinoma of fallopian tube origin (fallopian tube fixed and blocked (Block 1K))\nHistopath: \n-IHC positive: ER (strong +3 nuclear positivity in ~20% tumour nuclei), PR (moderate 2+ nuclear positivity in ~5% tumour cells), CA125, WR-1, CK7\n-IHC negative: CK20\n\n2013-05: BRCA 1/2 Mutation Screening (PMCC): No pathogenic mutants detected.\n\n2021-09: Diagnosed recurrent ovarian cancer. PET/CT shows worsening avidity of aorto carval node and suspicious lung mets.\n\n2021-11: Deceased.\n";
      brca_report = "SFRC01605_BRCAPanel_May2013_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "19/07/2022: 2012 sample requested from RWH pathology by Devindee.\n17/08/2022: 2012 sample slides received from RWH pathology by Devindee. ";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01605";
    capture = TWISTv2;
    enableSummary = false;
  }
