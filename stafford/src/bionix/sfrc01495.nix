with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "KZ/fM/SHA256E-s20707173604--02e76cd9a527fd49f664d19d4169dfc142c341d7d2466705937274d2b4fd45ad.gz/SHA256E-s20707173604--02e76cd9a527fd49f664d19d4169dfc142c341d7d2466705937274d2b4fd45ad.gz";
      r2 = "kj/qz/SHA256E-s20829498387--e16ee600f4743687c4c802af0922c20c4212217d684ac4d2dd06450b640c9548.gz/SHA256E-s20829498387--e16ee600f4743687c4c802af0922c20c4212217d684ac4d2dd06450b640c9548.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "JZ/pm/SHA256E-s6731148017--66ebf6099bd1c2f10e99805354d8ada70f8f00e0c43072b0c093fbbfd6954d10.gz/SHA256E-s6731148017--66ebf6099bd1c2f10e99805354d8ada70f8f00e0c43072b0c093fbbfd6954d10.gz";
      r2 = "xj/jk/SHA256E-s6987130314--c1fc68e7d866c7e8dc76b2bc4bef493562410e99068c0c0e227e82dc8368c56e.gz/SHA256E-s6987130314--c1fc68e7d866c7e8dc76b2bc4bef493562410e99068c0c0e227e82dc8368c56e.gz";
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
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01495";
  }
