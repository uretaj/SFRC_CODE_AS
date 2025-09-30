with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2F";
      class = "tumours";
      pdx = false;
      r1 = "40/Gg/SHA256E-s26469323151--664e62b877690f17c775a6baa8a9abea3cbb474427e7f95810a7a249897c0ee7.gz/SHA256E-s26469323151--664e62b877690f17c775a6baa8a9abea3cbb474427e7f95810a7a249897c0ee7.gz";
      r2 = "X4/9z/SHA256E-s26782243621--1acdeb9b00b68023fd62a290a7f48780ff5ca46dde6912c9f0bab8d6ab8d6c67.gz/SHA256E-s26782243621--1acdeb9b00b68023fd62a290a7f48780ff5ca46dde6912c9f0bab8d6ab8d6c67.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Xp/7w/SHA256E-s4812183248--83e5bd7bb984e83db61b8dfe492865870a9a331b0853568fe6728bfc74bb4a5d.gz/SHA256E-s4812183248--83e5bd7bb984e83db61b8dfe492865870a9a331b0853568fe6728bfc74bb4a5d.gz";
      r2 = "7z/1Z/SHA256E-s5012196084--8d969d3e56d3a7948478689e1ca267be1f01f17a2f3fe9a116368620ff53b3d3.gz/SHA256E-s5012196084--8d969d3e56d3a7948478689e1ca267be1f01f17a2f3fe9a116368620ff53b3d3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting with Clare 16.12.2021\nBlock 2F: Organise WES and BROCA\n\nBroca meeting 04.11.2021\nWarren to recall a block from 2029.\nOrganise WES and BROCA  ";
      date_of_death = "05/2021";
      d_case_summary = "female with HGSEC in second relapse with HER2 amplification.";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC, HER2 amplified";
      case_details = "59 years old female \n\n2019-08:\tDiagnosis, Stage IV, surgery (block 2F received, purity within circled area-40% . Purity for entire sample- 25%). WES organised on this block \n\n6x carboplatin paclitaxel 2019-08 -> 2019-12 \n\nIHC positive: P53 (WT), P16 \nIHC negative: ER, WT1, napsin A \nER 30% \nMMR normal expression \n\n2020-04: \tRecurrence, no trial available. HER2 IHC, 3+, ISH positive \n\n2020-12: \tCarboplatin / Caelyx ->March 2021 \n\nDiscussion: \teligible for TDM1 on MoST trial as has had no prior trastuzumab chemotherapy \n\nbiopsy considered: determine drivers for additional information: Cyclin E, HRD \n\nResults will then be available upon PD post TDM1 Only if time to do a biopsy prior to TDM1 trial and if safe to do so \n\n2021-02:\tfinal dose of chemo \n\n2021-04: \tBlood B1 received ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 slides received from Melbourne Pathology by Warren 26/11/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01396";
  }
