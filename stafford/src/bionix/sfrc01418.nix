with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "36/Vj/SHA256E-s43986444079--5ffaf4bddb23b9c5680021c2601e1937d8c72347ec8f0b118780df9153aca14b.gz/SHA256E-s43986444079--5ffaf4bddb23b9c5680021c2601e1937d8c72347ec8f0b118780df9153aca14b.gz";
      r2 = "0V/fx/SHA256E-s45874817374--5ce919ea31866269900ac411d2f524f1207aa7820a17c42e5ff980a324ffd10e.gz/SHA256E-s45874817374--5ce919ea31866269900ac411d2f524f1207aa7820a17c42e5ff980a324ffd10e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "zP/v7/SHA256E-s71698081619--c14379144e7d94ff68fb7c6d42819ee6eaa372a6fd6f90461ddd14cafbf38ad1.gz/SHA256E-s71698081619--c14379144e7d94ff68fb7c6d42819ee6eaa372a6fd6f90461ddd14cafbf38ad1.gz";
      r2 = "QJ/z8/SHA256E-s73733629643--aec59720a28f366ff5529e5c68e880e32213493e2f11d24ae0ccb23f1450b952.gz/SHA256E-s73733629643--aec59720a28f366ff5529e5c68e880e32213493e2f11d24ae0ccb23f1450b952.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "XG/6z/SHA256E-s6227495619--094f200c937c1b66cb9ec5491e78acb4300811a20ac31c1e0abfecd29a1dad58.gz/SHA256E-s6227495619--094f200c937c1b66cb9ec5491e78acb4300811a20ac31c1e0abfecd29a1dad58.gz";
      r2 = "w0/M8/SHA256E-s6078404310--bdc12d2f22333b5cb599da83c8a427fcabd153865c102793cda4135ac37aa43e.gz/SHA256E-s6078404310--bdc12d2f22333b5cb599da83c8a427fcabd153865c102793cda4135ac37aa43e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC meeting 2021.09.02\nDiscussed WGS report (without SFRC data analysis).\nEligible for BGB283 trial (NRAS)\nSMAD4 not actionable, but fits tumour type.\nSig 9 - could get decitabine down the track.\n\n\nClare's meeting 2021.07.01\nPlan for S1: Do WGS (because she is 31 yo). Need path reports and updated letter. \n\nTrisha told Gen on 10/06/21 that she had another piece frozen from surgery (10/06/21) from a slightly different region if we needed it. ";
      d_case_summary = "31 yo with mucinous carcinoma of ovary.\nPresented originally with ovarian mass which was though to be due to metastatic cancer from the bowel. Since had endoscopies - negative.\nLaparoscopy this year - negative - appendix removed.\n\nMDM review at Lower GI - likely ovarian primary.\nThe contralateral ovary had tumour as the time and a cystectomy was performed to avoid premature menopause. This now has an exophytic lesion ?recurrence.";
      date_consented = "2021-06-10";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Mucinous ovarian carcinoma stage III (as per MDM), thought was colorectal";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01418";
  }
