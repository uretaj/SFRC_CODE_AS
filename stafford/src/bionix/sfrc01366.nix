with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Q2/5P/SHA256E-s10922267673--c3301f6f9d887b9245832181192778f79844f7da78a9b12e4f7359f90883362a.gz/SHA256E-s10922267673--c3301f6f9d887b9245832181192778f79844f7da78a9b12e4f7359f90883362a.gz";
      r2 = "Z8/Zz/SHA256E-s11800788260--9d7fa00de55006230c33608760a2a373439fe95f6fdf3ef3289b1cfd2749fda0.gz/SHA256E-s11800788260--9d7fa00de55006230c33608760a2a373439fe95f6fdf3ef3289b1cfd2749fda0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vg/92/SHA256E-s10765577028--8da55d2fb48e81b66029545480fe2d470332cc05a719f04d794fd69151acc7dd.gz/SHA256E-s10765577028--8da55d2fb48e81b66029545480fe2d470332cc05a719f04d794fd69151acc7dd.gz";
      r2 = "x7/9F/SHA256E-s11654196553--73cdfea3723efdb58fbbd59bbfa3b943542e951cede1697ec098abef054c9bbb.gz/SHA256E-s11654196553--73cdfea3723efdb58fbbd59bbfa3b943542e951cede1697ec098abef054c9bbb.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5Q/09/SHA256E-s10832026751--cc35febf6c0afc789171f90bd0349a1045d506a46ecfa9ebeb9a135f9db86139.gz/SHA256E-s10832026751--cc35febf6c0afc789171f90bd0349a1045d506a46ecfa9ebeb9a135f9db86139.gz";
      r2 = "GQ/Zq/SHA256E-s11714639184--f86c4979e433ef8acddb0550868eede87e3068b7aeeb65dbb500672559e7e2e4.gz/SHA256E-s11714639184--f86c4979e433ef8acddb0550868eede87e3068b7aeeb65dbb500672559e7e2e4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VP/02/SHA256E-s10829466480--fd74568e2eb2b4251480da86231d3f216d47967ea014e900a34fa8c680748b08.gz/SHA256E-s10829466480--fd74568e2eb2b4251480da86231d3f216d47967ea014e900a34fa8c680748b08.gz";
      r2 = "ZJ/k5/SHA256E-s11797215776--ce8b22e9df6a3e3b940c75df5bc6ccf473fccb8ef7e7ffd551a6e92ad0fc9c57.gz/SHA256E-s11797215776--ce8b22e9df6a3e3b940c75df5bc6ccf473fccb8ef7e7ffd551a6e92ad0fc9c57.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "69/wx/SHA256E-s25077191523--50da75595b2c6cd53873896c2e6192727c10be0e844056a2ae7a0b707c876b66.gz/SHA256E-s25077191523--50da75595b2c6cd53873896c2e6192727c10be0e844056a2ae7a0b707c876b66.gz";
      r2 = "fX/k5/SHA256E-s27265375592--395dfd0ddf18ad411b9ddffa711345b7dcab77453d95e17085f58b82975ed960.gz/SHA256E-s27265375592--395dfd0ddf18ad411b9ddffa711345b7dcab77453d95e17085f58b82975ed960.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "q2/1x/SHA256E-s24918659937--919f61c08f14ddc87fc9759d23bb43a8ba79f01feb44ea3a780799f49ea78679.gz/SHA256E-s24918659937--919f61c08f14ddc87fc9759d23bb43a8ba79f01feb44ea3a780799f49ea78679.gz";
      r2 = "Fq/4q/SHA256E-s27183285265--9381639763a84d90f5f752654ba0d30ee9938613a16a16f7439e3aae82388e7d.gz/SHA256E-s27183285265--9381639763a84d90f5f752654ba0d30ee9938613a16a16f7439e3aae82388e7d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Pw/j5/SHA256E-s25223670796--0b4f162f92d949568aca084a09e6f5ff36d85cd463edcdc488486ec316fc70ce.gz/SHA256E-s25223670796--0b4f162f92d949568aca084a09e6f5ff36d85cd463edcdc488486ec316fc70ce.gz";
      r2 = "x6/89/SHA256E-s27499378703--aca237628e03943d075b24a0ac1965dafdea7ab5ec4321157658f6e315bedaab.gz/SHA256E-s27499378703--aca237628e03943d075b24a0ac1965dafdea7ab5ec4321157658f6e315bedaab.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "qG/F0/SHA256E-s25332767756--0f2a38bc36b3e79e631d89d22b5934a22af184192fe77a8b8b411fe890892572.gz/SHA256E-s25332767756--0f2a38bc36b3e79e631d89d22b5934a22af184192fe77a8b8b411fe890892572.gz";
      r2 = "mW/G1/SHA256E-s27824143915--b5a7a170c95bc0920210e6c5f3a51469658adc7f097cd2cdf2783cf88a3ff8e7.gz/SHA256E-s27824143915--b5a7a170c95bc0920210e6c5f3a51469658adc7f097cd2cdf2783cf88a3ff8e7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "RC meeting 06.10.2022\nDiscussed new BROCA results (compare to WGS).\nATR on WGS - HF 0.093. Adjust for TP, close to BROCA .\nFANCM not in WGS.\n\nBroca meeting Amandine/Clare 21.03.2022\nSend S1 for Broca, same sample as WGS\n\nRC Meeting 24.06.2021\nDiscussed WGS report.\nGenomic unstable, HR-proficient \nARID1A, KDM6A and SPOP inactivation \nConsistent with ovarian clear cell carcinoma \nARID1A - actionable, but don't have access right now for ATRi \n\n2021.02.15 Clare and Ratana\nS1 DNA (250 ng) to send for WGS. Waiting for blood. The WGS could help with determining primary site and if this is endometrial or ovarian. TSO500 would be a good option since we don't have blood yet, but WGS would give more data.\n\n2021.02.08 Clare and Ratana meeting\nS1 review - microdissect DNA, see what yield. Would like TSO500 (for TMB) or WGS, whichever is cheaper.\n\nClare's meeting 2021.04.22\nS1 biopsy from 25-01-2021. DNA microdissected, have a total of 250 ng DNA (5.44 ng/ul). \nDo WGS ";
      date_of_death = "4/2021";
      d_case_summary = "72 yo female with malignant neoplasm of endometrium/ovarian (clear cell with extensive peritoneal/omental disease) diagnosed June 2020\n- Completed 3 cycles neoadjuvant carboplatin-taxol August 2020, progress CT (10/8/20) showed  right sided pleural effusion and inoperable disease\n- Completed further 3 cycles of carboplatin   paclitaxel   Avastin, progress CT (19/10/20) shows resolution of pleural effusion and significant response in peritoneal disease \n- now on maintenance Avastin\n- CT restaging (4/1/21) small volume ascites, stable peritoneal disease, prominent renal lymph nodes MDT discussion 14/1/21 not for debulking surgery but continue maintenance Avastin";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear Cell carcinoma - ovarian or endocervical";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "ARCPortal_Case Report_SFRC01366_Cancer_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01366";
  }
