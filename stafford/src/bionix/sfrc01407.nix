with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A";
      class = "tumours";
      pdx = false;
      r1 = "Mg/ZF/SHA256E-s11991840937--d27f1c8b744a9db148185be2304ff0311096a897b8bddeb8f73d6e242b417b33.gz/SHA256E-s11991840937--d27f1c8b744a9db148185be2304ff0311096a897b8bddeb8f73d6e242b417b33.gz";
      r2 = "86/w9/SHA256E-s12524838150--66bdb96c09e4c6fe66483209459495f4c1b5102026d6fff833ce4e79030485bc.gz/SHA256E-s12524838150--66bdb96c09e4c6fe66483209459495f4c1b5102026d6fff833ce4e79030485bc.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "77/XW/SHA256E-s3122310391--7fdc5d095c54e5a3155a72ec43abfa9c32f584b78d0572f042845e5d2ed3de63.gz/SHA256E-s3122310391--7fdc5d095c54e5a3155a72ec43abfa9c32f584b78d0572f042845e5d2ed3de63.gz";
      r2 = "gV/M8/SHA256E-s3336944635--77b37f9d5229404f82699bbb9690c83579d7a189b69f4cb400833a209f12a31b.gz/SHA256E-s3336944635--77b37f9d5229404f82699bbb9690c83579d7a189b69f4cb400833a209f12a31b.gz";
    }
    {
      site = "A";
      class = "tumours";
      pdx = false;
      r1 = "Xg/mf/SHA256E-s1453350613--d11cc5d8b1a18ff675a3218a40e42bf2f9f9f3cf9223b1a220ecdbd838807c2e.gz/SHA256E-s1453350613--d11cc5d8b1a18ff675a3218a40e42bf2f9f9f3cf9223b1a220ecdbd838807c2e.gz";
      r2 = "Pj/zW/SHA256E-s1485944725--9f98fe6a1d4de4b8f800f4beedf4914fe325a716b56fbd6f891391cf7cf01894.gz/SHA256E-s1485944725--9f98fe6a1d4de4b8f800f4beedf4914fe325a716b56fbd6f891391cf7cf01894.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qp/01/SHA256E-s1314333670--c2abc2db5b101dd078b457ed57ebc60fae8e7898d47e53aefa9d7584caec13ea.gz/SHA256E-s1314333670--c2abc2db5b101dd078b457ed57ebc60fae8e7898d47e53aefa9d7584caec13ea.gz";
      r2 = "pF/Z6/SHA256E-s1372905126--9f5902d34eaff32e23973fd9a1c48964c2f8e31070a5aae3b85b27c7efaffbf9.gz/SHA256E-s1372905126--9f5902d34eaff32e23973fd9a1c48964c2f8e31070a5aae3b85b27c7efaffbf9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 08.09.2022\nDiscussed BROCA results.\nIn WES, PIK3R1 was germline, listed as somatic in BROCA. This mutation likely germline.\n\n\nBROCA meeting with Clare 04.11.2021\nSend block A for BROCA\n\nMeeting with Clare 2021.09.10\nalready done ISH=positive. Send for WES. Let Briony know, to tell Sumi.\n\nRC Meeting 02.09.2021\nOnce FFPE block reviewed, would be priority WES";
      d_case_summary = "Diagnosis:\nHigh grade serous uterine carcinoma\n\nProgress:\n1. Apr 2021: Surgical resection- serous carcinoma, 32/32mm invasion, LVSI, deposits on surface of ovaries,\nnodal metastasis. pMMR and HER2 3  on IHC.\n2. Apr 2021: Planned to commence six cycles adjuvant carboplatin and paclitaxel followed by RT.\n3. Apr 2021: Referred to ARC Portal to assist with advice regarding targeted therapy.";
      date_consented = "2021-05-07";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "04-2021: Surgical resection, Total hysterectomy+BSO - serous carcinoma. Endometrial curettings fixed and blocked (Block A (21H))\n\nNegative: ER, PR \nPositive:  pMMR, HER2 3+, MSH2, MSH6, MLH1 and PMS2, p16 and B-catenin \nP53 null mutational pattern of staining \n\nCommenced six cycles adjuvant carboplatin and paclitaxel followed by RT. On Herceptin maintenance.\n\nReferred to ARC Portal to assist with advice regarding targeted therapy. \n\n06-2021: Her2 ISH reported positive: 3+. Blood B1 received.\n\n08-2021: FFPE block A (21H) received. \n\n10-2021: A (21H) and B1 DNA sent for WES\n\n11-2021: A (21H) and B1 DNA sent for BROCA\n\n12-2021: A (21H) and B1 DNA sent for methylation. No methylation detected.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01407_ARCPortal_Case Report_FINAL_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "11Aug- Block request was delayed? Please process ASAP once received. BM\nBlock requested from ACL by Warren 15/08/21, received 31/8/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01407";
  }
