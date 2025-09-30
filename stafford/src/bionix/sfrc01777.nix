with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "XQ/gM/SHA256E-s866337265--36412c22be34b27915154c665cbf2236e89549512567e560d7757bb2022260fa.gz/SHA256E-s866337265--36412c22be34b27915154c665cbf2236e89549512567e560d7757bb2022260fa.gz";
      r2 = "vJ/2v/SHA256E-s886158175--c18bd5a503dbdc3b54941153e4c141dbc23d9a7b972aaedba36fa096dc4b2b1b.gz/SHA256E-s886158175--c18bd5a503dbdc3b54941153e4c141dbc23d9a7b972aaedba36fa096dc4b2b1b.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "8P/Xq/SHA256E-s867563475--5bdb194de73fe35a71ac95a1e1eb654ded459c0c6f56a72e0c957ba0c352f5fc.gz/SHA256E-s867563475--5bdb194de73fe35a71ac95a1e1eb654ded459c0c6f56a72e0c957ba0c352f5fc.gz";
      r2 = "f9/2g/SHA256E-s886786986--9d74987ec0fe0fed8ee4c9191debbd8ce267ed119e462125145289d4899077c9.gz/SHA256E-s886786986--9d74987ec0fe0fed8ee4c9191debbd8ce267ed119e462125145289d4899077c9.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "5J/vV/SHA256E-s915407601--5ecc802fbf34889a802317899a4b6189b8462e9398681a179d33adcc7998bbf8.gz/SHA256E-s915407601--5ecc802fbf34889a802317899a4b6189b8462e9398681a179d33adcc7998bbf8.gz";
      r2 = "7m/X9/SHA256E-s937147145--05b117ce8df0ad10bd0a38ad1174048a502dd2e2b295dbc91628d0905c297b2b.gz/SHA256E-s937147145--05b117ce8df0ad10bd0a38ad1174048a502dd2e2b295dbc91628d0905c297b2b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FX/gk/SHA256E-s493627423--0cdf9a74c69988e8bb369ce68e678376950abe948286871f54527918f86c7489.gz/SHA256E-s493627423--0cdf9a74c69988e8bb369ce68e678376950abe948286871f54527918f86c7489.gz";
      r2 = "6j/9G/SHA256E-s508331241--a1e24258f7a4123ab7cae5db6bbc8228bd68ba02209a4ad262310d932eb92b1d.gz/SHA256E-s508331241--a1e24258f7a4123ab7cae5db6bbc8228bd68ba02209a4ad262310d932eb92b1d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "JG/kW/SHA256E-s507268107--40ad9c7cbc521d9f73698160a51bac52e700011cbc40c8ec3cfb5464a3c0ba7b.gz/SHA256E-s507268107--40ad9c7cbc521d9f73698160a51bac52e700011cbc40c8ec3cfb5464a3c0ba7b.gz";
      r2 = "w8/2j/SHA256E-s522515017--e7eeae9aaa4a7d68029d95bf5cc3ac6387ac4a82ba92dba5ae28225bf9b94620.gz/SHA256E-s522515017--e7eeae9aaa4a7d68029d95bf5cc3ac6387ac4a82ba92dba5ae28225bf9b94620.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zj/3M/SHA256E-s573811925--a6232d6425676cc898b2fab3b4ebe94a7a47e2dcd49d88ca00947d7b0e453b01.gz/SHA256E-s573811925--a6232d6425676cc898b2fab3b4ebe94a7a47e2dcd49d88ca00947d7b0e453b01.gz";
      r2 = "xG/9Q/SHA256E-s593761015--98de70c6690ae1bfea92fb9cdaf3da14ecdebc7064d7c858ad80f8b4f4b98fb8.gz/SHA256E-s593761015--98de70c6690ae1bfea92fb9cdaf3da14ecdebc7064d7c858ad80f8b4f4b98fb8.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "f8/G6/SHA256E-s110313892--617bf60fc7864e9f0cc2eb728984751d6a4505494a4a8ccb7ea99796efc28497.gz/SHA256E-s110313892--617bf60fc7864e9f0cc2eb728984751d6a4505494a4a8ccb7ea99796efc28497.gz";
      r2 = "zw/Pj/SHA256E-s111175101--32ea8dac0a5c8e9d04f0f65b4b157a0b8c56bcd8e672fd222a496f2184cc69be.gz/SHA256E-s111175101--32ea8dac0a5c8e9d04f0f65b4b157a0b8c56bcd8e672fd222a496f2184cc69be.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "28/6k/SHA256E-s60680540--9b618d9d490c6fe126999c2dc3947024981e1ecefcaf9ff6a96316124169ce6b.gz/SHA256E-s60680540--9b618d9d490c6fe126999c2dc3947024981e1ecefcaf9ff6a96316124169ce6b.gz";
      r2 = "K2/kg/SHA256E-s60491102--0f655ebd20dde80f3df21d288302742e7a71f3237949b7eb032a6786db8f6b5a.gz/SHA256E-s60491102--0f655ebd20dde80f3df21d288302742e7a71f3237949b7eb032a6786db8f6b5a.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "8W/V8/SHA256E-s107510178--859eb7b0c8974f906e9edff54e2450d903b6ef7a48ab275edd74cadb253bfd59.gz/SHA256E-s107510178--859eb7b0c8974f906e9edff54e2450d903b6ef7a48ab275edd74cadb253bfd59.gz";
      r2 = "7v/w2/SHA256E-s108345364--4b6230a30fd32391c170bfadcc57202a7c4e2627fefd7e036f70550d2f7d0f9a.gz/SHA256E-s108345364--4b6230a30fd32391c170bfadcc57202a7c4e2627fefd7e036f70550d2f7d0f9a.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "9p/V9/SHA256E-s126308633--7827a10aacf74542b32217e94c33538f611bfb7db6a0fe2c52d82f7b9bbd6e53.gz/SHA256E-s126308633--7827a10aacf74542b32217e94c33538f611bfb7db6a0fe2c52d82f7b9bbd6e53.gz";
      r2 = "1w/vg/SHA256E-s128344125--2093ef4d85044768a76e2429201a5de249f6b03a703602becd6c3b3efc8b81fb.gz/SHA256E-s128344125--2093ef4d85044768a76e2429201a5de249f6b03a703602becd6c3b3efc8b81fb.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "kj/jQ/SHA256E-s340848432--b35d17975b90c23d0b5d44e8edba931629cffa56eb5acebc31ab3cb0b0baebdf.gz/SHA256E-s340848432--b35d17975b90c23d0b5d44e8edba931629cffa56eb5acebc31ab3cb0b0baebdf.gz";
      r2 = "g3/xf/SHA256E-s346366725--5d5d5262bc9d59eb4497af73a4c3d3556e96e16094ff069399ddb42eb867c62c.gz/SHA256E-s346366725--5d5d5262bc9d59eb4497af73a4c3d3556e96e16094ff069399ddb42eb867c62c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 9.5.24:\nSusan Ramos to be emailed about this case. New letter coming. Patient is well. \n\nSample meeting with Clare 16.11.2023\nPlan on FFPE block 2D: Do WES for multiple primary project (?PTEN germline). Re breast and thyroid cancer. Check if patient has gone to FCC ";
      blood_recall_history = "sent her tubes on the 12th Sep -AA";
      d_case_summary = "51yF diagnosed with ALL 1986, lymphoblastic lymphoma R breast 1996, papillary thyroid cancer 1998, parotid tumour 2019, right breast cancer 2018.";
      date_consented = "2023-05-18";
      tumour_type = "Other rare";
      mp_sfrcp_family_yes_no = "No";
      tumour_details = "ALL, Breast ca, papillary thyroid ca, parotid tumour.";
      case_details = "52 F  \n\n1986\tDx acute lymphoblastic leukaemia\n1996\tDx lymphoblastic lymphoma in right breast (radiotherapy)\n1996\tDx papillary thyroid cancer (thyroidectomy and iodine-131)\nJan-18\tDx right breast cancer (invasive ductal carcinoma with associated DCIS) (right mastectomy, ALND; TC x4 completed Apr18; commenced Tamoxifen Aug18)\nFeb-19\tDx parotid tumour (mucoepidermoid carcinoma) (parotidectomy and LN dissection; RTx)\n\n2023-01\tBlood B1 received  ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      other_tumour_type = "ALL, Breast ca, papillary thyroid ca, parotid tumour.";
      arc_enrol_date = "2023-06-30";
      portal_letter = "SFRC01777_ARCLetter_16Jun2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "11-Sep-23 Added to tracker LR\n12Sep23: Feb19 sample requested from SydPath by Monica\n4Oct23:Feb19 sample received from SydPath by Haris";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01777";
  }
