with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 25;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Mv/26/SHA256E-s46280423553--bf632ddb3b478a426c42dc422a7b45a4e53156a84f173818310c350d4277edfd.gz/SHA256E-s46280423553--bf632ddb3b478a426c42dc422a7b45a4e53156a84f173818310c350d4277edfd.gz";
      r2 = "w6/2F/SHA256E-s49305223394--549e4909ef7c493ba2801711b49c6abb23f848640bf1f12745398fb412632c73.gz/SHA256E-s49305223394--549e4909ef7c493ba2801711b49c6abb23f848640bf1f12745398fb412632c73.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "33/01/SHA256E-s96130631115--1d25083b76e57087d8c1602f77186670ebae4a2ecf0b91e2ada8e7f57c398ffc.gz/SHA256E-s96130631115--1d25083b76e57087d8c1602f77186670ebae4a2ecf0b91e2ada8e7f57c398ffc.gz";
      r2 = "0m/f8/SHA256E-s101248330212--056cd29932ececb234f03e925bcbb8b0e70ae9f112c1c1d0ef0a4c6545381379.gz/SHA256E-s101248330212--056cd29932ececb234f03e925bcbb8b0e70ae9f112c1c1d0ef0a4c6545381379.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "Meeting notes 2020.03.05\nNot enough DNA from block to send for WES. Patient is deceased. Leave for now.\n\nMeeting notes 2019.11.21\nOrganise WES on block\n\nDiscussion in the lab area on 2019.09.20\nAfter Gayanie review on 19.09.2019, we will extract DNA straight from the snap frozen tissue, no OCT first as we have encounter issue with Kym extracting DNA for us. Extract germline DNA from the blood that was shipped with the sample over the weekend.\nSend both DNA for WGS asap \nWith the tube of mince, when ready for organoids  take it out, try organoids and ask Kathy to do 3 mice with IB   injections.";
      date_of_death = "12/2019";
      date_consented = "2019-07-16";
      tumour_type = "Cervical SCC (Squamous Cell Cancer)";
      tumour_details = "moderately differentiated Squamous Cell Carcinoma of the Cervix  FoundationOne: PIK3CA E545K";
      case_details = "WGS clinical notes\n36 yo woman with moderately differentiated Squamous Cell Carcinoma of the Cervix. Diagnosed in 2013. Recurred in 2016. Treated with ex vivo IO DC therapy in China in 2017, Followed by 18  months of platinum chemotherapy, super response. Now PD.\n\nmid 30s with moderately differentiated Squamous Cell Carcinoma of the Cervix, 5 of 6 LN pos. Diagnosed in 2013 Stage 1 with mod diff SCC\nFirst Recurrence in Aug 2016: biopsy Descending colonic LN - metastatic poorly differentiated SCC cervix\nSpinal resection of L4 compressing cord. Now metastatic disease involving bone and pelvis";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01210";
  }
