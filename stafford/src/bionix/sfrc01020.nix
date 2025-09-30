with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 30;};})];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "p4/x2/SHA256E-s7340510545--55617be76ad9c3426e12ce7aaeaaeb5a44f15ff67e02492165c70eab0a59adad.gz/SHA256E-s7340510545--55617be76ad9c3426e12ce7aaeaaeb5a44f15ff67e02492165c70eab0a59adad.gz";
      r2 = "Mk/10/SHA256E-s7658144630--6a9c3046c6f4eb833bb0f0a5626bcd185708e04fb1cbb45e29a359bcaecaee89.gz/SHA256E-s7658144630--6a9c3046c6f4eb833bb0f0a5626bcd185708e04fb1cbb45e29a359bcaecaee89.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "fm/vg/SHA256E-s6978301202--60f45cd4a6c9175181cf79c8c436a0f4ccec288be650451a935768338ce180b8.gz/SHA256E-s6978301202--60f45cd4a6c9175181cf79c8c436a0f4ccec288be650451a935768338ce180b8.gz";
      r2 = "84/XV/SHA256E-s7280886052--88d4470d2e313930cea8b39df66fc3288e6545af5039173db340eaaef2e0b0d5.gz/SHA256E-s7280886052--88d4470d2e313930cea8b39df66fc3288e6545af5039173db340eaaef2e0b0d5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Redcap meeting 28.02.2020\nLet Gen know that this is a patient for Never Responder and WES has been done. Had FCC panel germline testing, Clare to get results.";
      date_of_death = "05/2017";
      date_consented = "2016-09-13";
      tumour_type = "Pancreatic cancer";
      tumour_details = "Pancreatic/CUP";
      case_details = "Sample contact: Damien via Austin ";
      pre_analysis_mutations = "FCC - gBRCA1/2 WT";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2016 Adenocarcinoma tissue recalled from ACL a/p Gen (2nd block as 1st is exhausted) via fax on 9/10/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01020";
    capture = CREv2;
    predictNeoantigens = true;
  }
