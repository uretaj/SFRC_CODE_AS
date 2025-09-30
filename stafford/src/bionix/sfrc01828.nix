with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7q/z9/SHA256E-s2276113919--f47259bff3aeceec31f02f9d0ae46551c6cfece444bcc38994bc3cb0660294d2.gz/SHA256E-s2276113919--f47259bff3aeceec31f02f9d0ae46551c6cfece444bcc38994bc3cb0660294d2.gz";
      r2 = "k1/w0/SHA256E-s2295118160--bc18daa147c00d51015da560b8574c1bbe60431112475488c13abb5be3990b45.gz/SHA256E-s2295118160--bc18daa147c00d51015da560b8574c1bbe60431112475488c13abb5be3990b45.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6k/1w/SHA256E-s2290155646--7a722d9a636547fe6ade405da98063f1505eb66bb8b3275d078c6ee348ffb2a3.gz/SHA256E-s2290155646--7a722d9a636547fe6ade405da98063f1505eb66bb8b3275d078c6ee348ffb2a3.gz";
      r2 = "48/qg/SHA256E-s2324751871--f021df3999acf769cd008061aa50d50161e759b5bf9ceb1d056769d3e58589ff.gz/SHA256E-s2324751871--f021df3999acf769cd008061aa50d50161e759b5bf9ceb1d056769d3e58589ff.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3q/71/SHA256E-s2264440033--45897af2424bf44ddcef05b3268d4e5c4f30fdf748c8e1568d5fb05eff2a4fe0.gz/SHA256E-s2264440033--45897af2424bf44ddcef05b3268d4e5c4f30fdf748c8e1568d5fb05eff2a4fe0.gz";
      r2 = "j9/83/SHA256E-s2291388115--975e4d5a813dc88bcd86a3f39dfc9924fc21b3eb210cfb5fb471c8ddab0a4a84.gz/SHA256E-s2291388115--975e4d5a813dc88bcd86a3f39dfc9924fc21b3eb210cfb5fb471c8ddab0a4a84.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xF/F4/SHA256E-s2413821785--4bef2057c2d7a26540f77bbbe0a5c00187fbac920106da5ff5e99f13e44cca3c.gz/SHA256E-s2413821785--4bef2057c2d7a26540f77bbbe0a5c00187fbac920106da5ff5e99f13e44cca3c.gz";
      r2 = "X4/VF/SHA256E-s2458068503--853ef5c5b712a48bf7857b6f60b88892f18cbfc026532441711d07a2ff4efbae.gz/SHA256E-s2458068503--853ef5c5b712a48bf7857b6f60b88892f18cbfc026532441711d07a2ff4efbae.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "W5/f9/SHA256E-s2067763871--9b0e2e0948a2da51ce0d4d993c1eabad93a6b06874b43ac488dba780b7c3ec27.gz/SHA256E-s2067763871--9b0e2e0948a2da51ce0d4d993c1eabad93a6b06874b43ac488dba780b7c3ec27.gz";
      r2 = "3Z/ZW/SHA256E-s2078909762--a83a048fa10758e6d5bfab7c0e38cde3f7e64f59e1eebb048c5f16c91d9969ce.gz/SHA256E-s2078909762--a83a048fa10758e6d5bfab7c0e38cde3f7e64f59e1eebb048c5f16c91d9969ce.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "wX/g7/SHA256E-s2075910604--baf0127c73d535783153cc952c2b89fa409b3c3a226ead30015100af899190bf.gz/SHA256E-s2075910604--baf0127c73d535783153cc952c2b89fa409b3c3a226ead30015100af899190bf.gz";
      r2 = "2F/10/SHA256E-s2100607223--0aec9e0f37021cd34b8eabbde9260a4e5202966afb6d89d91b8efbf4c81011ad.gz/SHA256E-s2100607223--0aec9e0f37021cd34b8eabbde9260a4e5202966afb6d89d91b8efbf4c81011ad.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "PW/QJ/SHA256E-s2051474411--9b21a0abf352301ed07a4bce5ab8211ccb895137ad14dbcae23f65515a215d09.gz/SHA256E-s2051474411--9b21a0abf352301ed07a4bce5ab8211ccb895137ad14dbcae23f65515a215d09.gz";
      r2 = "08/gj/SHA256E-s2069664906--15ffc7c5e14688be2ddac28364ce4d8e2ab1ee1bd873138e0f9a66955ef4a413.gz/SHA256E-s2069664906--15ffc7c5e14688be2ddac28364ce4d8e2ab1ee1bd873138e0f9a66955ef4a413.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "jZ/KZ/SHA256E-s2195267049--ac9cb252c78db8dced0d5756225aa886dcce7a96adc96538d46a38f8e4f48a47.gz/SHA256E-s2195267049--ac9cb252c78db8dced0d5756225aa886dcce7a96adc96538d46a38f8e4f48a47.gz";
      r2 = "jg/K3/SHA256E-s2229122701--b957db905ff91e2660d89591a51b02f2f782a71430cc64c59f3b035094cdc015.gz/SHA256E-s2229122701--b957db905ff91e2660d89591a51b02f2f782a71430cc64c59f3b035094cdc015.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 15.02.2024:\nNo Her2 amplification detected by WES but still check it by IHC (Briony to follow up if this was done at PeterMac).\n\n    Ask Damien to check about any possible trials (mTOR NF1? AKT inhib? WNT?) \n\n\nClare meeting 05.10.2023\nReviewed S1 OCT block.\nPlan: For WES. \nCheck HER2 status. Clinicians to do (or let us know to do) ";
      d_case_summary = "Stage IIA1 adenocarcinoma of cervix, gastric type, HPV independent, dx 2021, 1st line chemoradiotherapy completed Jul 2021, recurrence 2022, brachytherapy, recurrence 2023.";
      date_consented = "2023-09-21";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Stage IIA1 adenocarcinoma of the cervix, gastric type, HPV independent";
      brca_report = "SFRC01828_Familial_BreastOvarianCancerGene_Report_08May20214_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-09-21";
      portal_letter = "SFRC01828_ClinicalNotes_15SEp2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    inherit samples;
    name = "SFRC01828";
    capture = TwistV2HR;
  }
