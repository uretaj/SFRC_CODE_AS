with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 64;};})];
}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "Mv/3Z/SHA256E-s18217537532--cb40d95081c4dade23047757e8aa9661ec34064643316cdfa582f321bb72b98b.gz/SHA256E-s18217537532--cb40d95081c4dade23047757e8aa9661ec34064643316cdfa582f321bb72b98b.gz";
      r2 = "99/0J/SHA256E-s18791597966--9c746f293d8faaa83083830fa9392644cdd3f71ffd6e02af6fd5bf5051929299.gz/SHA256E-s18791597966--9c746f293d8faaa83083830fa9392644cdd3f71ffd6e02af6fd5bf5051929299.gz";
    }
    {
      site = "3";
      class = "normals";
      pdx = false;
      r1 = "Vq/Kq/SHA256E-s17732062711--61b0283446ddc5e63bc5bd37ceb97bf19b2364506b0154f3013980a203334d1d.gz/SHA256E-s17732062711--61b0283446ddc5e63bc5bd37ceb97bf19b2364506b0154f3013980a203334d1d.gz";
      r2 = "M5/22/SHA256E-s18226118190--a4f32c9a5b638e5641c7b046418bdac5df27455e81991498a067b2a810e28d67.gz/SHA256E-s18226118190--a4f32c9a5b638e5641c7b046418bdac5df27455e81991498a067b2a810e28d67.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "2021.08.12\nKristy's request: HGSOC deceased before germline DNA obtained. Now have germline from an FFPE block. Has gone for BROCA. Do we want WES? \nYes for WES \n\n2020.09.18 Clare meeting\nPatient has died. Source of germline would be a normal tissue block. Josh requested. FFPE DNA has been sent for BROCA.\n\n2020.06.18 Clare meeting\n2 x blood DNA extraction failures likely due to the high number of transfusions.\nClare to speak to Heather/Sean/Tony about alternative sources of germline DNA. This will be for WES (purely Research project, WES unlikely to assist in treatment for this patient). Need to call in block for HGSOC (Ratana already asked Josh).  \n\n2020.05.21 Clare meeting\nDNA extraction of B1 attempted twice - need new blood sample. IHC not reviewed yet. \nPlan:  Briony chasing up path report ";
      date_of_death = "07/2020";
      date_consented = "2020-03-24";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, Burkitt's Lymphoma, myelodysplasia";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2012 HGSOC tissue recalled for Ratana on 29/07/2020 via fax from Melbourne Pathology by Josh\n\n2012 HGSOC tissue block 1H received 30/08/2020 by Josh\n\n2014 normal tissue recalled for Ratana for germline DNA extraction on 21/09/2020 by Josh (due to patient death)\n\n2014 normal tissue received Block 3 on 1/10/2020";
      mp_subgroup_sfrcp4_new_id = "2 plus 1 or more non-malignant";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01288";
    predictNeoantigens = true;
  }
