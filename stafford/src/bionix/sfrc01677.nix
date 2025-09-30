with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "5M/qf/SHA256E-s2985889847--5430534b978cbb0cbe6a86535365c8f13fe75df283e4b518c6fc47262f57fd9f.gz/SHA256E-s2985889847--5430534b978cbb0cbe6a86535365c8f13fe75df283e4b518c6fc47262f57fd9f.gz";
      r2 = "03/Zv/SHA256E-s3019878431--0731cb4cdc58962bafa41003ece5c55b2d60d1528885e369a5b9edd8c61fa46d.gz/SHA256E-s3019878431--0731cb4cdc58962bafa41003ece5c55b2d60d1528885e369a5b9edd8c61fa46d.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "6j/jF/SHA256E-s2991022650--a3efa1fda506a8f3c38edf60d16c71a2b4df99b287c3899b763a3ce6db90ad59.gz/SHA256E-s2991022650--a3efa1fda506a8f3c38edf60d16c71a2b4df99b287c3899b763a3ce6db90ad59.gz";
      r2 = "66/07/SHA256E-s3026073359--47ee3ec87232c68fb33154e9f6cd91bc82cc5ff3d5fab065d361893de10caae3.gz/SHA256E-s3026073359--47ee3ec87232c68fb33154e9f6cd91bc82cc5ff3d5fab065d361893de10caae3.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "W2/XP/SHA256E-s3284936107--d4d1c24146a15cadcafec903c8d71c5a3e3a65a5e77f9a7f7dedb02df74ae7ea.gz/SHA256E-s3284936107--d4d1c24146a15cadcafec903c8d71c5a3e3a65a5e77f9a7f7dedb02df74ae7ea.gz";
      r2 = "M2/3J/SHA256E-s3332474407--b356382dfbc38372fad5a9f797ddde01b73a72aa3d6d99f4923423e058d3b668.gz/SHA256E-s3332474407--b356382dfbc38372fad5a9f797ddde01b73a72aa3d6d99f4923423e058d3b668.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j9/4V/SHA256E-s751361708--ed21fdd475c665ffd5a199d357adfbfe01e7387ddd3edde8add5731d87b9067d.gz/SHA256E-s751361708--ed21fdd475c665ffd5a199d357adfbfe01e7387ddd3edde8add5731d87b9067d.gz";
      r2 = "Mk/5p/SHA256E-s771861524--9575834f04421c9f9398743daf68f05de1d0de4a12e307e9a91709756a5eec00.gz/SHA256E-s771861524--9575834f04421c9f9398743daf68f05de1d0de4a12e307e9a91709756a5eec00.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0j/K6/SHA256E-s752554330--e4bcf4c2e7f31f75f357747e123cbe38c89092d8372699f893969797f4324381.gz/SHA256E-s752554330--e4bcf4c2e7f31f75f357747e123cbe38c89092d8372699f893969797f4324381.gz";
      r2 = "8p/54/SHA256E-s772875808--04e46bb0f5bffea579534bd82070586ed3fc9a08d51d6c0d9d4f37c3683908b3.gz/SHA256E-s772875808--04e46bb0f5bffea579534bd82070586ed3fc9a08d51d6c0d9d4f37c3683908b3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1K/G8/SHA256E-s864481864--e79006f23bc70eaaa66a8c054578950b5db673510c29127e5ee6840e554cbb89.gz/SHA256E-s864481864--e79006f23bc70eaaa66a8c054578950b5db673510c29127e5ee6840e554cbb89.gz";
      r2 = "vX/13/SHA256E-s891879538--9b5f336e15020ae9a6f53e8fc41949af4a967e8672e78afd7ad12f6d0733c50a.gz/SHA256E-s891879538--9b5f336e15020ae9a6f53e8fc41949af4a967e8672e78afd7ad12f6d0733c50a.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "V7/GP/SHA256E-s281496731--802b2a512627a8f3dc5a9adaaee934858aa878bc177fd31f0d1b2ce763174920.gz/SHA256E-s281496731--802b2a512627a8f3dc5a9adaaee934858aa878bc177fd31f0d1b2ce763174920.gz";
      r2 = "3X/KJ/SHA256E-s277694101--788861266a1340f824a1aa20e6b0ce94eec007598053d70663c7f92bb9f66cd9.gz/SHA256E-s277694101--788861266a1340f824a1aa20e6b0ce94eec007598053d70663c7f92bb9f66cd9.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "zF/M6/SHA256E-s234419331--c2dcad9ad01c1aa5c539e0ede34e8f54ea085aa7e21dfeb731e7f6a7edd7673b.gz/SHA256E-s234419331--c2dcad9ad01c1aa5c539e0ede34e8f54ea085aa7e21dfeb731e7f6a7edd7673b.gz";
      r2 = "6Z/Q5/SHA256E-s229865609--b82f7684ff8716390250249752dc25544f047308d73470a2e40eeaa0a0b38189.gz/SHA256E-s229865609--b82f7684ff8716390250249752dc25544f047308d73470a2e40eeaa0a0b38189.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "FX/Km/SHA256E-s363176779--094da98bdb903b4d3cb002508ba08a5354dd8c34e798b0c09377d71b2ed6a518.gz/SHA256E-s363176779--094da98bdb903b4d3cb002508ba08a5354dd8c34e798b0c09377d71b2ed6a518.gz";
      r2 = "F1/kV/SHA256E-s359597292--9c2fa7f66eaf603befcc12d579294b13374591c3de82af7ec59e13e68fec8219.gz/SHA256E-s359597292--9c2fa7f66eaf603befcc12d579294b13374591c3de82af7ec59e13e68fec8219.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "FJ/JW/SHA256E-s441680554--111f4b604a2b6576530757c4ed6ab71ebef0c3ea23d11d4552f6ee7760c14f60.gz/SHA256E-s441680554--111f4b604a2b6576530757c4ed6ab71ebef0c3ea23d11d4552f6ee7760c14f60.gz";
      r2 = "vk/39/SHA256E-s440614474--79bd23adc188a7d1e16e005f6010315a5a94626afc54e728065753719549cbd9.gz/SHA256E-s440614474--79bd23adc188a7d1e16e005f6010315a5a94626afc54e728065753719549cbd9.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "qm/0Z/SHA256E-s1232561778--87d4220a52aa86111ec264bf95d94054d52d206b389143f7e0dd663d97c6fc62.gz/SHA256E-s1232561778--87d4220a52aa86111ec264bf95d94054d52d206b389143f7e0dd663d97c6fc62.gz";
      r2 = "px/zQ/SHA256E-s1233412605--d7c093dbf4258d6e253d59f95af96a7c0c20be3e147b263886cec3d1a5be955b.gz/SHA256E-s1233412605--d7c093dbf4258d6e253d59f95af96a7c0c20be3e147b263886cec3d1a5be955b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 11.4.24 (Block 1.1):\nGermline SDHA variants in this case - Matt and Justin to investigate \nCN plots looks ATRX, but not necessarily HRD \nSDHA review (Matt and Justin) - twist specific artefact based on current evidence.\n\n\nSample meeting with Clare 2023.06.15\nPlan for FFPE block 1.1: send for WES";
      d_case_summary = "Metastatic uLMS";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "62 years old female \n\n2015-02:\tInitial diagnosis, TAHBSO \n\t\tIHC positive: SMA, caldesmon\t \n\t\tIHC negative: Desmin \n\t\tKi-67 40%, ER AND PR negative \n\n2022-08:\tRecurrence, wedge resection, FFPE block 1.1 received \n\t\tIHC positive: Desmin, SMA\t \n\t\tIHC negative: TTF1 \n\t\tER and PR negative \n\n2022-10: Metastatic disease \nBRCA testing: no pathogenic variants detected  \n\n2022-22: Blood B1 received \n\nOption of MoST CIRCUIT trial, Somatic BRCA testing  ";
      brca_report = "SFRC01677_BRCASomatic_30Sep22_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "30Mar23- blocks requested for uLMS project from PMCC, MH Path and RCH path. BM\n18May23 - block received by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01677";
  }
