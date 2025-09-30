with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FK/9X/SHA256E-s1621187408--d80e190ee424f2e1c5f8d5c7edec58adcef2313ec2a69b5e8b857161eb3eb21f.gz/SHA256E-s1621187408--d80e190ee424f2e1c5f8d5c7edec58adcef2313ec2a69b5e8b857161eb3eb21f.gz";
      r2 = "V9/J2/SHA256E-s1630218459--4bb949f5fd15d9b9bf65a304ea93db37c39f2600b285f786068ee490d311db68.gz/SHA256E-s1630218459--4bb949f5fd15d9b9bf65a304ea93db37c39f2600b285f786068ee490d311db68.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "64/M0/SHA256E-s1598153964--5f131d644d7b578ae2e15d026ea4e563548e8bd77c40dd550572b49a2339897f.gz/SHA256E-s1598153964--5f131d644d7b578ae2e15d026ea4e563548e8bd77c40dd550572b49a2339897f.gz";
      r2 = "8V/Qj/SHA256E-s1609743807--ba7d3b29520e7d503f14b1f11e39fd9b5e414134bacc27bd5a3acb84d4204234.gz/SHA256E-s1609743807--ba7d3b29520e7d503f14b1f11e39fd9b5e414134bacc27bd5a3acb84d4204234.gz";
    }
    {
      site = "S2_T1_1538";
      class = "tumours";
      pdx = true;
      r1 = "PW/Gk/SHA256E-s3560206513--889bedfcbd034d39eb94d498c6bc7627f87586d8d7a44f98dce07bdab4b392c4.gz/SHA256E-s3560206513--889bedfcbd034d39eb94d498c6bc7627f87586d8d7a44f98dce07bdab4b392c4.gz";
      r2 = "X0/qW/SHA256E-s3595278818--fb60f5b7edda526129f3efd5931b21442d8c103b7ba66dca643c6ce3aaa50dca.gz/SHA256E-s3595278818--fb60f5b7edda526129f3efd5931b21442d8c103b7ba66dca643c6ce3aaa50dca.gz";
    }
    {
      site = "S2_T1_1538";
      class = "tumours";
      pdx = true;
      r1 = "PZ/P0/SHA256E-s3529260692--700d16e7f38d0af6bb684c869f85743d14e4ae953631c75a5d4f68333980f383.gz/SHA256E-s3529260692--700d16e7f38d0af6bb684c869f85743d14e4ae953631c75a5d4f68333980f383.gz";
      r2 = "fW/17/SHA256E-s3569664061--9d45529381f2c6ee407330374d5c994d4cdb668a27ba0a594b0fa8e9118b285e.gz/SHA256E-s3569664061--9d45529381f2c6ee407330374d5c994d4cdb668a27ba0a594b0fa8e9118b285e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's sample meeting 24.08.2023\nPlan on Ascites tumour purity 40-505: ascites went into mice. Should we do something else? \nCS-no just wait to see if we get a PDX for Cass. Patient refused treatment and is palliative.\n\nClare's Meeting 22.12.2022\nB7H4 on FFPE Block 1K - 80% positivity in tumour cells. Topoisomerase1 inhibitors don't work, TOPO2 inhibitors do work? CT scan on 4th Jan, chemo on 10th. Is being screened for AZD8205 trial now. Wait for now. \n\nRC Meeting 10.11.2022\nDiscussed WES report on S1 tissue:\nClare/Damien to look into Pol1 trial as it may be open again with amendments\nDo B7H4 IHC\n\nRC meeting 17.03.2022\nQuestioning which sample to use for WES. \n as purity is too low for WGS on fresh sample. Is it better to use OCT with 20-25% tumour purity or FFPE block with 30-40%? \nDo FFPE, deep sequencing  as tumour area is easier to extract.\n\nClare's meeting 10.02.2022\nBlock 1K: If Trisha has frozen tissue, do WGS. Otherwise would do WES on the FFPE. \nBriony to contact Trishia \n\nClare's email 14.12.2021\nGet Warren to recall a block and then organise Cyclin E IHC. Clare wanting to get review before 18th of January 2022";
      myriad_report = "SFRC01495_MyriadResult_27Jan2023_Redacted.pdf";
      date_of_death = "09/2023";
      d_case_summary = "FIGO stage IV (cT3cN1b) HG serous adenocarcinoma of FGT origin - Feb 21\ngBRCA1/2 WT, gOvCA panel WT Somatic BRCA1/2 WT";
      date_consented = "2021-12-13";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "gBRCA1/2 WT, gOvCA panel WT Somatic BRCA1/2 WT \n\n2021-02:\tInitial diagnosis: Ascites,  FIGO stage IV HG serous adenocarcinoma of FGT origin \n-IHC positive: PAX8, WT1, BEREP4, CK7, Cam 5.2 \n-IHC negative: calretinin, CK20, GATA3, CDX2, P53, TTF1, P40 and GATA3, \n-ER, PR weak staining  \n\n2021-05: Surgery : Hysterectomy and BSO (block 1K received, 30-40% circled area, 15-20% entire area,  and Fresh frozen tissue S1) \nMyriad, HRD positive, GIS 68\n\n2021-07: completion of 6 cycles carboplatin/paclitaxel/bevacizumab  \n\n2021-12:\t6 cycles maintenance of avastin \n\n2022-01: Cyclin E on FFPE Block 1K: +2/+3 positivity in approx. 60% tumour nuclei\n\n2022-02:\tBlood B1 received. Frozen fresh tissue S1 (from 2021-05 surgery) received.\n\n2022-05 to 2022-10: CALYPSO (DOXOrubucin liposomal / cARBOplatin) \n\n2022-06: 1K DNA sent for BROCA (awaiting results)\n\n2022-08: 1K and B1 DNA sent for WES\nSomatic TP53, pathogenic\nMYC amplification, CN7\n\n2022-12: B7H4 IHC on FFPE Block 1K\n\n2023-01 to 2023-03: 3rd line gemcitabine/bevacizumab \n\n2023-07 Ascites S2 collection and weekly cisplatin\n___________________________________________________\nSurgery 26/5/2021 \n\nDEBULKING OF INTRA-ABDOMINAL MALIGNANCY AND OMENTECTOMY (Abdomen),  \n\nRADICAL HYSTERECTOMY (Pelvis), RIGID CYSTOSCOPY (Bladder), (Bilateral) SALPINGO-OOPHORECTOMY (Abdomen) \n\nExtent of Debulking: < 0.5cm residual optimal debulking, RUQ, Epigastrium, LUQ, LLQ lower jejunum, lower ileum <5mm \n\nDischarged 30/5/2021 ";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 68";
      fcc_report = "SFRC01495_IGNITE_IHC_FISH 24Feb22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Warren requested block from RWH (17.12.2021)\n\nMay 2021 sample slides received by Devindee 07/01/2022. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01495";
  }
