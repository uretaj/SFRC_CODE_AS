with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q7/QZ/SHA256E-s32159997581--6b56995b9a7b08c688e441b577143630089f9e00fd6f5a9ee84a9bfe0570054d.gz/SHA256E-s32159997581--6b56995b9a7b08c688e441b577143630089f9e00fd6f5a9ee84a9bfe0570054d.gz";
      r2 = "wX/xk/SHA256E-s33288378936--c0a492c94d516a187d47680c4adfe93d86caff2b6c69ec6b99adfcde98ab3721.gz/SHA256E-s33288378936--c0a492c94d516a187d47680c4adfe93d86caff2b6c69ec6b99adfcde98ab3721.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "WG/Xq/SHA256E-s32959396940--11f9c4121429b5e3ae3a48a18f9704192529c6aef95134876d7f35bb1ab7d129.gz/SHA256E-s32959396940--11f9c4121429b5e3ae3a48a18f9704192529c6aef95134876d7f35bb1ab7d129.gz";
      r2 = "XF/w8/SHA256E-s34170052390--516b74d9acb17d4dd44ff3d2a1d170807e408bd3b91742ca6510d127e3211aaa.gz/SHA256E-s34170052390--516b74d9acb17d4dd44ff3d2a1d170807e408bd3b91742ca6510d127e3211aaa.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "4g/G2/SHA256E-s27367464155--01418edaef85c78de6e3113edf8fdcddccaab6ef3be33bedc96f77f0a86b2bc1.gz/SHA256E-s27367464155--01418edaef85c78de6e3113edf8fdcddccaab6ef3be33bedc96f77f0a86b2bc1.gz";
      r2 = "7X/kv/SHA256E-s28071085961--0e704698b40ef8230953037366f0a6b408f301697953b9e711b9fc2dbd77c1e1.gz/SHA256E-s28071085961--0e704698b40ef8230953037366f0a6b408f301697953b9e711b9fc2dbd77c1e1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting notes 2020.10.09\nPatient has died. Confirmation of PALB2 is BROCA and the germline report from PeterMac. Clare can ask the son to get tested.\n\nMeeting notes 2020.06.18\nBlock already sent to Fox Lab for PALB2 validation, via FCC. Waiting on results.\n\nMeeting notes 2020.03.05\nBroca results discussed, Need to find out if this patient is alive, need to report PALB2 mutation immediately. Matt to work with Damien and Briony to generate report. Clare called Linda Mileshkin who agrees this should be reported and followed up. Josh to recall block to then send onto Fox lab if they agree to validate for PALB2.  \nDigest 1 vial from S1 and S2 mince (gently), isolate tumour cells, and put into 2 mice in matrigel  ";
      date_of_death = "07/2020";
      d_case_summary = "PALB2 \nMMR Proficient \nPatient Deceased. Estimated date of death in July of 2020. \nhigh grade serous endometrial; TLH BSO  /- SNL fresh tissue received 21/3/19; path no: 19972558; private patient of Deb Neesham; RW UR FP110619; PMCC UR 8197155\nAlso sees Linda Mileshkin.";
      date_consented = "2019-06-13";
      tumour_type = "HGSEC";
      tumour_details = "High Grade Serous Endometrial";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2019 Block containing HGSEC recalled from RWH via email on 13/3/2020, by Joshua\n\nBlock 2G received on 20/05/2020 by Joshua";
      histology_summary = "IHC:\n- strong p53 (mutational type) \n- WT1 negative\n- ER weak staining (1+) in 10% of cells\n- PR moderate staining (2+) in 25% of tumour\n- retention of MMR";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01155";
  }
