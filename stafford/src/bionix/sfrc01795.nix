with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "4m/0j/SHA256E-s3534865515--5952636adf85b69ae4299bc790fc738ba1a66a8ad32faa609af370964650bd50.gz/SHA256E-s3534865515--5952636adf85b69ae4299bc790fc738ba1a66a8ad32faa609af370964650bd50.gz";
      r2 = "j7/kj/SHA256E-s3498753943--d92014189748d44a9a40f52e1d6fdaeb8e54e27945391f827c07d7c299ca2e51.gz/SHA256E-s3498753943--d92014189748d44a9a40f52e1d6fdaeb8e54e27945391f827c07d7c299ca2e51.gz";
    }
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "PJ/17/SHA256E-s3454437575--c650376ed1b88fbbd62e103f2091851279d3d557cee691621f034509de1da3e9.gz/SHA256E-s3454437575--c650376ed1b88fbbd62e103f2091851279d3d557cee691621f034509de1da3e9.gz";
      r2 = "7Z/xf/SHA256E-s3423534196--942c8405eb236040d9713196e0773808b5f7aef9f6521827ae6378f882d566a6.gz/SHA256E-s3423534196--942c8405eb236040d9713196e0773808b5f7aef9f6521827ae6378f882d566a6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8m/Kp/SHA256E-s2439164150--b7b8deecd8bbccfb7825f1944b01ea61128a237a85d811603dbfd5183088d953.gz/SHA256E-s2439164150--b7b8deecd8bbccfb7825f1944b01ea61128a237a85d811603dbfd5183088d953.gz";
      r2 = "5V/Q7/SHA256E-s2457747198--449ca01e67ce8644131fd5bcae38bda258f6fcc75fe1fac263695a869036302b.gz/SHA256E-s2457747198--449ca01e67ce8644131fd5bcae38bda258f6fcc75fe1fac263695a869036302b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6q/VK/SHA256E-s2434458903--c6bf9cea3aa6eed230ff2eb5d4421f952039f1aa3751cbac4fe78749da6e8950.gz/SHA256E-s2434458903--c6bf9cea3aa6eed230ff2eb5d4421f952039f1aa3751cbac4fe78749da6e8950.gz";
      r2 = "QW/P3/SHA256E-s2457384031--334e820dd964305b1f612479ecaa6c0ddc42e233b383c2917def3b624b06d7ae.gz/SHA256E-s2457384031--334e820dd964305b1f612479ecaa6c0ddc42e233b383c2917def3b624b06d7ae.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Sample meeting with Clare 2023.11.23\nPlan on FFPE block 2.2: WES mainly for multiple primary, no clinical report needed unless actionable findings. \n";
      blood_recall_history = "08Dec23- She will do bloods at her next app on the 10thJan24\n\n\n23 Aug 2023 - Sent text, missed her callback, left voicemail. LR\n23-Aug Pt is going to text us dates that work for her for collection LR\n11-Sep Follow up voicemail and text message left LR\n05Oct- Follow up text sent AA, happy for us to send the tubes\n17Oct- sent followup text AA, but no answer\n23OCt- Checked her EPIC as she stopped replying, she has appointment at RMH on the 13th of December. I will ask her to do bloods then if no prior answer AA";
      d_case_summary = "Phx Cancer: previous breast fibroadenoma, papillary thyroid cancer";
      date_consented = "2023-08-06";
      tumour_type = "Thyroid cancer";
      tumour_details = "Thyroid cancer, previous breast fibroadenoma, papillary thyroid cancer";
      case_details = "44yo F\nPrevious breast fibroadenoma. \nOct 2021 Dx Thyroid cancer - 2 tumours. Invasive papillary carcinoma and Hurthle cell carcinoma. Stage I.\nBiopsy: FNA R thyroid nodule - malignant papillary carcinoma. \nSurgery: R hemithyroidectomy and lymph node dissection. \nAug 2022 Recurrence. Biopsy: FNA thyroid bed. Papillary thyroid carcinoma. (No IHC.)\nFNA R level 2 LN. Metastatic carcinoma, consistent with papillary thyroid carcinoma.\nSep 2022 Surgery: L completion hemithyroidectomy with right central neck dissection. One lymph node replaced by metastatic papillary thyroid carcinoma. (No IHC on diagnostic histology report.)\nMar 2023 Recurrence. US suspicious for persistent disease in R thyroid bed. \nJun 2023 Treatment: Radioactive Iodine Ablation. 51mCi dose of I-131. \nNov 2023 Block 2.2: Right neck level 7. 1 node sections received from Sep 2022 surgery. No blood received. \n\nQuick summary:\n1/10/2021\tDx Thyroid Cancer. Stage I but two different tumours, papillary carcinoma of thyroid and Hurthle cell carcinoma\n25/10/2021\tR hemithyroidectomy and CLND (Complete Lymph Node Dissection)\n1/8/2022\trecurrence\n30/9/2022\tL hemithyroidectomy and CLND (completion surgery)\n1/3/2023\trecurrence, treated with radioactive iodine ablation (RAI)\n\tprevious history of breast fibroadenoma\n\nFamily history\t\nMother\tBreast cancer 1985, again 1991\n\tPancreatic neuroendocrine tumour  2010\n\tbenign meningiomas 2010-current\n\tBasal cell carcinomas, multiple\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "07Nov2023- Sep2022 sample requested from PMCC path by Briony (email).\n16Nov2023 - Sep2022 sample received from PMCC by Lucy. ";
      mp_subgroup_sfrcp4_new_id = "1 rare plus 3 or more non malignant";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01795";
  }
