with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/SFRC/2020-07-14/L2000151_S8";
      suffix = "_001";
      sha256-1 = "c291131194c4c6b0a02f3de70c6253beb3dcabd79bde9d8723cd56532378c3ac";
      sha256-2 = "93d8c2de4b67220f631e26f80c80bbb11079e9df2e4d9dc7757408454a39cd8e";
    }
    {
      site = "S2";
      class = "tumours";
      prefix = "grimmond/SFRC/2020-07-14/L2000150_S7";
      suffix = "_001";
      sha256-1 = "b27fe469b68804cdf8c0ca9957cd8f06718b9e4607de3a07d251a9a5b22b0c9a";
      sha256-2 = "470edc2f730e9bef45f054643927d288d83179ece2e2e5b470356455bae439e4";
    }
    {
      site = "S2";
      class = "rna";
      r1 = "Qw/z3/SHA256E-s4003513356--81973456522186ee977a39714f192242d0107c2dd1c13ecfd82cdd7e4db005ca.gz/SHA256E-s4003513356--81973456522186ee977a39714f192242d0107c2dd1c13ecfd82cdd7e4db005ca.gz";
      r2 = "mV/Gg/SHA256E-s4008656708--3f225e4d4747ddf56f23fbbc85b46dc18eb5e4a9531d84ee913241810ee03fa1.gz/SHA256E-s4008656708--3f225e4d4747ddf56f23fbbc85b46dc18eb5e4a9531d84ee913241810ee03fa1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting notes 09.07.2020\nWGS report discussed. Matt suggests Fork protection. Clare to write to AstraZeneca re: PARPi access based on ATRX and signature 3 result. \n\nMeeting notes 27.02.2020\nSend  SF for WGS (Patten funding). From Block A7 get some 10um and 5um sections cut and then return block. BRCA test not needed on Block A7 as we will have WGS data. Get WES on A7 to analyze tumour evolution.  ";
      date_of_death = "11/2022";
      date_consented = "2019-05-27";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "Metastatic uterine LMS, somatic WT BRCA, primary Dx 04/2018\n\nTAHBSO 04/2018 @ Westmead to Dx uLMS\n\nLaparotomy 13/03/2019 @ RWH for complete resection of pelvic/anterior wall recurrence\n\nCommenced Provera (200mg) 04/2019\n\nPelvic/LUQ peritoneal recurrence 08/2019, resection of abdominal disease 09/01/2020\n\nCT 27/03/2020 shows recurrent LUQ pelvic disease + new liver met + multiple lung mets, however remained asymptomatic\n\nBRCA 1/2 Assay performed on 24/04/2020 - no pathogenic variants were detected";
      brca_report = "SFRC01180_BRCAReport_25Feb2020_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "TAHBSO + R Adnexal Mass\nNSW Govmt Health Pathology (Westmead Hospital) Accession no: SW-18-0011524\nCollected 24-Apr-18\nRequested: 18-Sep-19\nReceived 2-Oct-19 EO";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01180";
  }
