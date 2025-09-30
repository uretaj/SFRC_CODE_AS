with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Wq/2J/SHA256E-s2445599156--3118f477c0c670d72587602261b155f5d22a81bb1607e3b215da3f9280fd5cb4.gz/SHA256E-s2445599156--3118f477c0c670d72587602261b155f5d22a81bb1607e3b215da3f9280fd5cb4.gz";
      r2 = "59/0Z/SHA256E-s2424744786--d521eed8e5b031983c4e50adcfc4e3af5591c86ed4582cf97aea6c25a493462a.gz/SHA256E-s2424744786--d521eed8e5b031983c4e50adcfc4e3af5591c86ed4582cf97aea6c25a493462a.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Z6/qg/SHA256E-s2446256616--b90b7dab32365b9dd05ebff72c1358a976ead5d641f298ffd60d95611d388e31.gz/SHA256E-s2446256616--b90b7dab32365b9dd05ebff72c1358a976ead5d641f298ffd60d95611d388e31.gz";
      r2 = "kp/Wx/SHA256E-s2438871868--150a5d236694afd350e02cd05647682dd1a9242f5598476bc713d7f4d7e295f5.gz/SHA256E-s2438871868--150a5d236694afd350e02cd05647682dd1a9242f5598476bc713d7f4d7e295f5.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "g3/qf/SHA256E-s2437675980--40c0d2ad0fa3918e3d004a601eeb5f3a864125349f45e99d5ce1ae026f0d291d.gz/SHA256E-s2437675980--40c0d2ad0fa3918e3d004a601eeb5f3a864125349f45e99d5ce1ae026f0d291d.gz";
      r2 = "Wv/qk/SHA256E-s2423754538--cebd1da6437d8809d864e020d7bdd7bcbd84f871a40731248799bc2c576918bc.gz/SHA256E-s2423754538--cebd1da6437d8809d864e020d7bdd7bcbd84f871a40731248799bc2c576918bc.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "9j/P7/SHA256E-s2486831576--cb21613bdc8e90c2b8812e560c8977ec147b2e2a6ae8aff4f75a6f4fa126eea2.gz/SHA256E-s2486831576--cb21613bdc8e90c2b8812e560c8977ec147b2e2a6ae8aff4f75a6f4fa126eea2.gz";
      r2 = "0g/0w/SHA256E-s2486097866--ae9f70335d21bfca65dbe697a03380b6ac1a62be2e96f32dfe9c0b1aab628dbd.gz/SHA256E-s2486097866--ae9f70335d21bfca65dbe697a03380b6ac1a62be2e96f32dfe9c0b1aab628dbd.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wJ/zq/SHA256E-s684911377--54b062895e662eb678f9cb17cf9c9cd399e716afff4e05a7fd95f2a74e14401f.gz/SHA256E-s684911377--54b062895e662eb678f9cb17cf9c9cd399e716afff4e05a7fd95f2a74e14401f.gz";
      r2 = "5P/3w/SHA256E-s682804071--92c4d0eabdb70ee4ff920cb1cd9f44c4697c33338087bf365786847fca57237f.gz/SHA256E-s682804071--92c4d0eabdb70ee4ff920cb1cd9f44c4697c33338087bf365786847fca57237f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "QV/zM/SHA256E-s687243385--de26d73aa9243a7d4ae735a4676b6c4e2d2807c05245b0fbe291899f32a97069.gz/SHA256E-s687243385--de26d73aa9243a7d4ae735a4676b6c4e2d2807c05245b0fbe291899f32a97069.gz";
      r2 = "j6/5w/SHA256E-s689438683--a3570bbf9a204777a2375f859881b9badda472b63fb84f3413252a930e80f7d1.gz/SHA256E-s689438683--a3570bbf9a204777a2375f859881b9badda472b63fb84f3413252a930e80f7d1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VK/P8/SHA256E-s682548843--251f8a57b779ce98cd88290e1da330eea1c67b5f207d73f27610f345d9a829f0.gz/SHA256E-s682548843--251f8a57b779ce98cd88290e1da330eea1c67b5f207d73f27610f345d9a829f0.gz";
      r2 = "KM/87/SHA256E-s682724631--7155d92c1d3b1c94f599ed129514b77eab9cf696b034f098de5d7eafe8b7222b.gz/SHA256E-s682724631--7155d92c1d3b1c94f599ed129514b77eab9cf696b034f098de5d7eafe8b7222b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J3/Qw/SHA256E-s716540682--1e06b2e395e7e0827937e3c5bf32f729ff5a8c2636249b03a9455cb9d55f55b9.gz/SHA256E-s716540682--1e06b2e395e7e0827937e3c5bf32f729ff5a8c2636249b03a9455cb9d55f55b9.gz";
      r2 = "jF/0x/SHA256E-s720977849--d5b95866e25cbcff483fc1e0b3ca122af30f2b404d655c07c07c3fbc07516295.gz/SHA256E-s720977849--d5b95866e25cbcff483fc1e0b3ca122af30f2b404d655c07c07c3fbc07516295.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 15.02.2024:\nFinding out what the patient has been given (PMS2 known). Report the top 3 variants. Check with Damien if CCND1 is worth reporting (others aren't necessary). \n\nSample meeting with Clare \nPlan for FFPE block 1A: Plan: send for WES";
      blood_recall_history = "20Jun23 - DNA voicemail left\n23Jun23 - Currently away on a cruise, back mid July ";
      urgency_details = "For her clinical treatment as per Clare";
      d_case_summary = "Dx 68 metastatic oesphageal small cell high grade neuroendocrine tumour w/ loss of MLH1 and PMS2\nDiagnosed at biopsy (Epworth Geelong) - has not had surgery\nFox lab confirmed TSO-500 not done as at 17May2023";
      date_consented = "2023-05-15";
      tumour_type = "Other NET";
      tumour_details = "oesphageal small cell high grade neuroendocrine tumour";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      fcc_report = "SFRC01757_FCPanel_24Apr2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "18May23: Sep22 sample requested from Melbourne Pathology by Monica\n23May23: Sep22 sample received from Melbourne Pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    name = "SFRC01757";
    capture = TwistV2HR;
  }
