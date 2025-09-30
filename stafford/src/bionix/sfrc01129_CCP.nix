with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01129-B1_S7";
      suffix = "_001";
      sha256-1 = "8a8162dad43e2326f64a642223b711d876d075484a84c784b0ff83b0d22a4409";
      sha256-2 = "489868f471752e64c88e69a87e4a11aada843db175261f5d78370942d952cc6e";
    }
    {
      site = "N";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01129-N_S8";
      suffix = "_001";
      sha256-1 = "7ab1d86bf7fbd41a4d34aa26339106c061d5a13f24291c6dc785a6fd770ebef5";
      sha256-2 = "3ce1c645c70108a36ff64a6bd07230291082818fd3f39efe1027f932f6c69da8";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC Meeting notes 15.10.2020\nDiscussed WES results (in Analysis instrument). \nNeed to get trial investigators to analyze this data more thoroughly to identify possible resistance mechanisms. \n\nMeeting notes 2020.08.27\nWant to send samples for WES (patient did not respond on the Ipi+Nivo rare cancer trial). Damien to organise germline and maybe tumour samples from ONJCRI.\n\nMeeting notes 2020.03.05\nBroca results discussed. Clare to look into the PIK3CA variant with Damien.\n\nMeeting notes 2019.11.21\nPlan:  Won't help the patient now so halt CCP and keep the DNA for future studies (pending funding) \n\nMeeting notes 2019.08.08\nClare needs to inform patient that sequencing was unsuccessful.\nAmandine to make new DNA from block and send for CCP - Clare to check if still relevant for patient before sending \nSample to be send for BROCA, wait until results back before deciding what to do next.";
      date_of_death = "11/2019";
      date_consented = "2019-02-05";
      tumour_type = "HGSEC";
      tumour_details = "Serous Carcinoma of the Endometrium";
      case_details = "Grade 3 Serous carcinoma of the endometrium, June 2017.\n\nReceived surgery for Grade 3 serous carcinoma. Commenced Carboplatin/Paclitaxel chemotherapy. Paclitaxel omitted due to potential neuropathy of R hand. Completed Dec 2017.\n\nFor WGS\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Histopath number: 106543-17T\nBlock received 15-Feb-19\nSubmitted to SG Lab 20-Feb-19";
      histology_summary = "Normal MLH1, PMS2, MSH2, MSH6";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01129";
    capture = CCPv2;
    predictNeoantigens = false;
  }
