with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Qm/kK/SHA256E-s3216021053--c68b12286e0a68d903edb45715461ae16b2fdfdd6e81d8dddeff36322eb09d1f.gz/SHA256E-s3216021053--c68b12286e0a68d903edb45715461ae16b2fdfdd6e81d8dddeff36322eb09d1f.gz";
      r2 = "6M/jp/SHA256E-s3189935601--b23502bdca393aca137830bc2a08dae8ae062feff26b66c1ec24669d0c08b93d.gz/SHA256E-s3189935601--b23502bdca393aca137830bc2a08dae8ae062feff26b66c1ec24669d0c08b93d.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "zm/24/SHA256E-s3201178637--62c9534058a704bd8c04dddaeded69a348c1a72de2e6bc7a4c8897f749b75fb0.gz/SHA256E-s3201178637--62c9534058a704bd8c04dddaeded69a348c1a72de2e6bc7a4c8897f749b75fb0.gz";
      r2 = "m0/6p/SHA256E-s3179657792--b1895b0a606aa88547d0f3073d4f434eca68f690716e6bc89c3876b6ed7b6bdf.gz/SHA256E-s3179657792--b1895b0a606aa88547d0f3073d4f434eca68f690716e6bc89c3876b6ed7b6bdf.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jV/qF/SHA256E-s1434221599--5c06745e58d6eba3ff537de1c53b9f534427540d5de82ba41bf73a7067b7efb3.gz/SHA256E-s1434221599--5c06745e58d6eba3ff537de1c53b9f534427540d5de82ba41bf73a7067b7efb3.gz";
      r2 = "Vw/fp/SHA256E-s1435239276--5f44d4f1985e2b9577d6cda4238df1a8520a0fac23a8ce5957bd376a9b932908.gz/SHA256E-s1435239276--5f44d4f1985e2b9577d6cda4238df1a8520a0fac23a8ce5957bd376a9b932908.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J8/gM/SHA256E-s1397408590--1711f544f89cee20c1d38482f3b435e2ee37ada04a12a48fef18f5ce25333f4d.gz/SHA256E-s1397408590--1711f544f89cee20c1d38482f3b435e2ee37ada04a12a48fef18f5ce25333f4d.gz";
      r2 = "W5/23/SHA256E-s1400770551--9b3c8b2587bfd67b4991f949035b30ffe7a35e4ec27d03f0fc648f033049827e.gz/SHA256E-s1400770551--9b3c8b2587bfd67b4991f949035b30ffe7a35e4ec27d03f0fc648f033049827e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      sophia_report = "SFRC01809_SOPHIAReport_23Aug2023_Redacted.pdf";
      meeting_discussions_follow_up = "RC Meeting 23.5.24:\nMSH2 is homozygous in tumour \nNo Sig 3 - but this is WES issue \nLow Sig6 \nMSH2 variants seem plausible, but TMB is not high, MSS - no signature evidence to support it being pathogenic. To be reported to FCC. Validation to see if it is real. \nSome MSH2 variants a potentially overrepresented... (to be filtered out soon) \n40% LOH across entire genome. \n\nClare's sample meeting 2023.10.05\nPlan on FFPE block 1A: \n(Rae) DNA already extracted and aliquot sent for urgent methylation. Have enough DNA for WES. Yes, WES TWIST with HRD backbone ";
      urgency_details = "For urgent methylation testing of BRCA1/RAD51C as per Clare";
      d_case_summary = "Relapsed High Grade Serous Carcinoma of the Ovary (10 year DFI)- for methylation as per Clare\nBRCA Wildtype\nFor urgent methylation testing of BRCA1/RAD51C";
      tso500_external = "SFRC01809_TSO500_Results_10OCt2023_Redacted.pdf";
      date_consented = "2023-08-19";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC - super responder? 10 year TFI";
      case_details = "2012\tDx HGSOC, Stage IC (Age 58)\t\nApr-13\tcompleted Carbo/Taxol x6\t\n\t10 YEAR DFI (disease free interval)\t\nMay-23\trecurrence (now Stage IIIC) (Age 69)\t\nOct-23\tcompleted Carbo/Taxol/Bev\t\nMar-24\tstill on Bev maintenance\t\n\t\t\n25/6/2013\tBRCA1/2 Test\tno variants\n16/6/2023\tFCP germline\tMSH2 VUS\n3/8/2023\tSOPHIA\tHRD POS, GIS POS, BRCA NEG";
      brca_report = "SFRC01809_BRACTesting_25Jun2013_Redacted.pdf";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      fcc_report = "SFRC01809_FamilialCancerPanel_16Jun2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "11Sep23: May23 sample requested from TissuPath by Monica\n18Sep23:May23 sample received from TissuePath by Haris";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01809";
  }
