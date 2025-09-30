with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gk/K4/SHA256E-s34659455105--e7fbdf9b17634fa3f6904bd1ddee62a22128179bf5456dd52e47e2e7489aeb0c.gz/SHA256E-s34659455105--e7fbdf9b17634fa3f6904bd1ddee62a22128179bf5456dd52e47e2e7489aeb0c.gz";
      r2 = "Z8/6g/SHA256E-s38080233414--d2c35833a1ec5a71454dc382edb7eede387a704b0b48ebdd67d95d4754311cac.gz/SHA256E-s38080233414--d2c35833a1ec5a71454dc382edb7eede387a704b0b48ebdd67d95d4754311cac.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "93/qQ/SHA256E-s82743546717--9dca424b94ccda2f1a8efff50a5c804cd2732a5e15327aa8957793c848706462.gz/SHA256E-s82743546717--9dca424b94ccda2f1a8efff50a5c804cd2732a5e15327aa8957793c848706462.gz";
      r2 = "Z0/jQ/SHA256E-s90976868597--961dcdb294f2f7bebd612399c2df12c9c5f3277661ba7ed8a0fafe6f291d4bbd.gz/SHA256E-s90976868597--961dcdb294f2f7bebd612399c2df12c9c5f3277661ba7ed8a0fafe6f291d4bbd.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "q0/5f/SHA256E-s3417196493--0885272c4b2a45cf7b86367f41225dd750afbb801914d9b081f353acf029be8b.gz/SHA256E-s3417196493--0885272c4b2a45cf7b86367f41225dd750afbb801914d9b081f353acf029be8b.gz";
      r2 = "48/wk/SHA256E-s3676974778--f3b5a533f1604f0f2e6534e9ebe28006b53b8101a08e6e52df35141576f6427d.gz/SHA256E-s3676974778--f3b5a533f1604f0f2e6534e9ebe28006b53b8101a08e6e52df35141576f6427d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nThe NF1 needs to be checked (we can't see the reported variant). \nCN plot has warnings.\nFlagging Anhtony (HGSOC --> OCS) \nMYC is amplified, just a large region (tail of the chromosome). The number of copies is uncertain.\n\nClare Meeting 18.05.2023\nSample only just submitted for WGTS, but patient is now deceased. Have the ok for research only WGS report from Joep.\n\nClare's Meeting 09.03.2023\n-S1 tissue is 50 - 55% purity. To do WGTS.\n-Possible eligibily for EPOCH  ";
      date_of_death = "03/2023";
      d_case_summary = "78, met HGSOC w neurofibromatosis. Wt gBRCA, no somatic HRD mutations (EMBRACE), no promoter methylation. On Olaparib (ICON 9) since 08/2021 (SD)";
      date_consented = "2023-02-08";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, now carcinosarcoma";
      case_details = "78F\n\n2019-10: Dx HGSOC Stage IV via core biopsies\nIHC positive: p53 (80% tumour cells), PAX8, ER (2+, <2%), WT-1, BER EP4, CK7\nIHC negative: PR, CK20\n\n2019-11 - 2020-03: Chemotherapy: Carboplatin/Paclitaxel x5\n\n2020-01: Surgery: RSO, omentectomy (prior hysterectomy for benign disease)\nIHC positive: p53, PAX8, ER (+2, 5%), PR (+2, <5%), WT-1, CK7,\n\n2021-03: Recurrence; platinum sensitive.\nEMBRACE: gBRCA WT, no somatic HRD mutation, no BRCA1 promoter methylation\n\n2021-04 - 2021-07: Chemotherapy: Doxorubicin/carboplatin\n\n2021-08: Clinical Trial: PMC18/150: Olaparib + Cediranib\n- registered to ICON9 post completion of 2nd line \n  Carbo/Caelyx\n- cediranib not tolerated due to intolerable \n  GI/systemic Aes, stopped at Cycle 4\n\n2023-02: Metastasis - pelvic tumour. Carcinosarcoma.\nFresh Tissue S1 received, Blood B1 received. \nIHC positive: p53, PR (2+, <5%), AE1/3, vimentin\nIHC negative: ER\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01718";
  }
