with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "QM/gp/SHA256E-s4763691170--a17ca6aa7e5b00c85a61162fb6654e4f017e35cd8e06c18cfe18652863d0a96a.gz/SHA256E-s4763691170--a17ca6aa7e5b00c85a61162fb6654e4f017e35cd8e06c18cfe18652863d0a96a.gz";
      r2 = "FK/V5/SHA256E-s4846197506--2bafeb031251d1c919e1d2c4bd5835e614a999c930f79c147f32bde3825a8b00.gz/SHA256E-s4846197506--2bafeb031251d1c919e1d2c4bd5835e614a999c930f79c147f32bde3825a8b00.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kV/8g/SHA256E-s4994809030--95fcc6df1784ba6318813aecc3515d012935db9eb427b71f48becf1831e26401.gz/SHA256E-s4994809030--95fcc6df1784ba6318813aecc3515d012935db9eb427b71f48becf1831e26401.gz";
      r2 = "z7/80/SHA256E-s5092329370--86e615a4893f6cf887c46733ecfa9212b3b07c848eb182efa6db2af701501bc3.gz/SHA256E-s5092329370--86e615a4893f6cf887c46733ecfa9212b3b07c848eb182efa6db2af701501bc3.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "xx/ff/SHA256E-s4885900211--920db72fd28e57c591ae54e0c405df2ec764533c7b8aefcbc24ee97985d3c0a9.gz/SHA256E-s4885900211--920db72fd28e57c591ae54e0c405df2ec764533c7b8aefcbc24ee97985d3c0a9.gz";
      r2 = "Zk/v2/SHA256E-s4968302671--edfa8a3abdfa40a8bf014088807af8a5543a3b52ee9f209c319dd41c0882e5f1.gz/SHA256E-s4968302671--edfa8a3abdfa40a8bf014088807af8a5543a3b52ee9f209c319dd41c0882e5f1.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Vf/fZ/SHA256E-s5078696356--5f65717a049ec57bae34ceb5ebf9c121492eb21514a5975af6901b81b2d56a6f.gz/SHA256E-s5078696356--5f65717a049ec57bae34ceb5ebf9c121492eb21514a5975af6901b81b2d56a6f.gz";
      r2 = "6V/Pk/SHA256E-s5175665014--2106c93addd5cd81297a250a649266b76f54a7b7f20fa86ed9396c9df3704e86.gz/SHA256E-s5175665014--2106c93addd5cd81297a250a649266b76f54a7b7f20fa86ed9396c9df3704e86.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2023.10.19\nTWIST WES on tissue S1\n\nSOFIA score 2.8. HRD looks real, consistent with TSC1 variant.  Damien - enough evidence for PARPi. Our score is consistent with HRD (Don't report our HRD score...genomic features consistent with HRD) \n\nClare sample meeting 14.07.2023\nMyriad and TSO 500 results Matt to explore the findings, Kas to follow up with Matt could be HRD positive.\nPlan for fresh tissue S1: WES TWIST to check if we pick up CHEK2 which was detected by Myriad but not TSO 500\n";
      myriad_report = "SFRC01656_MyriadResult_26Jan2023_Redacted.pdf";
      d_case_summary = "HGSFT\n\ndoctor would like to know if a good fit for iO-parpi";
      date_consented = "2022-09-20";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "FT carcinosarcoma";
      case_details = "69 years old female \n\n2020-03\tInitial diagnosis, surgery, Stage IV fallopian tube carcinosarcoma, FIGO G3 endometrioid epithelial component, platinum sensitive \n\nFresh tissue S1 received (only frozen section) \nIHC Positive: PAX 8, EMA, CK 7, p63, CK 5/6, ER (1 to 2+ in 20%), PR (2+ in 5%), p53 WT. \nBer-EP4 (both solid and glandular components), vimentin - focal; p53 - wild type \tIHC \t \nNeg: WT1, napsin A, synaptophysin, chomoregranin. \nNo MMR loss \n\nFamilial cancer panel: no pathogenic variants were detected  \n\nMyriad: HRD status negative, GIS 22 negative, BRCA1/BRCA2 Status: NEGATIVE, CHEK2 \t\tc.444+1G>A Deleterious \n\nTSO500: TMB low, MSI stable, Tier II PIK3CA and  NBN , Tier III PIK3CA: copy number \t\tgain  \n\n2020-03 to2020-07 Carboplatin / Paclitaxel x 6 \n\n2021-06 to 11-2021\tCarboplatin / Liposomal Doxorubicin x 6\tBest response PR \n\n2022-09\tBlood B1 received \n\n2022-10 to\tCarboplatin / Gemcitabine / Bevacizumab \n\n2022-12\tMixed response \n\n2023-01 \tRadiation \n\nStarted screening for IMPARP trial  ";
      pre_analysis_mutations = "TSO500: TMB low / MSI stable, NBN loss / PIK3CA variant\nNeed to check NBN in FCC germline?";
      brca_report = "SFRC01656_BRCAPanel_30Mar2020_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 22";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01656";
  }
