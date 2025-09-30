with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "P3/3M/SHA256E-s15333838781--65b1d8c3ef4b20da8fdc8353b79c41d78826767d9f3a8f33c030c5365f324c03.gz/SHA256E-s15333838781--65b1d8c3ef4b20da8fdc8353b79c41d78826767d9f3a8f33c030c5365f324c03.gz";
      r2 = "f8/qk/SHA256E-s15645120244--3b687131a782d34a74918bfb2a2b0de6c76287f2e8ebbb11b7e420e7157ae7d8.gz/SHA256E-s15645120244--3b687131a782d34a74918bfb2a2b0de6c76287f2e8ebbb11b7e420e7157ae7d8.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Gp/mF/SHA256E-s6009409052--e1189636e8e5f9a75b478abbda38f4e76cb0584a5f012ca02b37288d41ca080e.gz/SHA256E-s6009409052--e1189636e8e5f9a75b478abbda38f4e76cb0584a5f012ca02b37288d41ca080e.gz";
      r2 = "kv/Wv/SHA256E-s6459336146--7e792e92ff1b1c5d3e76bfad02ed258686fcc15f5bc66e852b5dd4ec960da762.gz/SHA256E-s6459336146--7e792e92ff1b1c5d3e76bfad02ed258686fcc15f5bc66e852b5dd4ec960da762.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0026";
      meeting_discussions_follow_up = "Clare's meeting 10.02.2022\nblock 1.1: Have 60 ng DNA - but keep this for something else (not TSO just now). Very precious. Ask bioinformatics team about this sample. \nAsha to organise WES on pre-treatment block from the Solace 2 database\n\nBROCA meeting with Clare 15.10.2021\nCheck with Asha if she has planned to organise Cyclin E, WES and BROCA.\nIf not help her organise all of those. \n\n2021.03.01\nDNA from S1 OCT block - 150 ng. From block 1.1 - 60 ng.\nThere is a good archival block (during treatment) from SOLACE2 study. \nFrom Asha: The DNA from the recent biopsy is to be stored and kept for the future if we want to validate. Asha will prioritise her for WES with the SOLACE2 block.\n\n2021.01.28\nHave block 1.1. Microdissect for DNA to do WES. Put back into next meeting with Cass and Asha (SOLACE2).\n\nMeeting note with Clare and Ratana 2020.11.02\nHave extracted DNA from OCT sections, only 150ng. Can possibly do TSO500";
      date_of_death = "08/2021";
      d_case_summary = "HGSOC, 81yr, also on SOLACE 2 (on Nov 2019 to Dec 2020 - biopsy proven PD in Oct 2020)\nthen carbo caelyx\n then IGNITE\nsevere pneumonia and respiratory compromise - died Aug 2021";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2020 High Grade Serous Carcinoma block routinely recalled from PMCC via email on 22/10/2020 by Josh\nReceived by Warren 11/1/21";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01336";
  }
