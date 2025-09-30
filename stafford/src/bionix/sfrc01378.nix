with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
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
      r1 = "K3/g3/SHA256E-s13173715049--764d28c43b9c0bb2d1b48e1865f4861a3d6bc01a2445fd0aa2a627a72c3d3d4b.gz/SHA256E-s13173715049--764d28c43b9c0bb2d1b48e1865f4861a3d6bc01a2445fd0aa2a627a72c3d3d4b.gz";
      r2 = "0m/F1/SHA256E-s15326163332--e3f7cc0176911bf1d32a2ae397c08c392ec1616833220240198e7dded9c1981f.gz/SHA256E-s15326163332--e3f7cc0176911bf1d32a2ae397c08c392ec1616833220240198e7dded9c1981f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M6/ZG/SHA256E-s13411184475--a8e2e0e07184d8b98ffcc7164154691d7f63b0126278b327ee3ff7d2c1367af0.gz/SHA256E-s13411184475--a8e2e0e07184d8b98ffcc7164154691d7f63b0126278b327ee3ff7d2c1367af0.gz";
      r2 = "9M/WQ/SHA256E-s15572398863--2eb8589d554498014de943ca9c1c9e758583d56b9ca1166f6d77cc169738e4b7.gz/SHA256E-s15572398863--2eb8589d554498014de943ca9c1c9e758583d56b9ca1166f6d77cc169738e4b7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qj/FW/SHA256E-s13313950058--e89b37d3ea5a5dc1da0f039c58d79a172a6f931fcce47c40a79fb450f4b1c311.gz/SHA256E-s13313950058--e89b37d3ea5a5dc1da0f039c58d79a172a6f931fcce47c40a79fb450f4b1c311.gz";
      r2 = "gX/7J/SHA256E-s15500695016--1b5c0bf5a66eff3383426111afc6b49a001cef0c43a420b3607ac6cff1d2ace6.gz/SHA256E-s15500695016--1b5c0bf5a66eff3383426111afc6b49a001cef0c43a420b3607ac6cff1d2ace6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m1/65/SHA256E-s13392066259--8ec137352f308f115bdca7e969f54d6fdf0340fd8da39c2150bdcfd6bb0ac09d.gz/SHA256E-s13392066259--8ec137352f308f115bdca7e969f54d6fdf0340fd8da39c2150bdcfd6bb0ac09d.gz";
      r2 = "g7/qM/SHA256E-s15672822637--097da0b3d2eae7a819b8e2e0bb6095d174e2d0385ad95fa837670bd8382d257f.gz/SHA256E-s15672822637--097da0b3d2eae7a819b8e2e0bb6095d174e2d0385ad95fa837670bd8382d257f.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "VK/6Q/SHA256E-s19539251285--fd74cbea7a26611a63159c7f4c9fe4daac2f32b858882b2ba0a30b68761bb3b2.gz/SHA256E-s19539251285--fd74cbea7a26611a63159c7f4c9fe4daac2f32b858882b2ba0a30b68761bb3b2.gz";
      r2 = "Q6/2W/SHA256E-s21316049745--47d94c6a787f278f5eade609d4c6b418044e4ef96b4de753208458a25b39df2a.gz/SHA256E-s21316049745--47d94c6a787f278f5eade609d4c6b418044e4ef96b4de753208458a25b39df2a.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "5W/Kk/SHA256E-s19984649224--c420d7c6c8ea1994264975731a60e2a89c4e51b35f6c2a6f2b47ab0254f27e37.gz/SHA256E-s19984649224--c420d7c6c8ea1994264975731a60e2a89c4e51b35f6c2a6f2b47ab0254f27e37.gz";
      r2 = "v4/mg/SHA256E-s21793596974--2b8babe3149a9d4a1897fb80bbe1f929d6e03371a47a263337cf34f825a65173.gz/SHA256E-s21793596974--2b8babe3149a9d4a1897fb80bbe1f929d6e03371a47a263337cf34f825a65173.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Zf/6J/SHA256E-s19791937008--c3ff52ed3c96f2c7dd975c99057af700f82f4aa5f29db14de8e79a9d991ae187.gz/SHA256E-s19791937008--c3ff52ed3c96f2c7dd975c99057af700f82f4aa5f29db14de8e79a9d991ae187.gz";
      r2 = "Gj/3j/SHA256E-s21590569727--0ab21f029855b6cecbf6144f868588e4f9bdc6edc07df8b529038899420b09bf.gz/SHA256E-s21590569727--0ab21f029855b6cecbf6144f868588e4f9bdc6edc07df8b529038899420b09bf.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "f5/4w/SHA256E-s19930389501--0e11cd4a21079f9b12b53bb6030eb66ee02779128de06cdc509875fcd620ae39.gz/SHA256E-s19930389501--0e11cd4a21079f9b12b53bb6030eb66ee02779128de06cdc509875fcd620ae39.gz";
      r2 = "W3/FJ/SHA256E-s21893691975--c3d731907d5218bc0afd7ffd47c41765b648483bb4c1f05b7150611953e046fc.gz/SHA256E-s21893691975--c3d731907d5218bc0afd7ffd47c41765b648483bb4c1f05b7150611953e046fc.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "gX/Gg/SHA256E-s13464039208--8542d005b7f53f3d45ed17295bdf8293ece90fe648fd5acb6ca639a08c25260c.gz/SHA256E-s13464039208--8542d005b7f53f3d45ed17295bdf8293ece90fe648fd5acb6ca639a08c25260c.gz";
      r2 = "zJ/06/SHA256E-s13197773433--b3ce836c62f8333299d4588b47a550564a236a3c473622b0494457427e1d97ee.gz/SHA256E-s13197773433--b3ce836c62f8333299d4588b47a550564a236a3c473622b0494457427e1d97ee.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC Meeting 27.05.2021\nWGS Discussion: Loss of WT allele (gSKT11). \nNo other drivers. Everolimus has been successful in other STK11 cases. \nNeed to know how the patient is doing. STK11 involved in the tumour, no other driver events. mTORi may be helpful in the future. \n\nClare meeting 08.04.2021\nSend SF (S2) for WGS";
      date_of_death = "12/2022";
      d_case_summary = "patient with Peutz Jeghers Syndrome, with recurrent STK11 altered adnexal tumour to peritoneum, liver  /- left pleura.\n \nTo summarise her history:\n•  17/3/30  -  Presentation with 20cm pelvic mass, low volume peritoneal disease, hypercalcaemia. Laparotomy,  right  salpingoophorectomy,  peritonectomy,  right  diaphragm stripping.  Nil residual disease.\n•  June 2020 - Completed 4 x adjuvant BEP (3 x BEP, 1 x EP)\n•  December 2020 - Low volume peritoneal/pelvic recurrence after 6 month PFI, being worked up for peritonectomy  /- HIPEC at Lifehouse next week.\n \nNow presents with abdominal pain and has rapidly progressive/bulky abdominopelvic peritoneal disease, a new 4cm liver met, small left pleural effusion (cytology pending). The tempo of her symptoms seemed to increase over the last fortnight or so coinciding with subcutaneous hormone treatment in preparation for egg harvesting. ER/PR staining wasn't performed on her initial histo and has been added on urgently.\n \nIf the left pleura is negative (it could be parapneumonic), aggressive surgery at Lifehouse comprising peritonectomy   liver resection hasn't been ruled out, though given her bulk of her disease I'm concerned it may not be feasible.\n";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Right ovarian STK11 altered adnexal tumour to peritoneum (poorly differentiated sex cord stromal tumour)  Peutz-Jeghers syndrome";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01378";
  }
