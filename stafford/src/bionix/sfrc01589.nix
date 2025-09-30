with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1M";
      class = "tumours";
      pdx = false;
      r1 = "ZX/G2/SHA256E-s30537137503--8aed40b35a0e4076158d06dd39b7578b4f51f15d5e0a86bee943b04023f4333c.gz/SHA256E-s30537137503--8aed40b35a0e4076158d06dd39b7578b4f51f15d5e0a86bee943b04023f4333c.gz";
      r2 = "W9/qM/SHA256E-s31236919760--d9de7d4d16722170869fb9a5a25dcf7684431a6c2697d6baf2860b5317fbb80a.gz/SHA256E-s31236919760--d9de7d4d16722170869fb9a5a25dcf7684431a6c2697d6baf2860b5317fbb80a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0q/Fw/SHA256E-s5357912730--d2cedf5b759cb7ec8c3eb72929081462f65ba51f72019ecbdadbeda7a3ac72a5.gz/SHA256E-s5357912730--d2cedf5b759cb7ec8c3eb72929081462f65ba51f72019ecbdadbeda7a3ac72a5.gz";
      r2 = "mV/p6/SHA256E-s5536766571--7400e305c9e0bd4e805952cd54daf050d864e2749ebd1d5dd72d917c53ed7832.gz/SHA256E-s5536766571--7400e305c9e0bd4e805952cd54daf050d864e2749ebd1d5dd72d917c53ed7832.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block 1M\n\nRC Meeting 15.12.2022\nDiscussed WES report:\nPlan: Get HER2 IHC and ISH done. \nTo report: TP35 and ERBB2 amplification\nIssue report: Yes. High urgency.\n\nClare's Meeting 26.08.2022\nFFPE Block 1M: WES and urgent BRCA panel if enough DNA. ";
      d_case_summary = "High grade serous carcinoma of endometrium. Deep invasion, extensive LVSI, bilateral ovarian involvement, macrometastasis in bilateral sentinal nodes with metastatic deposit in adjacent left nodal fat, tumour seen in cervical vessels.\nHormone receptors: ER 1 , PR -ve\nMMR: performed on curette\n- p53 strongly positive (mutation pattern)\n-Endometrial Intraepithelial Carcinoma (EIC):Present\n-No stromal cervical involvement but seen in cervical vessels\nFor minimum BRCA testing please.";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "73yo woman\n\n2022-02: Diagnosed Stage IIIC high grade endometrial adenocarcinoma\n\n2022-03: Surgery: TLH, BSO, SLNB, omental biopsy. SBO post op. Tumour fixed and blocked (Block 1M)\n-Histopath: \n -IHC positive: ER (1+ staining in <5% tumour), P53 \n  (strong positive mutation pattern of staining), WT1 \n  (focal areas of positivity), P16 (strong and diffuse)\n -IHC negative: PR, vimentin\n -pMMR\n\n2022-05 - current: Chemotherapy: cisplatin (Concurrent RTx) then carboplatin/paclitaxel (PORTEC 3)\n\n2022-06: Blood B1 received.\n\n2022-08: Sections from Block 1M (endometrial tumour 2022-03) received.\n\n2022-09: DNA from Block 1M sent for BRCA: No pathogenic variants detected.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Trisha has frozen tissue.\n18/07/2022: March 2022 sample requested from RWH pathology by Devindee. \n06/08/2022: March 2022 sample slides received from RWH pathology by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01589";
    capture = CREv2;
  }
