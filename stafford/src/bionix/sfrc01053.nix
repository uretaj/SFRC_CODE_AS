with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "WX/6Q/SHA256E-s11531776097--247e8cb4a0dec4a30a85289753daa4780c53b2d3961d9edee962bbd0ca33f9cf.gz/SHA256E-s11531776097--247e8cb4a0dec4a30a85289753daa4780c53b2d3961d9edee962bbd0ca33f9cf.gz";
      r2 = "1G/fq/SHA256E-s10602404181--573bec54c52f4c82d13b599cd8ad8014f3243082cb6d81b343021615be84f888.gz/SHA256E-s10602404181--573bec54c52f4c82d13b599cd8ad8014f3243082cb6d81b343021615be84f888.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "WK/VP/SHA256E-s4915649402--2d66a331d6511d8f772d85da4aa87bcc41699d295bcbac02eb0575875abe2cf5.gz/SHA256E-s4915649402--2d66a331d6511d8f772d85da4aa87bcc41699d295bcbac02eb0575875abe2cf5.gz";
      r2 = "G3/0p/SHA256E-s5035969380--462747fc6ee5fe285e1d0031f4ab9631278217a2718b6caa489aebe9795ce64f.gz/SHA256E-s5035969380--462747fc6ee5fe285e1d0031f4ab9631278217a2718b6caa489aebe9795ce64f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kf/j4/SHA256E-s5103848168--99f7c6ca0d59882f51b1be4e721ac25212d105bf3f83d7ed83e7271f191146e7.gz/SHA256E-s5103848168--99f7c6ca0d59882f51b1be4e721ac25212d105bf3f83d7ed83e7271f191146e7.gz";
      r2 = "Wz/gZ/SHA256E-s4817527214--26a555d44470f41147a93bac40a030c8bb7fd6f448df5c039048b8b3cbe4ccab.gz/SHA256E-s4817527214--26a555d44470f41147a93bac40a030c8bb7fd6f448df5c039048b8b3cbe4ccab.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j0/M5/SHA256E-s2008337631--630d5b6d72a4079e2a83f11e83dabd9fb5a907a21c6211991262e4a54532f9f1.gz/SHA256E-s2008337631--630d5b6d72a4079e2a83f11e83dabd9fb5a907a21c6211991262e4a54532f9f1.gz";
      r2 = "FK/vP/SHA256E-s2093889532--e8c6bd870e170a3bf75596316cadd8654090845d0e69423bb50f078831e3cb0b.gz/SHA256E-s2093889532--e8c6bd870e170a3bf75596316cadd8654090845d0e69423bb50f078831e3cb0b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      date_consented = "2017-08-15";
      tumour_type = "HGSEC";
      tumour_details = "Serous carcinoma of endometrium, presumed high grade";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01053";
    predictNeoantigens = true;
  }
