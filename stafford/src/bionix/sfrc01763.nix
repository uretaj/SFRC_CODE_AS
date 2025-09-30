with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "qw/Pg/SHA256E-s3132950432--3edac48fd01873de51f6af761b65c59c86d17d9192dcc92ecdbad0aac7d71e06.gz/SHA256E-s3132950432--3edac48fd01873de51f6af761b65c59c86d17d9192dcc92ecdbad0aac7d71e06.gz";
      r2 = "QP/3p/SHA256E-s3091475280--e6ca38e1337e247548ec20049780dc3b225ba13a2c50bd7483448c2321c424a4.gz/SHA256E-s3091475280--e6ca38e1337e247548ec20049780dc3b225ba13a2c50bd7483448c2321c424a4.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "Fw/f2/SHA256E-s3108292140--45a41c40ad52c40e8e785bfeb1e37d3913ec824b27b1e6ee9432100065504083.gz/SHA256E-s3108292140--45a41c40ad52c40e8e785bfeb1e37d3913ec824b27b1e6ee9432100065504083.gz";
      r2 = "59/0P/SHA256E-s3069922758--e3d9f5226a9b0264a992518da4764c28bcf13defa773fa816ffa0359f38f21e2.gz/SHA256E-s3069922758--e3d9f5226a9b0264a992518da4764c28bcf13defa773fa816ffa0359f38f21e2.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M8/wM/SHA256E-s1092815020--4425efea9ee050a1d467568371dd40a610621ba05073305a60cab1512ddea13f.gz/SHA256E-s1092815020--4425efea9ee050a1d467568371dd40a610621ba05073305a60cab1512ddea13f.gz";
      r2 = "xg/pg/SHA256E-s1099642190--a54b45b1754a318dfa0d421301d9fea98918e5916bd533d59297a87f7bdba76f.gz/SHA256E-s1099642190--a54b45b1754a318dfa0d421301d9fea98918e5916bd533d59297a87f7bdba76f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gZ/gw/SHA256E-s1093876753--24dc304b38e396cc575eeb513f8acf2d9c78f06ca74ee4e7d89c9711a3687786.gz/SHA256E-s1093876753--24dc304b38e396cc575eeb513f8acf2d9c78f06ca74ee4e7d89c9711a3687786.gz";
      r2 = "f7/Wm/SHA256E-s1102751986--685a92333b148a5f1505ed86f0fe2be73e972006c75ef26e954adb3d17bd576c.gz/SHA256E-s1102751986--685a92333b148a5f1505ed86f0fe2be73e972006c75ef26e954adb3d17bd576c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Sample meeting with Clare 20.07.2023\nPlan for FFPE block 1D: WES twist \nLooks like new ECS dx. 2x primary for Kristy ";
      blood_recall_history = "01Aug23 - text to patient ";
      d_case_summary = "70F new diagnosis carcinosarcoma of the uterus, ECOG 1\nRecent surgery at Epworth Freemasons. PET post-surgery demonstrating avidity in common iliac and low paraortic nodes\nPlanned for reverse PORTEC 3, 4 cycles carboplatin   paclitaxel, followed by chemoRT has not yet begun\nPHx: inflammatory breast Ca 2007";
      date_consented = "2023-04-19";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma\nAlso had breast cancer 2007";
      case_details = "70 year old female,  \n\n2007\t\tBreast cancer, mastectomy, chemo, \n                        radiation \nLN+ve, ER positive in 90% tumour cells, PR negative \nHer2 neg \n\n2023-03\tInitial diagnosis, surgery, FIGO 3C, FFPE block 1D received  \n(50% sarcoma, 50% carcinoma(serous & endometrioid types) \n\nRecommendation for REVERSE PORTEC3 \n\nPlan: 4 cycles carbo/pacli, return to PMC for PET 4-6 wks post (08-2023) \nMMR preserved,  \nIHC positive: P53 mutated \nIHC: negative: ER, PR and Her2 \n\nReferred to ARC for molecular testing  \n\nRecommendation for familial cancer clinic referral, At recurrence, consider EPOCH trial, \tWES through Stafford fox \n\nQuick summary:\n7/3/2023\tDx endometrial carcinosarcoma\n7/3/2023\tTLH BSO\n8/5/2023\tCarboplatin + Paclitaxel X1\n16/10/2023\tcompleted Carboplatin alone\n1/4/2024\tPET shows no new disease\n\n2007\tbreast cancer\n\tNACT chemotherapy; R mastectomy; chemo; radiation";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-05-26";
      portal_letter = "SFRC01763_ARCLetter_19May2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "05Jul23: Mar23 sample requested from Melbourne pathology by Monica\n10Jul23: Mar23 sample received from Melbourne pathology by Monica\n21Jul23: Aug07 sample requested from PaLMS (Pacific Laboratory Medicine Services) by Monica ";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01763";
  }
