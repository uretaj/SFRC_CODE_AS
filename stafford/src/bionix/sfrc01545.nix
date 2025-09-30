with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vF/XQ/SHA256E-s1730048211--28356dfc50183c9486137eaca68c6129c1ed79fe46a339a7e14651b1f748de0f.gz/SHA256E-s1730048211--28356dfc50183c9486137eaca68c6129c1ed79fe46a339a7e14651b1f748de0f.gz";
      r2 = "7F/m9/SHA256E-s1777578176--28218e2c4f386410fd576a1b26de7818ba2689d551da8934badd4d663bc022be.gz/SHA256E-s1777578176--28218e2c4f386410fd576a1b26de7818ba2689d551da8934badd4d663bc022be.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "45/04/SHA256E-s1800754085--2ab232426db4fbb787c3236643d46d5945ef5fb67100304f947b9c8155b455a5.gz/SHA256E-s1800754085--2ab232426db4fbb787c3236643d46d5945ef5fb67100304f947b9c8155b455a5.gz";
      r2 = "ZJ/xM/SHA256E-s1854712106--84f79107f6445123953c0712593ca3f3d70e2708e2b079ddc05b761f9f510b68.gz/SHA256E-s1854712106--84f79107f6445123953c0712593ca3f3d70e2708e2b079ddc05b761f9f510b68.gz";
    }
    {
      site = "H";
      class = "tumours";
      pdx = false;
      r1 = "jZ/K4/SHA256E-s1491259141--efd130e38e1c1a27d4da652b9f20e7306f84886c8b1bd2fe09cfc7df267b5532.gz/SHA256E-s1491259141--efd130e38e1c1a27d4da652b9f20e7306f84886c8b1bd2fe09cfc7df267b5532.gz";
      r2 = "5V/2F/SHA256E-s1443864721--231dc07155a2aa7c4d804e75d076e133c8f6c8b98caeaeb34d74217564ce9a83.gz/SHA256E-s1443864721--231dc07155a2aa7c4d804e75d076e133c8f6c8b98caeaeb34d74217564ce9a83.gz";
    }
    {
      site = "H";
      class = "tumours";
      pdx = false;
      r1 = "MM/1p/SHA256E-s1520086635--2772eebb6655eedf16837156cab643fd642d056678833a32935916a960a03954.gz/SHA256E-s1520086635--2772eebb6655eedf16837156cab643fd642d056678833a32935916a960a03954.gz";
      r2 = "k4/Wm/SHA256E-s1474540045--1bc103340700beb819d8653d903e73c308ded5c7428b0157cf936d83dd670d04.gz/SHA256E-s1474540045--1bc103340700beb819d8653d903e73c308ded5c7428b0157cf936d83dd670d04.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2.11.2023:\n*Summary* \n- No germline variants \n- Somatic ATRX stop-gain variant \n- Somatic TP53 missense variant \n- Somatic CDC73 stop-gain variant \n- Somatic CHEK2 frameshift variant \n- No CNV focal events \n\n*Discussion* \nATRX and TP53 are PARPi indications. Unsure whether there is a trial for this setting.\n\nClare's Meeting 20.04.2023\nReviewed FFPE Block H\n60% purity. Do WES (and add to the list of adenosarcoma for Anna Hamilton) \nAsk Monica about the other adenosarcoma cases. ";
      blood_recall_history = "Patient to come to PMCC 16 May 22 for blood";
      d_case_summary = "78yo female with Adenosarcoma of uterus metastasis to the lung (indolent disease - Met's may have been present for years), Rx total hysterectomy 29June2011. No planned treatment for lung metastasis.";
      date_consented = "2022-03-13";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Adenosarcoma of uterus met to lung";
      case_details = "Female 69 years old \n\n2011-06: total hysterectomy, Figo stage 1C, FFPE block H received \n\n2021-12: lung metastases \n\n2022-01: lung core biopsies \nEpithelial: IHC positive: AE1/AE3, TTF-1 \nStromal: IHC positive: SMA. ER 90%, PR 10% \nSpindle cells: IHC negative: HMB45, STAT6, S100, CD34, CD10, CD117 \n\n2022-05: Blood B1 received ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "16Feb2023: June 2011 tissue sample re-requested from Dorevitch Pathology by Monica\n29Mar23: June 2011 sample received from Dorevitch by Monica\n\n18/03/2022: June 2011 tissue sample requested from Dorevitch Pathology by Devindee. \n\n";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01545";
  }
