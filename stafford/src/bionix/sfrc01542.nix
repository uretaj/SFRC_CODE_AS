with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "f8/22/SHA256E-s4397002549--c90b1e99cdb0f6207d0f65f02d85058cae829dd810b6cfc1cbbe4d7e0171fc07.gz/SHA256E-s4397002549--c90b1e99cdb0f6207d0f65f02d85058cae829dd810b6cfc1cbbe4d7e0171fc07.gz";
      r2 = "v5/08/SHA256E-s4370042207--4a4ad1f806b3678dff174836c9f1ed0b8b15787d4017f45a103784bb99d2b6bc.gz/SHA256E-s4370042207--4a4ad1f806b3678dff174836c9f1ed0b8b15787d4017f45a103784bb99d2b6bc.gz";
    }
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "Zp/1W/SHA256E-s4275612005--ee28c87ad7202f71ba2cfa463d894105b0ee0f4e46f7a10904063c7cb66bcbe6.gz/SHA256E-s4275612005--ee28c87ad7202f71ba2cfa463d894105b0ee0f4e46f7a10904063c7cb66bcbe6.gz";
      r2 = "K7/71/SHA256E-s4273585843--ac94264ec6f72c2e0c3f35d586516dd66bcf0f51c19ece795b92ec6056dc85cb.gz/SHA256E-s4273585843--ac94264ec6f72c2e0c3f35d586516dd66bcf0f51c19ece795b92ec6056dc85cb.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "24/76/SHA256E-s6980507812--ed9488ecdb0e05c6f69b3a699a1bf04ba59bf3d827229e4d9fb202dbe86bc075.gz/SHA256E-s6980507812--ed9488ecdb0e05c6f69b3a699a1bf04ba59bf3d827229e4d9fb202dbe86bc075.gz";
      r2 = "X0/W4/SHA256E-s7040266882--4846d19511ed13127eea367d7800c1c54092d8fe134766efef0fac471489bf1f.gz/SHA256E-s7040266882--4846d19511ed13127eea367d7800c1c54092d8fe134766efef0fac471489bf1f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jz/Kq/SHA256E-s7228595729--d136b1bc32791823c107b24bfb621641d37f3ba55861aa75a14ea0199bab61df.gz/SHA256E-s7228595729--d136b1bc32791823c107b24bfb621641d37f3ba55861aa75a14ea0199bab61df.gz";
      r2 = "Gq/6W/SHA256E-s7347362656--7331620a9f78efcf7d1d2fa33de93b380513a6fdb30d078866ef2dc73322ac8a.gz/SHA256E-s7347362656--7331620a9f78efcf7d1d2fa33de93b380513a6fdb30d078866ef2dc73322ac8a.gz";
    }
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "1f/jG/SHA256E-s7530133315--5950e9444beccb8971a1247b8501a03a8fce6af7672eb712a28bd31345b70506.gz/SHA256E-s7530133315--5950e9444beccb8971a1247b8501a03a8fce6af7672eb712a28bd31345b70506.gz";
      r2 = "01/40/SHA256E-s7538274085--83ec60a68829d399a92d9ade3ae99e2a3509fd2a20a700c054dcdca8792a4055.gz/SHA256E-s7538274085--83ec60a68829d399a92d9ade3ae99e2a3509fd2a20a700c054dcdca8792a4055.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2v/K0/SHA256E-s6124919579--5ff2290964dfe8093fc4c1af29cf1893f174e56dc758417279ccafda7c5e171d.gz/SHA256E-s6124919579--5ff2290964dfe8093fc4c1af29cf1893f174e56dc758417279ccafda7c5e171d.gz";
      r2 = "7Z/Gj/SHA256E-s6232866519--845b7e19c62a1dcd6d226ff6e745a964cee3d315bcf81a436c0cc1c2e3877d57.gz/SHA256E-s6232866519--845b7e19c62a1dcd6d226ff6e745a964cee3d315bcf81a436c0cc1c2e3877d57.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 1.2.2024 - TWIST WES Block A4:\n- No germline variants. \n- Reportable somatic TP53 missense variant. \n- Reportable somatic PIK3R1 disruptive inframe deletion variant. \n- Somatic PTEN splice variant - unsure if reportable.\n(Somatic PTEN: similar event in germline - may be same with different description?)\n\nClare's sample meeting 2023.09.15\nReviewing Her2 ISH results\nHer2 results from Prue Allan received 2023.09.15 \nIHC = 3+     ISH =positive  \n\nCS-Urgent report to the clinician in case they don't know the HER2 result. \n\nThen for TWIST WES. \n\nIf there is any chance of fresh tissue for Holly for mincing to go to Sydney for organoids by Maria Kavallaris and attempt a PDX that would be great. Clare and and Briony to alert Dr. \n\nSample meeting 11.08.2023\nplan on FFPE block A4\nHER2 IHC already done, should we organise Her2 ISH via Prue -  \nClare comments: YES PLEASE SEND OUR IHC RESULT TO PRUE AND ASK FOR ISH (I AM NOT SURE IF THE WILL REPEAT THE IHC) AS WE WILL NEED IT FOR ANY PUBLICATION, REALLY SHOULD HAVE IT FOR THE CLINIC TOO BUT IT IS NOT REIMBURSED SO OTHER STATES DON'T ALWAYS DO IT \nSend for WES? YES PLEASE SEND FOR WES FOR PT AND ALSO FOR HGSEC HER2 PROJECT, THANK YOU ";
      urgency_details = "Urgent as stated by Monica on WhatsApp. ";
      d_case_summary = "74yo woman with stage 4 endometrial HGSC. Underwent HBSO. Diagnosed 12 Oct 2021 and treated with carboplatin/paclitaxel (Date and number of rounds not provided). 13mm myometrial invasion suspicious for serosal involvement. There was a cervical stromal invasion. Tumour positive TP53. PET scan identified metastasis to mediastinal, abdominal and pelvic nodes, pelvis and possibly tiny liver metastasis. Pathology: HER 3  IHC. History of cardiac failure. Fhx - father: stomach cancer, - mother: bowel cancer, - sister: breast cancer. Had 4 rounds of chemo, been put on pause because not responding (herceptin) and has gone into heart failure. Blurred vision, unsteady, unable to drive, lost confidence. Seeing Life house counsellor,";
      date_consented = "2022-03-03";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      sfrcp_her2_report = "SFRC01542_A.4.jpeg";
      case_details = "2021-12:\t       Initial diagnosis, surgery,  HGESC, Figo IV, HER2 3+ (FFPE block A.4 received) \nIHC positive: P53 (mutated type) \nER weak, PR negative \nMLH1, PMS2, MSH2, MSH6 preserved \n\n2022-03:\t        Carbo, paclitaxel, Herceptin (stopped after 2) \n\n2022-06: \tBlood B1 received\n\n2023-08:\t Low volume disease in pelvic lymph node, plan for observation.\n\n2023-11:\t Disease progression on CT. Consideration of radiotherapy or single agent carboplatin due to toxicity concerns. \n  \nARC recommendation  \nThe WEHI SFRCP will recall FFPE for WES, HER2 IHC and FISH testing in our serous endometrial cancer project ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      portal_letter = "SFRC01542_ARCPortal_Referal_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "11/03/2022: Dec 2021 sample block requested from SSWP by Devindee.\n27Feb23: Dec 2021 sample block requested from SSWP by Monica\n21Jul23: followed up with SSWP re request\n31Jul23: Dec 2021 sample block received from SSWP by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    name = "SFRC01542";
    capture = TwistV2HR;
  }
