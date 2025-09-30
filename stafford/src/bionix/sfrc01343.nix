with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gx/2M/SHA256E-s37870199267--a51b2eb8f4786c3f9e3790601aa74f6252f10aaca64899a5e1099ad7e92e36b5.gz/SHA256E-s37870199267--a51b2eb8f4786c3f9e3790601aa74f6252f10aaca64899a5e1099ad7e92e36b5.gz";
      r2 = "jx/V9/SHA256E-s41916567729--f6ae78e8b82cc3740377f154ce7d41366a537dc8b77031870e8303508a36848d.gz/SHA256E-s41916567729--f6ae78e8b82cc3740377f154ce7d41366a537dc8b77031870e8303508a36848d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Z3/J1/SHA256E-s70652303008--776f07369880f350951b61463140ec4a8909303c2235e62e2eb3043f76afcafd.gz/SHA256E-s70652303008--776f07369880f350951b61463140ec4a8909303c2235e62e2eb3043f76afcafd.gz";
      r2 = "86/9X/SHA256E-s77251521425--1c252fd847f52e0d6312958b82a445fbb1167d18bbe214e8add0b6b0c736a99c.gz/SHA256E-s77251521425--1c252fd847f52e0d6312958b82a445fbb1167d18bbe214e8add0b6b0c736a99c.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "xX/Wq/SHA256E-s8041313010--cd5658efea6a3318a0a480aadc5bd466bf337019d8509014aec56400f3df34b3.gz/SHA256E-s8041313010--cd5658efea6a3318a0a480aadc5bd466bf337019d8509014aec56400f3df34b3.gz";
      r2 = "12/27/SHA256E-s8239687463--7fd8b3ab3a85a6a5c62b930e216e3b9a8547a282c81cdeec8e1f497fc1ffd94f.gz/SHA256E-s8239687463--7fd8b3ab3a85a6a5c62b930e216e3b9a8547a282c81cdeec8e1f497fc1ffd94f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "ECS";
      meeting_discussions_follow_up = "RC Meeting 01.04.2021\nImportant for Carcinosarcoma project. Can discuss findings then. \nWGS Report doesn't need to be issued unless there are familial findings. \n\nRC Meeting 04.02.2021\nWGS report discussed very quickly. 218 copies of MYCN. PDX is growing. Will need to discuss further.\n\nMeeting notes 09.11.2020\nS1 reviewed. Submit all SF for WGS? (tube with PINK tissue) \nThis is first recurrence - good piece of tumour. In comparison to other post parpi, post immunotherapy. Both CS \nDO WGS! And gDNA extraction ";
      date_of_death = "12/2020";
      d_case_summary = "77 year old female with Carcinosarcoma Endometrium recurrence post Carbo/Taxol (Sep 2019).  Her disease is amenable to biopsy (76mm R pelvis). Her cancer was found at the time of hysterectomy as an incidental finding.\nShe was treated with radiotherapy at first.MMR proficient\nWGS would be appropriate to look for actionable findings - she is asymptomatic so could wait for the outcome - ? a clinical trial?";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma";
      case_details = "Recurrent inoperable carcinosarcoma, incidentially found on elective hysterectomy\n\nImaging showed pregresive disease in pelvis, confirmed with PET. Not a surgical candidate\n\n1st line carbo/taxol, completed 3 cycles with good tolerative and Sx improvement. Need 25% dose reduction after C5 due to neuropathy, after which shows stable disease.\n\nHigh dose palliative RTx 54Gy in 30 fractions, comeplted 22 in Nov 2019\n\nCT restaging on 3/1/2020 shows partial response wiyh a reduction in size, and no evidence of metastatic disease\n\nCT on 27/7/2020 shows ongoing partial response, no evidence of metastatic disease";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01343";
  }
