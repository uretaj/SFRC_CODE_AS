with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        octopus.callSomatic = {targets, ...} @ attrs:
          with lib;
            octopus.callSomatic (attrs
              // optionalAttrs (any (x:
                x == "chrY")
              targets) {mem = 360;});
        mutsigs.decompose = def mutsigs.decompose {
          mem = 64;
          walltime = "48:00:00";
        };
        dbs.db = def dbs.db {mem = 64;};
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/s3/batch2/SFRC01106/L1900019_S3";
      suffix = "_001";
      sha256-1 = "fed834745f35322e9ad9a245fbfd7c5256d6d70cf5888931717e72b41277268d";
      sha256-2 = "5d8c8e5129a6d95fe46a5a91be5ad7ff7993dac0dc0d59f952e527684ebf4e59";
    }
    {
      class = "tumours";
      site = "4F";
      prefix = "grimmond/s3/batch2/SFRC01106/L1900020_S4";
      suffix = "_001";
      sha256-1 = "7b433cd894ccfa97bc459abaf5070fd43d534f0f362d6ec59bc8742a87d5d96b";
      sha256-2 = "de32db9eadce5047da6cc920578ce07368e7b35e98f323dfe21c05bb20aee1fc";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    redcap = {
      date_consented = "2018-11-28";
      tumour_type = "Other rare";
      tumour_details = "SCC right submandibular gland";
      case_details = "Recurrent and widely metastatic head and neck cancer, starting in L submandibular gland (SCC), and has progressed to multiple lymph nodes, as well as bone/soft tissue around the body.\n\nWide local excision of L submandibular gland performed on 21/3/18, adjuvant chemotherapy with high dose cisplatin completed 20/6/18.\nPalliative chemo to address painful R chest commenced in late 2018. ? commencement on PMCC Induce trial on pembrolizubmab.";
      patient_information_complete = "Incomplete";
      other_tumour_type = "SCC right submandibular gland";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    inherit samples;
    name = "SFRC01106";
    disableGridss = true;
  }
