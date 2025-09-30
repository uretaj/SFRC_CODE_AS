with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Wv/2G/SHA256E-s12851661142--59c91e62118074415605a66e1bb8a088ca10df50140c13c14b399e55b8a16481.gz/SHA256E-s12851661142--59c91e62118074415605a66e1bb8a088ca10df50140c13c14b399e55b8a16481.gz";
      r2 = "8w/J5/SHA256E-s14064448441--fe8e486bdc28a24c84b87bdd82d9f581d705bc3025661c767507bf5709284c63.gz/SHA256E-s14064448441--fe8e486bdc28a24c84b87bdd82d9f581d705bc3025661c767507bf5709284c63.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3q/m5/SHA256E-s12953787654--0193d55720ffbb68f58cffe3169740b1bd2fcf60d0ee2531e2a4ac9c204801b1.gz/SHA256E-s12953787654--0193d55720ffbb68f58cffe3169740b1bd2fcf60d0ee2531e2a4ac9c204801b1.gz";
      r2 = "X5/GW/SHA256E-s14225532620--d773e7b2674281c47d3b8dea757c8f6088a86c39c121350103c6dd5eee40323d.gz/SHA256E-s14225532620--d773e7b2674281c47d3b8dea757c8f6088a86c39c121350103c6dd5eee40323d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4M/44/SHA256E-s12941516190--501b4aba493896c979b5f7b3ce776cc1b6d9528021f2feabfdca83e8126dd38b.gz/SHA256E-s12941516190--501b4aba493896c979b5f7b3ce776cc1b6d9528021f2feabfdca83e8126dd38b.gz";
      r2 = "41/34/SHA256E-s14202657525--d8b218dbff1e9fc5ce77e716f0dcc6e9a643404b108d9c2dd23b3b0337b9fe84.gz/SHA256E-s14202657525--d8b218dbff1e9fc5ce77e716f0dcc6e9a643404b108d9c2dd23b3b0337b9fe84.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "f3/Zj/SHA256E-s13115236920--31f043f4868516119ab5bfa1758cc4de8e02b784d1d0ceb6c8fc852e99d9e0e6.gz/SHA256E-s13115236920--31f043f4868516119ab5bfa1758cc4de8e02b784d1d0ceb6c8fc852e99d9e0e6.gz";
      r2 = "0W/vK/SHA256E-s14500613147--59f00f2dc075c84f2ede63bcb21c2a13253eaf96e8619bff7481d703c93452eb.gz/SHA256E-s14500613147--59f00f2dc075c84f2ede63bcb21c2a13253eaf96e8619bff7481d703c93452eb.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Jm/XQ/SHA256E-s20358169879--a6a043b37478dc1905e13b70d0f458b028ebdbdedf73d9632dc167817d13f88b.gz/SHA256E-s20358169879--a6a043b37478dc1905e13b70d0f458b028ebdbdedf73d9632dc167817d13f88b.gz";
      r2 = "p0/JG/SHA256E-s22162123390--e95693658779bce9ab359b5a2a872de3307983c23272212dd53eb99a7e96beee.gz/SHA256E-s22162123390--e95693658779bce9ab359b5a2a872de3307983c23272212dd53eb99a7e96beee.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "jm/mK/SHA256E-s20247113647--fe45e2fcd896162dc86f2584cb8acdc1a7891ba99a5cc0129bb6461085c6cb32.gz/SHA256E-s20247113647--fe45e2fcd896162dc86f2584cb8acdc1a7891ba99a5cc0129bb6461085c6cb32.gz";
      r2 = "kq/vj/SHA256E-s22103392997--30550e647c7b742f95626104daf70d9851f24c951f86a8ff68e9c18bb6680b04.gz/SHA256E-s22103392997--30550e647c7b742f95626104daf70d9851f24c951f86a8ff68e9c18bb6680b04.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "9x/m9/SHA256E-s20416818798--190eef1e2ddc4ff742f133772d26ecfc9f228387f99f667121db0d0704f61157.gz/SHA256E-s20416818798--190eef1e2ddc4ff742f133772d26ecfc9f228387f99f667121db0d0704f61157.gz";
      r2 = "8P/J7/SHA256E-s22285129811--e7f87346204b12e276ff54b3c829c7fafb99bdadd3e174fd199be1ec3e3560dd.gz/SHA256E-s22285129811--e7f87346204b12e276ff54b3c829c7fafb99bdadd3e174fd199be1ec3e3560dd.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Jw/mV/SHA256E-s20428762437--c6130301ef200ddb66812db83593c1a4b79ace6d0f68ca765b70ed47eee3e661.gz/SHA256E-s20428762437--c6130301ef200ddb66812db83593c1a4b79ace6d0f68ca765b70ed47eee3e661.gz";
      r2 = "54/XK/SHA256E-s22454527253--3b4df5bd44c92bd94f5c84a87468bcd8d8f96dc7a6e2be5647fad873013cafd4.gz/SHA256E-s22454527253--3b4df5bd44c92bd94f5c84a87468bcd8d8f96dc7a6e2be5647fad873013cafd4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "Clare sample meeting 2023.09.21\nPlan on fresh tissue S2: no tumour (only went into mice and OCT) \n**can't do more here.  \n\nBROCA meeting with Clare 04.11.2021\nOrganise BROCA on S1.\n\nRC meeting 10.06.2021\nDiscussed WGS report. Were queries about whether this was endometrial or ovarian cancer (see meeting agenda for notes).\nDiscussion: Our first HGSEC case with gBRCA1 large deletion \n\nClare meeting 08.04.2021\nIs classified as rare due to serous component. Make DNA from OCT sections for WGS.\nSerous component on curette, not HER2 amplified. Call this HGSEC (serous uterine carcinoma = rare) \n ";
      blood_recall_history = "Blood taken 12 April22";
      d_case_summary = "53 yo female diagnosed June 2019 with FIGO stage IIIC1 endometrioid adenocarcinoma, 55mm, G3, involving serous pathology on curette, \nLVSI positive, invasion 30 of 30 mm, serosal involvement, washing positive omentum negative.\n3/16 LN involved, bilateral pelvic nodal involvement\nSurgery Epworth eastern Dr Kym Reid 5/7/2019";
      date_consented = "2021-03-16";
      tumour_type = "HGSEC";
      tumour_details = "high grade endometrioid adenocarcinoma of uterus  serous uterine carcinoma, is rare, not HER2 amplified";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_germline_mutations = "BRCA1";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01388";
  }
