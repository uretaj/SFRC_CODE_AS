with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "23/j4/SHA256E-s35819608120--f55d0659d90d28957460cc79c129ed90015367cf5542951e070fa45548eb7d08.gz/SHA256E-s35819608120--f55d0659d90d28957460cc79c129ed90015367cf5542951e070fa45548eb7d08.gz";
      r2 = "6P/F0/SHA256E-s37955563023--f9a49b59691dcd51823132eb9a2922fce0bd6371ff59f548f9959e837ff81fb2.gz/SHA256E-s37955563023--f9a49b59691dcd51823132eb9a2922fce0bd6371ff59f548f9959e837ff81fb2.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Zg/ZV/SHA256E-s83073154270--5c60f4c2448a96afff1c5abffebb25cc8c63896bbf240bae9f4b517123b88f23.gz/SHA256E-s83073154270--5c60f4c2448a96afff1c5abffebb25cc8c63896bbf240bae9f4b517123b88f23.gz";
      r2 = "p9/Vm/SHA256E-s86799332327--1492b98049ba9c88cf287dab8569b0fbaae338a1d7004d10b47a62b8b4212f42.gz/SHA256E-s86799332327--1492b98049ba9c88cf287dab8569b0fbaae338a1d7004d10b47a62b8b4212f42.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "pQ/Qk/SHA256E-s4161576479--b1b2479a4c0e98e96ee2f5472a7fbd5bdc5e2a221894936b93948c6d882f284d.gz/SHA256E-s4161576479--b1b2479a4c0e98e96ee2f5472a7fbd5bdc5e2a221894936b93948c6d882f284d.gz";
      r2 = "wq/x5/SHA256E-s4059367262--c906571b51393ddf3b2f47ef9f947ba189f8449cdd7157b376edd99e88954bfb.gz/SHA256E-s4059367262--c906571b51393ddf3b2f47ef9f947ba189f8449cdd7157b376edd99e88954bfb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC Meeting 01.09.2022\nDiscussed WGS report (Grimmond and SFRC). Could find all variants in SFRC data.\n\nRC meeting 07.04.2022\nS1: send snap frozen tissue for WGS. ";
      d_case_summary = "Malignant Brenner tumour, stage 1A.";
      date_consented = "2022-03-18";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Malignant Brenner tumour";
      case_details = "67yo female with suspicious ovarian cyst. \n2022-01 Diagnosis\nAppearance indicative of left cystic ovarian tumour.\n2022-03 SFRC blood B1 received, fresh tissue S1\nPositive: GATA3 (variable), CK7, p63, CK5/6, MMR proteins are retained (MLH1, PMS2, MSH6, MSH2)\nNegative: CK20, WT1, PAX8, ER, PR \n\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01547";
  }
