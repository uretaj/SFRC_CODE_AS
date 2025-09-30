with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "S1";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF17387_H3W32DSXX/SFRC01060_S1_H3W32DSXX_TTATAACC-GATATCGA_L002";
      suffix = "";
      sha256-2 = "ad426fa4a8461ff2103ebead7c7870af915b0ab1a5f8ed27048b803c42a10c88";
      sha256-1 = "e13d0a789a99695331590ae14e71cc4c8724fc2d75005ba64a537cfa0cc75319";
    }
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/AGRF_CAGRF17387_H3W32DSXX/SFRC01060_B1_H3W32DSXX_CCGCGGTT-AGCGCTAG_L002";
      suffix = "";
      sha256-2 = "48a83434ca6652d29459ebe77b3a5cb1d9e465b1ee060c32a730915679d96e6c";
      sha256-1 = "4d225f1d95cab307093145eab4e1d06469933a6501df422e21677d634106921e";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "NOMINATOR 02031";
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "9.4.20 - Holly and Clare meeting - need to issue a report once the report has been curated sufficiently - Clare emailing Tony about new curator\n\n23.03.2020 Redcap meeting Amandine/Clare \nDamien has been emailed and requested to add Nominator report. \n\nJustin email 13.03.2020\nJustin performed the analysis. WGS The depth was good with 40x in the blood and 60x in the tumour. Maybe rerun analysis as the new workflow is more sensitive \n\nRedcap meeting with Clare on 13.03.2020\nIt appears that WGS has been done in the past and no variants were found. Find out the WGS depth as if low could potentially be resent for deeper WGS for the GCT project.";
      date_consented = "2017-10-03";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Right ovary SCTAT";
      case_details = "Alive with stable disease as at 12Mar2020";
      pre_analysis_mutations = "NOMINATOR: nothing identified";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01060";
  }
