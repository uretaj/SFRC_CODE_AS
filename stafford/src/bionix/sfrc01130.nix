with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 30;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      suffix = "_001";
      prefix = "grimmond/s3/batch4/PRJ190187_SFRC01130_B1_S9";
      hash1 = "77f52af1ea6f954efe792d18aadd34711bc4a47d2c106d8f68798bb5f263047953d83866ada0124141217ac5672efa6197f24260bf5b74a4094c76ff33e69077";
      hash2 = "bf4985752a65e3b8d196f54f41536136244fed062e2d8beff359d4a25cb4f77096045a197e85e693196cb6792a29b0b2db0ff6a21c79bb76908b3eace1b9a650";
    }
    {
      site = "S7";
      class = "tumours";
      suffix = "_001";
      prefix = "grimmond/s3/batch4/PRJ190484_SFRC01130_S7_S10";
      hash1 = "749f29a458f3ca4ec56c6185244de3c61a0b9159d6a22bf7cffc9ce4a88ebf8e755b803f247836eaa3f2db9ff7736ab4549a7c6f031990ff77a77c066416a372";
      hash2 = "7cfe71cfb3c615a91bd60bea05bdc4e16805b3bde7ffa2c1803efe683399c08bfd1025d9ff446d9d302052f13268ad7f319b1424ce36e8d88b94cd5219ef159f";
    }
    {
      site = "S7";
      class = "rna";
      r1 = "xz/M6/SHA256E-s4464622170--46cc9a567bfe18f46a1b6edbec223046ca98953bcc2a2f8212b953162106f867.gz/SHA256E-s4464622170--46cc9a567bfe18f46a1b6edbec223046ca98953bcc2a2f8212b953162106f867.gz";
      r2 = "ZJ/Gj/SHA256E-s4434152609--1f6d8ee8a666c0a3b24816634be00c3a08c1aa8028ef5c5aa61abdf1fbf88c52.gz/SHA256E-s4434152609--1f6d8ee8a666c0a3b24816634be00c3a08c1aa8028ef5c5aa61abdf1fbf88c52.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "Meeting notes 02.05.2019\nNo tumour in any cores \nGayanie to review St Vincents cores from same biopsy \nH&E from previous biopsy also sent \nRecall FFPE sections if there's tumour and send for WES \n\nMeeting notes 28.03.2019\nsend H&E pics to Clare and remind about Kylie meeting - need to block SF sample, section and microdissect (meet with Kylie Gorringe to discuss)\n";
      date_consented = "2019-02-06";
      tumour_type = "EHE (Epithelioid HemangioEndothelioma)";
      tumour_details = "Epithelioid Haemangioendothelioma (EHE)";
      case_details = "Stage IV Metastatic EHE diagnosed in 2009, R medial calf primary, widely metastatic to spine, lungs, liver and R humerus. Indolent disease.\n\nWhile R calf (primary site) was initially slow to progress, as it progressed he underwent preoperative radiotherapy and wide resection.";
      pre_analysis_mutations = "WES: Germline variants of uncertain clinical significance in RB1 and FGFR4";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "For WGS\nTissue received fresh 2-Feb-19 \nSubmitted to SG lab 26-Feb-19\nPathology reviewed by GR and no tumour\n29.04.19 - 3 snap frozen cores (S1, S2, S3) taken to histology for blocking and sectioning\n01.05.19 - Tumour sections will be microdissected for DNA extraction and WGS.\nTissue received fresh from surgery 16-May-19\n- 6 samples labelled 1-6, 1= most distal, 6= most proximal; see biopsy procedural report section (below) for photos and REDcap sample identifiers\n\n2019 Tissue containing EHE requested by Josh from St Vincent's Pathology via Email on 8th June 2020.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01130";
  }
