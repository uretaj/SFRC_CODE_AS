with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/2020-05-29/SFRC01180-B1_S4";
      suffix = "_001";
      sha256-1 = "b762249b79a331188bf2a97a36534d9f3de55eec8f375eee63501eccdf29bb21";
      sha256-2 = "8b1ce754e7592c51bf24a2d6cd4d32ae27e0b42f0523543fb00726e036bcadfa";
    }
    {
      site = "A7";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-05-29/SFRC01180-A7_S3";
      suffix = "_001";
      sha256-1 = "14dbdc7be8898106541851fb85bc4bd9af46a87f07cd8b12757a1e96c6a2afd8";
      sha256-2 = "3cb44a0f2f560f25faa50dc8d8d066c91c52e3295725dc78b4cb9eecc5374785";
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
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01180";
  }
