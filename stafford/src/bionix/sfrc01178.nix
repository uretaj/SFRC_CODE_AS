with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jQ/j6/SHA256E-s37128228710--0e8a3519c36554e60724e1eeca5a312aa8d3fb09743b8bdc6927db44aaff4c0a.gz/SHA256E-s37128228710--0e8a3519c36554e60724e1eeca5a312aa8d3fb09743b8bdc6927db44aaff4c0a.gz";
      r2 = "6m/G4/SHA256E-s40020785683--fd5b4f0f0936378e2aecd418f201f32eff762e329dfb20eae0155744254d5d78.gz/SHA256E-s40020785683--fd5b4f0f0936378e2aecd418f201f32eff762e329dfb20eae0155744254d5d78.gz";
    }
    {
      site = "S2+S3";
      class = "tumours";
      pdx = false;
      r1 = "V5/ZM/SHA256E-s79003124999--7f215ab1e33dcaa201dfdbd1b0c4d09de0fccfccca28c330e61a6b8f8f54eb76.gz/SHA256E-s79003124999--7f215ab1e33dcaa201dfdbd1b0c4d09de0fccfccca28c330e61a6b8f8f54eb76.gz";
      r2 = "Q3/6Q/SHA256E-s86474084406--87a2ba65869a9763dbfbe568431365c60c41d4161cd437abefd00903f55764d1.gz/SHA256E-s86474084406--87a2ba65869a9763dbfbe568431365c60c41d4161cd437abefd00903f55764d1.gz";
    }
    {
      site = "S2+S3";
      class = "rna";
      pdx = false;
      r1 = "f2/13/SHA256E-s4495286070--bf3ddcc67e18c94f7d0ad2f8e7165a7152d850b4d2f177e50a2437e1dfad1124.gz/SHA256E-s4495286070--bf3ddcc67e18c94f7d0ad2f8e7165a7152d850b4d2f177e50a2437e1dfad1124.gz";
      r2 = "52/3z/SHA256E-s4636505595--59eb20ba334eb014d1e19b2eb296bec5cd6c3a53bd528f63b27a9c4d91dc1788.gz/SHA256E-s4636505595--59eb20ba334eb014d1e19b2eb296bec5cd6c3a53bd528f63b27a9c4d91dc1788.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "CA0120";
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "Meeting notes 27.08.2020\nThe 23 cascade samples have been reviewed by Gayanie for morphology, not tumour purity or areas. Holly to assess first and make a small list for Gayanie to re-review.\n\nRC Meeting notes 11.06.2020\nAnother PDX for 1178 and will be Cascade case - CHK1i? If new mets, put into mice. \n\nMeeting notes 12.12.2019\nNot enough DNA extracted from S3, extract from S2, combine and then send for WGS. Yes, please isolate DNA from S2 OCT sections and combine DNA and send for WGS. Can wait until January. \nFlag mice as VIM (very important mouse) - if nothing comes up within 6 months, thaw mince and transplant. Put these mice far away from everything else. PDX is a priority! \n\nMeeting notes 2019.12.05\nPatient is pre lenvatinib active arm (currently screening). Send best sample for WGS. ";
      date_of_death = "06/2020";
      date_consented = "2019-05-21";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "WGS clinical notes \n70 yo woman High grade serous endometrial carcinoma Consented to the MERCK 775 trial of lenvatinib / pembrolizumab for endometrial cancer High grade poorly differentiated adenocarcinoma, p53 mutated Diagnosed on cervical biopsy 6th May 2019.";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "20/05/2022: May 2019 sample FFPE block + 1xH&E requested from RWH pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01178";
    predictNeoantigens = true;
  }
