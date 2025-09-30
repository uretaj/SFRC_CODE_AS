with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/SFRC/2020-07-14/L2000572_S6";
      suffix = "_001";
      sha256-1 = "19bb79cfe0a10cdc7317fdda546deeda07d12e50b604551e8d0c95131e7fe372";
      sha256-2 = "c4274245682824427142ab9b2f84a4b05dfd234ee5d9fadc6eea06e9620bd116";
    }
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/SFRC/2020-07-14/L2000572_topup_S6";
      suffix = "_001";
      sha256-1 = "43ed4699b5387c60226ff7b0bd09a9fdee22577580b54ffb026fc755200d81ba";
      sha256-2 = "d2cb9135f17d2a355234880b6adf99c18eff1659c252fc3e5b833a91cb7f574a";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "grimmond/SFRC/2020-07-14/L2000573_S7";
      suffix = "_001";
      sha256-1 = "2c15e8c7f71841a197a8b7ec4b08354edc2029aa4e5596d68d10db6bfdcd4915";
      sha256-2 = "43739dc0281806519794308ec39cc4abfdb104d81c4d3a723edf0cd4f16adb16";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "grimmond/SFRC/2020-07-14/L2000573_topup_S7";
      suffix = "_001";
      sha256-1 = "2d76e608b6e884066ce6711a06c30272bf64ca0aa7da19d6fc20fe9bc8b8389b";
      sha256-2 = "89885efca9ccca8b44b1b599cc9fed9c5400f10f683b83a307a18eee4572d407";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "RC Meeting notes 09.07.2020\nKRAS, CTNNB1 and TGFBR2 - a lot of mucin, not much stroma. What is targetable? The KRAS? - ask Damien (Wnt signalling pathway). Wnt inhibitors in Singapore. Need something available in Brisbane.\n\nClare meeting 07.05.2020\nMicrodissect tumour from OCT sections and submit for WGS (Sean to fund, hopefully)";
      d_case_summary = "PMP cancer";
      date_consented = "2020-03-18";
      tumour_type = "Other rare";
      tumour_details = "rare other (from GI) - pseudomyxoma peritonei";
      case_details = "Recurrent appendiceal malignancy, described as low grade but pattern of relapse and signet ring morphology indicated high grade\nPlanned for CRS, HIPEC, EPIC and adjuvant chemotherapy\n\nHas a lung lesion that warrants RFA but perhaps should have at time of ablation in as it relates to previous melanoma";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Low grade appendiceal mucinous neoplasm";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01286";
    disableManta = true;
  }
