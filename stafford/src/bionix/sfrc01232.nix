with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L2000264_S12";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "3b47f01897866a78219434a601338da10aa2c10a115be4520441715d03e362d9";
      sha256-2 = "e4f74c35762f51174077d21eb3a4c74f19a198c4268aa135a728937d73862a41";
    }
    {
      prefix = "grimmond/s3/batch8/L2000265_S13";
      suffix = "_001";
      site = "S2";
      class = "tumours";
      sha256-1 = "8b8c15233aa764d52a131f238af4e620cab011fe7786f50977473cdddf0deef8";
      sha256-2 = "a2e566d9a06c616f75e4b5f7babcf29feb18f062bc80617e83debb61ad15df1b";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "RC Meeting notes 11.06.2020\nEWSR1-ATF1 gene fusion detected. This is a common fusion for these type of tumours (80%) - not targetable - no other treatments available for this patient .\nQuite a large number of non-coding rearrangements/variants - nothing to annotate these yet - must be something of interest there. \nJustin gets raw data so can do some more analysis \n\nRedcap meeting with Clare 20.03.2020\nProceed with prioritised lung biopsy during COVID-19 at RMH CT\n\nMeeting notes 2019.10.24\nPlan: Briony/Josh to recall blocks, check quality and review  \n\n\nBlock will be recalled for WES or panel - changed plan. Also attempt fresh tissue as above";
      date_consented = "2019-10-22";
      tumour_type = "Clear cell non-gynae other";
      tumour_details = "Clear cell  odontogenic carcinoma of the mandible";
      case_details = "March 2020 Lung metastases are now progressing more rapidly. Bronchoscopic biopsies were very small, enough for transplanting into mice and a small amount for snap frozen but not sufficient for WGS.\nCT guided biopsy at RMH in early April for DNA for WGS for prioritised analysis (covid-19 workforce shutdown). Successful.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2017 tissue and 2019 tissue recalled 17/02/2020 by Josh\n\n2017 and 2019 tissue received on 17/03/2020 by Josh (only 4um slides received for 2019 tissue due to insufficient tissue)";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01232";
  }
