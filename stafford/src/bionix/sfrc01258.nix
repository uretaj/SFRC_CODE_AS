with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 30;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mg/fX/SHA256E-s45311175859--a16d72e688b280b26cfd3ebb7fb5078637c34a81e9ed6f1e6127e6c54f633d00.gz/SHA256E-s45311175859--a16d72e688b280b26cfd3ebb7fb5078637c34a81e9ed6f1e6127e6c54f633d00.gz";
      r2 = "8w/Zj/SHA256E-s48156690369--0ea681628ab4e8066772b7ca03b229e8e2d29863c7a1f66de4d6f3b997a9cb89.gz/SHA256E-s48156690369--0ea681628ab4e8066772b7ca03b229e8e2d29863c7a1f66de4d6f3b997a9cb89.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "5Z/pj/SHA256E-s83547967740--b470134a6821b9306727b2fc932c7928148a13eaa43e3b3f0793d531cd4999a7.gz/SHA256E-s83547967740--b470134a6821b9306727b2fc932c7928148a13eaa43e3b3f0793d531cd4999a7.gz";
      r2 = "71/W0/SHA256E-s89617439430--2be136eb00d1f0d1b344a1a26308536c100d003402e752d929c46b8fbde428bf.gz/SHA256E-s89617439430--2be136eb00d1f0d1b344a1a26308536c100d003402e752d929c46b8fbde428bf.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Q9/J5/SHA256E-s4293514243--a7c486dcf22365e9be915321cdf3c4dc2541634371dc61ebee467811c0be191b.gz/SHA256E-s4293514243--a7c486dcf22365e9be915321cdf3c4dc2541634371dc61ebee467811c0be191b.gz";
      r2 = "M1/Zz/SHA256E-s4348171189--ae5681008040afb040c80ada1e1b7a5644f0d539dc6748ae777516c53b4dc177.gz/SHA256E-s4348171189--ae5681008040afb040c80ada1e1b7a5644f0d539dc6748ae777516c53b4dc177.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "Meeting notes 16.04.2020\nPlan: Report to be sent to treating clinician with additional information from Clare.\nHave a PDX, but as this is Grade 2, currently not being maintained. If immune models are improved, we will revisit. \n\nMeeting notes 30.01.2020\nSend S1 for WGS \nBriony to check HER2 report- cannot find.";
      date_of_death = "02/2024";
      date_consented = "2019-11-25";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Endometrioid endometrial adenocarcinoma  Grade 2";
      case_details = "WGS clinical notes \n73 yo endometrioid adenocarcinoma Consented at the RWH (originally input as HGSEC but path report and assessment from Gayanie both say endometrioid adenocarcinoma)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01258";
  }
