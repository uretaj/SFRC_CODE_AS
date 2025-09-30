with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        octopus.callSomatic = def octopus.callSomatic {mem = 60;};
        manta.call = def manta.call {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/s3/batch2/SFRC01128/L1900211_S37";
      suffix = "_001";
      sha256-1 = "403e29c5364185d5e4d98d1f9a8773944b119e15fab25b57feb6389e96236171";
      sha256-2 = "32ef36ec3964779177ae06f9a6dbf56e12d0893dfaca4c44541124fb6eaa1d0b";
    }
    {
      class = "tumours";
      site = "1.1";
      prefix = "grimmond/s3/batch2/SFRC01128/L1900212_S41";
      suffix = "_001";
      sha256-1 = "441c74cb724c510382c2736a7a30af08887b41fbf54f4d3d80eb049ea7b1335c";
      sha256-2 = "622d0cae3ecda756d97a285a9801b0c679aa40ff26443f9969287847c43ffbe5";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "Meeting notes 25.07.2019\nDecision:  Clare has sent report to clinician and has been discussed with patient \nKeep as an interesting case for our own purposes.";
      date_of_death = "12/2019";
      date_consented = "2019-02-05";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Adenocarcinoma of the cervix";
      case_details = "45 yo woman, with Recurrent, metastatic, incurable cervical adenocarcinoma first diagnosed in Feb 2018. FIGO Stage 3B adenocarcinoma of the cervix. p16 positive, BerEP4 positive, p63 negative.\n\nCommenced radiochemotherapy (Cisplatin x 5) in March 2018, completed April 2019. Also completed brachytherapy HDR and T&O June 2018.\nCommenced Carboplatin/Paclitaxel/Bevacizumab with DR of both chemotherapeutic agents prior to CHOP chemotherapy on Dec 2018. This was ceased in Feb 2019 due to large PV bleed.\n\nFor WGS\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Histopath number: AU18B03905\nSlides received 15-Feb-19\nSubmitted to SG Lab 20-Feb-19\nJoep presented WGS results in RC meeting 9.5.19";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      histology_summary = "Cervical Bx 2018 - uploaded to sample instrument";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01128";
    predictNeoantigens = true;
  }
