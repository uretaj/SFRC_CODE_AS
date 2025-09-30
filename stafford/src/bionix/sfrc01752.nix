with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3z/k0/SHA256E-s44444929049--29c55ac03837d4baa8208a24b18e5fbf257728ba6cfa6f2e8ba00ab5bc4e996f.gz/SHA256E-s44444929049--29c55ac03837d4baa8208a24b18e5fbf257728ba6cfa6f2e8ba00ab5bc4e996f.gz";
      r2 = "ZF/8G/SHA256E-s51617753348--929312a654a33b5bfc7c295605837346f117aeb58313da69e4772e76fee4bd63.gz/SHA256E-s51617753348--929312a654a33b5bfc7c295605837346f117aeb58313da69e4772e76fee4bd63.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "k0/z9/SHA256E-s104136997429--7879e994b5cc9b78e2e1ee11b546bd8e96a12d3e8c3fc27484f8f452300bee5d.gz/SHA256E-s104136997429--7879e994b5cc9b78e2e1ee11b546bd8e96a12d3e8c3fc27484f8f452300bee5d.gz";
      r2 = "fP/g5/SHA256E-s114907909193--c3f82e938bf3aa55ccb4115a7fa845ebfcd0d9402189417100655eba1d13cb79.gz/SHA256E-s114907909193--c3f82e938bf3aa55ccb4115a7fa845ebfcd0d9402189417100655eba1d13cb79.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "g2/4w/SHA256E-s3372186842--0608a5f0c3375415dc0dfd40f04ea4d5d54ea3764f413e46955ffb49c5664d22.gz/SHA256E-s3372186842--0608a5f0c3375415dc0dfd40f04ea4d5d54ea3764f413e46955ffb49c5664d22.gz";
      r2 = "W2/wx/SHA256E-s3376959992--baa8362268e719aa0ded81aca3c88524056077989ac514130c5bb8be9106290e.gz/SHA256E-s3376959992--baa8362268e719aa0ded81aca3c88524056077989ac514130c5bb8be9106290e.gz";
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
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01752";
  }
