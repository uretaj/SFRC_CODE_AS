with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PQ/MF/SHA256E-s1108287979--31dacafa203bf2d834488fc12974e183b06f7fb8b4017c0622f45293bf41e8e6.gz/SHA256E-s1108287979--31dacafa203bf2d834488fc12974e183b06f7fb8b4017c0622f45293bf41e8e6.gz";
      r2 = "p8/zJ/SHA256E-s1119103639--6d75b18f0c68dcb3816ad5ec20fe65d7dd386c0699622226617dd3410e440818.gz/SHA256E-s1119103639--6d75b18f0c68dcb3816ad5ec20fe65d7dd386c0699622226617dd3410e440818.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qp/8F/SHA256E-s1095949053--bffbf01067850ca289aec1787880f15af033a2c974f3c9464523d5d5c05bbd55.gz/SHA256E-s1095949053--bffbf01067850ca289aec1787880f15af033a2c974f3c9464523d5d5c05bbd55.gz";
      r2 = "jx/9V/SHA256E-s1108485729--97a4a96bbaace6769b88db93c41b7b3d47131acda06ae231c5dbe1f2a20c252b.gz/SHA256E-s1108485729--97a4a96bbaace6769b88db93c41b7b3d47131acda06ae231c5dbe1f2a20c252b.gz";
    }
    {
      site = "S1_T1_1263";
      class = "tumours";
      pdx = true;
      r1 = "Xf/MF/SHA256E-s3581381723--72153df35f9c37f8fdc5dad134334ca845a56d3d1ede3d07c1669d6c38084e92.gz/SHA256E-s3581381723--72153df35f9c37f8fdc5dad134334ca845a56d3d1ede3d07c1669d6c38084e92.gz";
      r2 = "z6/VQ/SHA256E-s3555468077--c3a0157de2034c0b8401b343cec3e9f5114907e86e1425aa5d3ec8b489b5f34c.gz/SHA256E-s3555468077--c3a0157de2034c0b8401b343cec3e9f5114907e86e1425aa5d3ec8b489b5f34c.gz";
    }
    {
      site = "S1_T1_1263";
      class = "tumours";
      pdx = true;
      r1 = "qX/fj/SHA256E-s3578843563--b947838638804815aadaec5e517363b1b27117d29df7560c2da7a575e738c2f9.gz/SHA256E-s3578843563--b947838638804815aadaec5e517363b1b27117d29df7560c2da7a575e738c2f9.gz";
      r2 = "4K/64/SHA256E-s3557143703--5bfaa4ca05a9e1bf0153b98a44fb877a4380ac3567993e790eaa3fa6a2f9b7fa.gz/SHA256E-s3557143703--5bfaa4ca05a9e1bf0153b98a44fb877a4380ac3567993e790eaa3fa6a2f9b7fa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 24.08.2023\nDiscussed WGS report with SFRC data.\nDamien's Variant Meeting notes said, Technically eligible for PARPi trials, but reversion makes it unlikely to benefit.\nKas notes: The BRCA1 fusion, placing it under a different promoter, is only a relevant mechanism of resistance for alleles with gene silencing/methylation of BRCA1. If the BRCA1 gene is mutated or inactivated by rearrangement within the gene, such a fusion would not restore function (so BRCA1 would remain inactivated). \n\nFor this case, it is still not clear whether the fusion and rearrangement affect the same alleles, but the RNAseq might help work this out - bioinformatics team is looking into this. \n\nSample meeting 2023.06.15\nplan for fresh tissue S1: Plan: Micro dissect OCT, send for WGS and BROCA \nBROCA sample can be from the FFPE, if not enough DNA from OCT\n\nIs post PARPi sample, definitely want WGS. ";
      d_case_summary = "HGSOC. Recurrent, platinum sensitive, BRCAwt.";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "40 years old female \n2020-12: Surgery, Diagnosis: Platinum sensitive recurrent high grade serous ovarian cancer. Germline BRCA wild-type\nIHC Positive: P53 with mutational pattern, WT1, P16, PAX8.\nMMR staining retained\n FCC, (BRCA1,\nBRCA2, BRIP1, EPCAM, MLH1, MSH2, MSH6, PALB2, PMS2*,RAD51C, RAD51D, TP53).\nNo pathogenic variants were detected.\n\ncarboplatin/paclitaxe C6, last cycles converted to weekly paclitaxel therapy\n\n2022-02: recurrence, 2nd line carboplatin/gemcitabine \n\n2022-06: second line chemo completed, partial response\n\n2022-08: ICON9 trial (olaparib)\n\n2023-04: surgery, blood B1 and fresh tissue S1 received \n\n";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01752_FCPanel_11Jan2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01752";
  }
