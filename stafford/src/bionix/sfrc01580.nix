with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "f5/Wk/SHA256E-s18544027622--e12ec436f156fa6026d230aa3b7a8062d51058a204bab6b251005d5358d764de.gz/SHA256E-s18544027622--e12ec436f156fa6026d230aa3b7a8062d51058a204bab6b251005d5358d764de.gz";
      r2 = "45/jm/SHA256E-s17964862744--c692a0e4449be0390696199a763f2447d687254aa8b625b9fecda70562260052.gz/SHA256E-s17964862744--c692a0e4449be0390696199a763f2447d687254aa8b625b9fecda70562260052.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2J/P8/SHA256E-s5005974834--266aa5220ea718050adf471b4b0c6ec5c67eafa055e647daf61fb59fa07cb086.gz/SHA256E-s5005974834--266aa5220ea718050adf471b4b0c6ec5c67eafa055e647daf61fb59fa07cb086.gz";
      r2 = "7W/9G/SHA256E-s5062529662--d645eadff4162e1ea01b2c88eecf8a352ca0d2720fdf6f3d0e99e3faef6e6459.gz/SHA256E-s5062529662--d645eadff4162e1ea01b2c88eecf8a352ca0d2720fdf6f3d0e99e3faef6e6459.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 23.02.2023\nDiscussed WES report\nGermline NF1 has multiple VUS entries and not selected for in tumour. Insufficient evidence of relevance.\n\nResearch only: \nSomatic EMILIN2, missense variant, 36%\n(ENST00000254528.4, c.2861T>G, p.Ile954Ser)\n*Insilicos: DDDD\n*Bulky hydrophobic amino acid to small polar AA. Not seen in in gnomAD.  \n*Potentially Involved in ECM interactions. No specific information found related to uLMS \n\nTP53 and NF1 seen in MoST. \n\nClare meeting 19.09.2022\nGo ahead with WES on Block 1F. ";
      d_case_summary = "uLMS\n\n- Tissue to be recalled for WES\n- Not clinically urgent (also having TSO500 via MoST Program)\n- 15/01/2021 resection specimen?";
      date_consented = "2022-04-14";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "2021-01: Dx HG uLMS\nSurgery: TLH/BSO. (Block 1F)\nIHC positive: SMA, desmin, ER (3+, 10-15%), PR (2+, 10%)\n\n2022-03: Pulmonary metastases\nSurgery: resection.\nIHC positive: Caldesmon (patchy), Desmin (patchy), SMA (patchy), ER (weak to moderate, 5%)\nIHC negative: PR\n\n2022-04: Referred to SFRC (via ARC Portal) for WES\n\n2022-06: TSO500 done via MoST\n-TP53, 10% (C238S, NM_000546.5, c.712T>A)\n-ATRX, 4% (R444, NM_000498.3, c.1330C>T)\n\n2022-07: Blood B1 received\n\n2022-08: Block 1F (uterine fibroid from 2021 TLH/BSO) received.\n\n2022-11: 1F and B1 DNA sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01580_ARCPortal_14Apr2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "09/08/2022: Jan 2021 sample requested from DHM pathology by Devindee. \n31/08/2022: Jan 2021 sample block received from DHM pathology by Devindee\n07/11/2022: March 2022 block requested from DHM pathology by Devindee for uLMS study. \n21/11/2022: March 2022 block received.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01580";
    capture = CREv2;
  }
