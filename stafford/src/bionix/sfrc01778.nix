with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.10";
      class = "tumours";
      pdx = false;
      r1 = "66/Kw/SHA256E-s3058390809--530a8a4e7d7e962785126a752299b88c52d5446ae641c55c5133df6da33de23f.gz/SHA256E-s3058390809--530a8a4e7d7e962785126a752299b88c52d5446ae641c55c5133df6da33de23f.gz";
      r2 = "Pp/G7/SHA256E-s3026156469--a96bac8837b30e7214399db573d6f557b07a2a3a582b05e6df3e6db16487620c.gz/SHA256E-s3026156469--a96bac8837b30e7214399db573d6f557b07a2a3a582b05e6df3e6db16487620c.gz";
    }
    {
      site = "1.10";
      class = "tumours";
      pdx = false;
      r1 = "8Z/01/SHA256E-s3054713150--5b6d359bd04c03ad9c46840993f3f7b3eb66c1b4a16826de6bfcef33a3632969.gz/SHA256E-s3054713150--5b6d359bd04c03ad9c46840993f3f7b3eb66c1b4a16826de6bfcef33a3632969.gz";
      r2 = "zJ/69/SHA256E-s3026301467--24d3742e3f5d3c5986aa84637a782f969b7e669a6de93f72fa61a437999ab334.gz/SHA256E-s3026301467--24d3742e3f5d3c5986aa84637a782f969b7e669a6de93f72fa61a437999ab334.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4V/xq/SHA256E-s1214791325--bdb46f28f1d5a980f6aebaccf3caa4f54c28565a75e35a2344dce81e88459a38.gz/SHA256E-s1214791325--bdb46f28f1d5a980f6aebaccf3caa4f54c28565a75e35a2344dce81e88459a38.gz";
      r2 = "kM/31/SHA256E-s1215773822--424885e9b54f2fd8876c7ac9581cdee3bbaf7bfdc8e68e157b58543ec677c0fd.gz/SHA256E-s1215773822--424885e9b54f2fd8876c7ac9581cdee3bbaf7bfdc8e68e157b58543ec677c0fd.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "MK/WG/SHA256E-s1193502779--3841e81232f24df6c5cf2a0e1294217c854aa22bec049a757d3ea93b8a0129aa.gz/SHA256E-s1193502779--3841e81232f24df6c5cf2a0e1294217c854aa22bec049a757d3ea93b8a0129aa.gz";
      r2 = "Mw/m1/SHA256E-s1196452995--fe18090295286975837d67e8a7a7814e81134b416776fb8a46351d67d39ad398.gz/SHA256E-s1196452995--fe18090295286975837d67e8a7a7814e81134b416776fb8a46351d67d39ad398.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2023.09.07\nPlan on FFPe block 1.10\n WES \nClare and Briony to email doctors to recommend CaSP in the meantime ";
      blood_recall_history = "01 Aug 23 - Text sent, currently unable to have bloods collected as she cannot walk, has an upcoming surgery to restore her ability to walk re contact around September";
      d_case_summary = "58F diagnosed with a de-differentiated endometrial carcinoma August 2022. Managed with hysterectomy and BSO, declined recommended post-op RTX as had a prolonged post-op recovery. Represented with L femoral mass, adrenal metastases and para-aortic lymphadenopathy, underwent L femur biopsy 9/3/23. Given the de-differentiated nature, initial biopsy raised suggestion of Ewings/PNET so was transferred here for further Ix. Repeat biopsy last week (22/3) has been compared to her initial 2022 Bx and looks consistent with original path being endometrial origin (awaiting final IHC to confirm small cell/neuroendocrine diff).";
      date_consented = "2023-07-02";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Metastatic dedifferentiated endometrial cancer - some regions of emdometrioid, some small cell components";
      case_details = "58F\n\n2022-08: Dx small cell carcinoma of the uterus\nSurgery: TAH/BSO (FFPE Bloxk 1.10)\nIHC positive: ER, PR, PAX8, p53 (heterogeneous throughout tumour), synaptophysin, INI1, BRG1, \nIHC negative: AE1/3, EMA, \nPTEN: loss of expression\nARID1A: partial loss of expression\ndMMR: Loss of expression of MLH1 and PMS2\n\n2023-08: Metastasis: HG small round blue cell tumour, consistent with endometrial primary\nSurgery: Biopsy: left femur\nIHC positive: chromogranin, AE1/3\nIHC negative: ER, PR, HER2, CK20, TTF-1, \ndMMR: Loss of MLH1 and PMS2\nKi-67: >95%\n\n2023-04: Radiation, followed by carboplatin/etoposide\n\n2023-05: Commenced pembrolizumab\n\n2023-07: Sections from FFPE Block 1.10 received.\n\nQuick summary\n24/8/2022\tInitial diagnosis small cell carcinoma of the uterus\n\tPrimary treated as de-differentiated high grade carcinoma\n24/8/2022\tTAH BSO (Block 1.10)\n\tdMMR (PMS2 and MLH1 loss)\n4/3/2023       recurrence (biopsy thigh) \n5/4/2023\tRTx to hip/upper thigh\n17/4/2023\tCarboplatin and Etoposide (completed 07/23)\n9/5/2023\tPembrolizumab (ongoing)\n7/8/2023\tsurgery (femoral rod) - no malignancy\n22/1/2024\tcontinued no evidence of disease";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "12Jul23: Mar23sample requested from Tissupath pathology by Monica\n13Jul23: Request from tissupath for Mar23 sample unable to be fulfilled, have requested Aug22 sample from Austin\n19Jul23: Aug22 sample received from Austin by Monica";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01778";
  }
