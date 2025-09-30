with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      r1 = "qq/WF/SHA256E-s29446068518--50eba48d83595768ef5665db9a70c3b41d8effba214fc45005e4ff1f211fe1b1.gz/SHA256E-s29446068518--50eba48d83595768ef5665db9a70c3b41d8effba214fc45005e4ff1f211fe1b1.gz";
      r2 = "Ww/mQ/SHA256E-s30051471282--83538371def47d5fcc0df41f122545b76f7796fc2bf194bcd7c9973499301003.gz/SHA256E-s30051471282--83538371def47d5fcc0df41f122545b76f7796fc2bf194bcd7c9973499301003.gz";
    }
    {
      site = "S2_16161_T3";
      pdx = true;
      class = "tumours";
      r1 = "mq/wW/SHA256E-s80319860118--d49b9442a77372ace6bb6fc1beef64a58b356986cc8e3e8d166374b395c4c61c.gz/SHA256E-s80319860118--d49b9442a77372ace6bb6fc1beef64a58b356986cc8e3e8d166374b395c4c61c.gz";
      r2 = "KV/Jw/SHA256E-s81646959285--7b5bbbb270fd0d1a8d335ccd90982fda85e6a340fa58f315f89e34efc9f96fd6.gz/SHA256E-s81646959285--7b5bbbb270fd0d1a8d335ccd90982fda85e6a340fa58f315f89e34efc9f96fd6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "vulval vaginal";
      meeting_discussions_follow_up = "Meeting notes 2019.12.05\nHolly to give update after pathology responds.\n\nMeeting note 2019.10.24\nPlan:  Send the H&E slides to the pathologist from email (Holly to call her first) \n\nNeed to talk to histology about cutting sections sideways (ask pathologist) as tumour cells are probably hidden \n\nMeeting notes 2019.09.26\nAsk Kristy for more details about this sample - what was frozen down?  Where is the processing form?  Need to find some tumour if possible. Surgeon was pretty sure there was some tumour.";
      date_of_death = "07/2020";
      date_consented = "2019-09-02";
      tumour_type = "Gynae cancer other";
      tumour_details = "metastatic vulval SCC, with bony metastases and lung mets";
      case_details = "Vulval cancer, EGFR Amplification\nDid not receive targeted therapy to the EGFR amplfication. Has deteriorated with pneumonitis and pneumonia (cancer suspected in lungs). Likey to die soon";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01219";
  }
