with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X7/kz/SHA256E-s54301400254--977d07d8798d2c2e08d6e4adeefcee59bdc873e49900c1d785e2b159f6252f87.gz/SHA256E-s54301400254--977d07d8798d2c2e08d6e4adeefcee59bdc873e49900c1d785e2b159f6252f87.gz";
      r2 = "pj/86/SHA256E-s61168360436--011dfeca95664a7ac60f53f2033bc527b6ef86c4d314b08c688f6ed73987d8f7.gz/SHA256E-s61168360436--011dfeca95664a7ac60f53f2033bc527b6ef86c4d314b08c688f6ed73987d8f7.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "w6/1X/SHA256E-s82338113474--297a692cb4903e2de2b075b7ef8da94abae6e176c9e46e8ac7fc8b48ef065fbf.gz/SHA256E-s82338113474--297a692cb4903e2de2b075b7ef8da94abae6e176c9e46e8ac7fc8b48ef065fbf.gz";
      r2 = "pf/gP/SHA256E-s90651747393--a0887e6306aa1db00722f81b48392e9cc677bfa656645716fefa0e0570e5f7cb.gz/SHA256E-s90651747393--a0887e6306aa1db00722f81b48392e9cc677bfa656645716fefa0e0570e5f7cb.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "wF/GK/SHA256E-s8368520670--5a3e2852eaf099476573403e71ab2e8256f8ceaf3b935a514bbbf6bb346a298c.gz/SHA256E-s8368520670--5a3e2852eaf099476573403e71ab2e8256f8ceaf3b935a514bbbf6bb346a298c.gz";
      r2 = "xk/PJ/SHA256E-s8030357661--4033886f3e0a8f908619e88ebf86665a04f706ca53b010d5f69e86cf1708c208.gz/SHA256E-s8030357661--4033886f3e0a8f908619e88ebf86665a04f706ca53b010d5f69e86cf1708c208.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "RC Meeting 16.09.2021\nDiscussed RNA data in line with WGS (DNA only).\nJMJD1C-NOTCH2 gene fusion and RAD51B expression is normal (not inactivating) \nERBB2 amplified - high expression \nEverything else amplified has high expression: ERBB2, MYC, GNAS, AURKA and CD276, shown as high outliers compared to our cohort. \n\n\nHave emails 12th July 2021. Patient is progressing. Want RNA data. Only DNA was sent for WGS, so make a new OCT block, extract RNA and send for WTS.\n\nReceived email from Geoff about patient, WGS findings had mild actionability.\n\"Established allele status, but couldn't get on trial.\nHeterozygous for CD16A-158F, FV variant (so eligible for Margetuximab,  but Austin closed for recruitment)\"\n\nRC Meeting notes 18.03.2021\nDiscussed WGC findings. Geoff Lindeman following up clinically.";
      date_of_death = "6/2022";
      d_case_summary = "35 yr old, de novo metasatatic HER2-amplified breast cancer diagnosed during her second pregnancy in early 2019. ERBB3 mutation found via Peter Mac sequencing pathology panel on the VCCC precision oncology program";
      date_consented = "2020-09-29";
      tumour_type = "Breast cancer";
      tumour_details = "breast cancer with uncommon characteristics";
      case_details = "Breast Cancer Dx in March 2019 during second pregnancy. Mastectomy + ALND, RTx to chest wall 25Gy Commeced Zoladex, and excision of malignant LAD L Axilla\n\n2L TCHP\nOn DESTINY trial\n4L DIAmOND study - Trmelimumab, durvalumab, trastuzumab\n\nL mastectomy on 30/09/2020";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01332_FCPanel_11Apr2019_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01332";
  }
