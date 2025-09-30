with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FP/v4/SHA256E-s18643327281--7b933d63c91d9d97d0fba1c40d777ab6b8db9f834f6acd18c9d10cd7dee6361a.gz/SHA256E-s18643327281--7b933d63c91d9d97d0fba1c40d777ab6b8db9f834f6acd18c9d10cd7dee6361a.gz";
      r2 = "VF/kq/SHA256E-s19740962632--c510c4e770a01ec3e3bf7c0551720f05b91dd09cb19d33b8bb3e7b06e2627398.gz/SHA256E-s19740962632--c510c4e770a01ec3e3bf7c0551720f05b91dd09cb19d33b8bb3e7b06e2627398.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fm/XK/SHA256E-s19095584852--6ccfb4953e612e64fc28a16316297d13d698433bb39beaaaf86ca7542eb963e8.gz/SHA256E-s19095584852--6ccfb4953e612e64fc28a16316297d13d698433bb39beaaaf86ca7542eb963e8.gz";
      r2 = "Fv/m2/SHA256E-s20290926564--59fec0edd7fcedbf43a3ae90884d814c8acfd001de725e84dff6d6c23a199e83.gz/SHA256E-s20290926564--59fec0edd7fcedbf43a3ae90884d814c8acfd001de725e84dff6d6c23a199e83.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Ww/jJ/SHA256E-s19428388285--eb77e3b85c9f1f59f9ec54285235d0f44eb7a8d3ebf938c5896b178adbec07f8.gz/SHA256E-s19428388285--eb77e3b85c9f1f59f9ec54285235d0f44eb7a8d3ebf938c5896b178adbec07f8.gz";
      r2 = "32/Wp/SHA256E-s20773857340--4ceeae523c385213b0c72c10c90b6f6aa1a7ac40c203ca4cc5efa40b6177e8fe.gz/SHA256E-s20773857340--4ceeae523c385213b0c72c10c90b6f6aa1a7ac40c203ca4cc5efa40b6177e8fe.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M3/0x/SHA256E-s18862526722--c89c24666e43b47cf9ead9a315c8e57fdf800e75af35b6d0645b8097fbcc6dbb.gz/SHA256E-s18862526722--c89c24666e43b47cf9ead9a315c8e57fdf800e75af35b6d0645b8097fbcc6dbb.gz";
      r2 = "m7/zv/SHA256E-s20038496844--457acd516d12ba4e4ad5e1ee24844046e5fffe223e92b80de173496b83ff3333.gz/SHA256E-s20038496844--457acd516d12ba4e4ad5e1ee24844046e5fffe223e92b80de173496b83ff3333.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "jV/6G/SHA256E-s26875635969--2efb2f9c62a91906f572f9936a6e7ed93439c647b5299bc8d7425abf1e6a0f62.gz/SHA256E-s26875635969--2efb2f9c62a91906f572f9936a6e7ed93439c647b5299bc8d7425abf1e6a0f62.gz";
      r2 = "8Z/zZ/SHA256E-s28400970702--d6dd73271676fde58c029929d8f7dc7f43f69e121501492ca4de794f1b408a32.gz/SHA256E-s28400970702--d6dd73271676fde58c029929d8f7dc7f43f69e121501492ca4de794f1b408a32.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "gP/91/SHA256E-s27490224405--afc650ce249b96f27278aba21cd48e34f68afdc445e180bdb3c801a6c707c342.gz/SHA256E-s27490224405--afc650ce249b96f27278aba21cd48e34f68afdc445e180bdb3c801a6c707c342.gz";
      r2 = "WK/KJ/SHA256E-s29154384462--06ae0135aee2b19ef16f113396f8d754489272ca2ea61d2d38eb2dacad81cee6.gz/SHA256E-s29154384462--06ae0135aee2b19ef16f113396f8d754489272ca2ea61d2d38eb2dacad81cee6.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "F1/02/SHA256E-s28074357150--994333851a0345147c2a14f0cb305bd1d4566b5f0954ea76b61b25ef2739e96d.gz/SHA256E-s28074357150--994333851a0345147c2a14f0cb305bd1d4566b5f0954ea76b61b25ef2739e96d.gz";
      r2 = "J2/M4/SHA256E-s29952302469--b6647c6730996e4a615b76ada9a9fb494d5e0a684606aea7a8559a2f15cb9a3c.gz/SHA256E-s29952302469--b6647c6730996e4a615b76ada9a9fb494d5e0a684606aea7a8559a2f15cb9a3c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "w5/52/SHA256E-s27001015329--67f62e94f4b52944241849cfc2ed574b424ae817f4bc1515632c7a51806bddce.gz/SHA256E-s27001015329--67f62e94f4b52944241849cfc2ed574b424ae817f4bc1515632c7a51806bddce.gz";
      r2 = "6M/wX/SHA256E-s28619966791--ef293060e952c69acb4d7d53244bde0d5498170792f0e5d8fcaa77e5fe83890c.gz/SHA256E-s28619966791--ef293060e952c69acb4d7d53244bde0d5498170792f0e5d8fcaa77e5fe83890c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "vulval vaginal";
      meeting_discussions_follow_up = "RC Meeting 29.04.2021\nDiscussed WGS report.\nBecause of ZNF217, need to target both HER2 and HER3. Neratinib?  \nSRC - actionable - dasatanib (FAKi)\nCDKN2A mutation - palbociclib \nNF1 could be targeted, possibly with MEK inhibitors, dual Raf/Raf1\n\n2021.02.25\nHave 330 ng DNA from OCT sections. Submit for WGS";
      date_of_death = "9/2021";
      d_case_summary = "56 year old woman with delayed diagnosis of vaginal carcinoma. Eventually developed significant pelvic symptoms due to local disease. Initial PET demonstrated large primary and tiny lung mets. Underwent chemoradiation and brachytherapy for local control and now receiving carbo/taxol. Due cycle 5 in 2 weeks. Would like to find a clinical trial of hopefully immunotherapy as next line of therapy. Patient experienced very signficant disease progression in the lungs during primary chemoradiation and now has very extensive lung mets but scans show partial response after 3 cycles of carbo/taxol.\nFor re-biopsy of lungs for WGS on 15 Feb 2021. Bloods to be collected as well on same day.";
      tumour_type = "Gynae cancer other";
      tumour_details = "vaginal adenocarcinoma, HER2 positive";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01372";
    disableManta = true;
  }
