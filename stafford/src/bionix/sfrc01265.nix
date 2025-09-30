with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        gridss.assemble = def gridss.assemble {
          mem = 158;
          heapSize = "158g";
        };
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L2000168_S5";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "59d3218f1d190499bb2948f5f09dc42aa4c6cf547ce92799de20e8c2f05854ae";
      sha256-2 = "73894a863155c5921425a0e044a3dd7c1d2627fc44383ffe081955eb10d6a3a4";
    }
    {
      prefix = "grimmond/s3/batch8/L2000169_S6";
      suffix = "_001";
      site = "S1";
      class = "tumours";
      sha256-1 = "97efb89a62f3d2ac949d4efe98bcab13497ad4ac806cd08da1c21472216a734f";
      sha256-2 = "9ad028ffc9cce22fbd676af8d37a9bc3c9de995227fd95fe330addb21eb51709";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "RC Meeting notes 20.08.2020\nSFRC01265S2 PDX is NOT correct. The IHC is still all negative and positive controls on the slides worked well. Human Ki67 was negative, must be a mouse tumour. Gen performed human vs murine PCR 19-08-20. Confirmed SFRC01265S2 PDX is mouse tumour.   \nWGS on OCT sample local analysis just run; html report and summary on REDCap.\nNot much different to Sean's report. 65% tumour purity, good coverage. MSH6 germline variant. Large scale CN changes.\nSomatic variants: BAP1, SMAD3, KMT2D, PIK3CA (1 mt copy, 2 wt), PTEN, MAML2 (low HF) \nSignature 3 and 1 are top at 14% each \n\nKeep an eye on the remaining mice. \n\nRC Meeting notes 09.07.2020\nNo actionable items on this report. Is on first line treatment now. Maintenance Bevacizumab (Avastin) now (compassionate access). \nNeed a discussion of drugs to do for PDX. In vitro and in vivo settings. Platinum, paclitaxel... Vinorelbine maybe. PRMT5 inhibitor or BRD4 inhibitor. \nPriority is what we can get access to, clinically. \nClare to send report to Linda Mileshkin. Mark Dawson might know of drugs accessible in the clinic. \n\nMeeting notes 18.06.2020\nChat to Cass about whether there is fresh PDX ready to be harvested (better than from frozen mince). Just try and do short term drug assays (might not be able to generate a proper cell line). Use platinum as established response and compare to novel drugs. Chat to Tracy (re: pancreatic spheroid work) and Richard Tothill about how to do drug screens in early passages. David Segal (used to work for David Huang) will know who has the PRMT5 inhibitors. Gen to send email cc'ing Clare to set up a meeting. David Thomas suggested BRD4 inhibitor. Maybe we could buy in Tazametostat?\n\nMeeting notes 04.06.2020\nPDX (S2) has been passaged, waiting for IHC confirmation  \nWGS results back. Epigenetic therapy is relevant. PRMT5 or BRD4 inhibitor?  Email to Clare: BAP1 has been used to predict response to EZH2 antagonists preclinically, but tazametostat trial is now very focused, and unlikely to be suitable. \nTo do: short-term drug tests (after PDX validated) - think about other drugs to test.\n\nMeeting notes 27.02.2020\nGo ahead with WGS on S1 OCT if not enough add S2 OCT. Patient is on Chemo now so not urgent - normal processing time for Sean's lab.  Patten Trust funding\n\n ";
      date_of_death = "10/2021";
      date_consented = "2020-01-07";
      tumour_type = "Cervical SCC (Squamous Cell Cancer)";
      tumour_details = "SCC cervix";
      case_details = "WGS clinical notes \nSquamous Cell Carcinoma of the Cervix diagnosed at the age of 32 in late 2018.  Definitive therapy completed July 2019. PET recurrence diagnosed Dec 2019. Progression. Having first-line chemotherapy currently. Need direction for next line of therapy";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01265";
  }
