with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/wes/2020-04-23/SFRC01272-Germline-DNA_S4";
      suffix = "_001";
      sha256-1 = "45e917aaf911c94f2d5a7a810fc5eb14e7bd6eb8701d9fcb6cd4732f4e7f8749";
      sha256-2 = "0fb5d0ad8d3f6f49b8aecdd2cd9c726146e49ca232006a353b616411dcf44c87";
    }
    {
      site = "S1S2";
      class = "tumours";
      prefix = "fastqs/pmcc/wes/2020-04-23/SFRC01272-Tumour-DNA_S3";
      suffix = "_001";
      sha256-1 = "fc174a1cab06f138005511ece9cfb3aa1f3a2a320541cbca8b00f998fda4b92f";
      sha256-2 = "0712be129c689c73a9718c7b44b3ca436b6236a5fe31d719716dbd56b7e4fac0";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Broca meeting Clare/Amandine 21.03.2022\nSend S1+S2 for Broca, same sample as WES\n\nRC Meeting notes 14.05.2020\nFinished chemo in January but not doing well. \nLow tumour purity - 26% (compared with Gayanie prediction 30-40% so expected). \nGermline variants predicted damaging - mTOR (activating mutation) - WA guys (Paul James) experts of MTOR mutations (developmental issues in children) \nSomatic variants - ARID1A x4 (determine which one/s are pathogenic), TP53 \n\nhttps://www.sciencedirect.com/science/article/pii/S0304419X1830091X \n\nPotential synthetic lethal targets - PARPi, ATRi, EZH2i, HDACi, BRDi. \nSignatures - 13 the most prevalent - APOBEC, common in cervical and bladder cancers. \nCN analysis - Nothing specifically amplified. \n\nMeeting notes 09.04.2020\nHolly to extract DNA from SF tube for S2 and potentially S1 too depending on size and submit for WES with germline DNA";
      date_consented = "2020-02-04";
      tumour_type = "Clear cell ovary";
      tumour_details = "Ovarian clear cell, Stage IV, platinum resistant";
      case_details = "Stae Iv clear cell ovarian cancer, pelvic adenopathy, bone mets and L frontal met \n\nReceived L hip palliative RT 20Gy, 5# 21-27/8\nPalliative chemo with carbo/taxol\nBevacizumab added from C2\nDR from C3 paclitaxel for LFT derangement\nPEt and CT restaging on 1/8/2019, mixed response/stable disease\nCompleted 6 cycles CTx 25/09/2019\nMaintenance bevacizumab, restaging CT on 9/10/19 showed decreased nodal metastatic burden\nStereotactic RTx 13/11/2019\n\nCeased bevacizumab  4/3/2020";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01272";
    capture = CREv2;
  }
