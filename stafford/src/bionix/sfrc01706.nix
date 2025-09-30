with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2K/MJ/SHA256E-s35463734781--f0b51f932a78e8ac76ec9ad807ecc8c2b97f91743d3626c3356aae73c3da4141.gz/SHA256E-s35463734781--f0b51f932a78e8ac76ec9ad807ecc8c2b97f91743d3626c3356aae73c3da4141.gz";
      r2 = "qG/02/SHA256E-s38708046497--302c9f13e55d906e8a4e23a15ae5a1536e01020b20128fc46aead0555a7bb875.gz/SHA256E-s38708046497--302c9f13e55d906e8a4e23a15ae5a1536e01020b20128fc46aead0555a7bb875.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "kG/5p/SHA256E-s83363494089--262fb67cb522a7bdc0620589180996c5304fb2ebe9b42b737d9dd11ae75c7d73.gz/SHA256E-s83363494089--262fb67cb522a7bdc0620589180996c5304fb2ebe9b42b737d9dd11ae75c7d73.gz";
      r2 = "g9/6v/SHA256E-s90691290093--b3198abd407ce703891ea280156b93b26c92b03ca325bff307022bcc008a2313.gz/SHA256E-s90691290093--b3198abd407ce703891ea280156b93b26c92b03ca325bff307022bcc008a2313.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "GG/v3/SHA256E-s3085789042--731e34aca08b7d84d647201d04ca9f1c1ac3adc194fdbf8ffee95abe5bed0fb8.gz/SHA256E-s3085789042--731e34aca08b7d84d647201d04ca9f1c1ac3adc194fdbf8ffee95abe5bed0fb8.gz";
      r2 = "29/3g/SHA256E-s3243692530--834675b980ffb9df784e4b90d8f57c4e1276ecd2b294eb5280a5aa590ffe4bc0.gz/SHA256E-s3243692530--834675b980ffb9df784e4b90d8f57c4e1276ecd2b294eb5280a5aa590ffe4bc0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nThis sample was very good. High purity, optimal CN plot fit.\n\nClare's Meeting 20.04.2023\nReviewed FFPE Blocks:\nBlock 2G: From same surgery as S1, 10% purity. \nBlock 1L: 60% entire piece. \n-Sending S1 for WGS but still waiting for blood  \n-2+ synchronous - SBOT, endometrioid, mesonephric \n-Patient in Geelong. \n-Still wanting to do the WGS, prioritising the blood. \n\nClare/Ratana/Rae meeting 16.03.2023\nTrisha does not have right ovary. \nOur S1 - is going for WGS, just need blood. Ben to call. \n\nClare's Meeting 09.03.2023\n-Do WGS on SF tissue as entire piece is tumour \n-Endometrial cancer possibly a passenger. SBOT maybe IHC \n-Ask Trisha if there is frozen tissue from right ovary \n-Is not a poor prognosis case. ";
      blood_recall_history = "2 May 23 - DNA\n\n05May23 - Spoke to Husband he gave info to send pack. Patient has a friend who will take blood and at her house for us.patient to call when pack arrives - Reception request sent.";
      d_case_summary = "52 year old woman with stage 2 gynaecological cancer (left ovary with high-grade mesonephric-like adenocarcinoma, right ovary with serous borderline tumour, multiple metastatic deposits of mesonephric adenocarcinoma in the left ovary and pelvic peritoneum, and grade 1 endometrial adenocarcinoma) who had a TAH   BSO   appendicectomy   biopsies on 4/11/22.";
      date_consented = "2022-11-22";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "left ovary with high-grade mesonephric-like adenocarcinoma, right ovary with serous borderline tumour";
      case_details = "52 years old female, (Stage II mesonephric-like adenocarcinoma of left ovary Stage IA Grade 1 endometrioid adenocarcinoma of endometrium Stage IA serous borderline tumour of right ovary) \n\n2022-11: Surgery: TAH/BSO, Frozen Fresh Tissue S1 (received 2023-02), FFPE block 1L and 2G \n-Dx Stage II mesonephric-like adenocarcinoma of the left ovary, FIGO stage 1 \nIHC positive: GATA-3, CK7, PAX8, EMA, CD10 \nIHC negative: ER (80%), PR(70%), WT-1, TTF-1, CK20 \np53: wild type \nPMS2, MLH1, MSH2, MSH6: presence of tumour nuclear staining for all \nMSI panel normal  \n-Dx Stage IA endometrioid adenocarcinoma of the endometrium \n-Dx Stage 1A serous borderline tumour of right ovary \nIHC positive: GATA3 \nIHC negative: ER, PR, WT1 \n\nTreatment Recommendation: Chemotherapy ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07Mar23: Nov22 sample requested from RWH by Monica.\n30Mar23: Nov22 sample requested from RWH by Monica.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01706";
  }
