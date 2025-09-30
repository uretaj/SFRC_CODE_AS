with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2H";
      class = "tumours";
      pdx = false;
      r1 = "K5/0f/SHA256E-s24259240712--22d8c5fb603b459334aa8ec7bd12e3f8154c44d280d667f8d5de94960b8f7598.gz/SHA256E-s24259240712--22d8c5fb603b459334aa8ec7bd12e3f8154c44d280d667f8d5de94960b8f7598.gz";
      r2 = "WM/VJ/SHA256E-s24902902051--2211109223111fadcba17c84b33fed9a4a1cf5f8b57baf51fcf2ea467c388ada.gz/SHA256E-s24902902051--2211109223111fadcba17c84b33fed9a4a1cf5f8b57baf51fcf2ea467c388ada.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "F4/p7/SHA256E-s4939302332--d0e3ff2df6fd356ca0384474adbb67cf8a1991c3d65814d4d9d28375e81e369f.gz/SHA256E-s4939302332--d0e3ff2df6fd356ca0384474adbb67cf8a1991c3d65814d4d9d28375e81e369f.gz";
      r2 = "Xw/JG/SHA256E-s5096860100--a8f9c388819778084851b2c501a4e0254776d7c30cbc05a23b8bf8c60205bae9.gz/SHA256E-s5096860100--a8f9c388819778084851b2c501a4e0254776d7c30cbc05a23b8bf8c60205bae9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Rare Cancer (WES) meeting 30.06.2022\nMandy/Clare to contact Paul James following analysis (2x germline BRCA2 mutations). Would like fresh tissue for WGS and PDX.\n\nBROCA meeting 18.02.2022\nGo ahead with WES and BROCA on FFPE block 2H\n\nClare's meeting 20.12.2021\nBlock 1H: Gayanie's comment regarding high grade or not status: This is a moderately differentiated SCC. We do not categorise SCC to high/low grades on Ki-67. and there are no KI-67 values in the redcap -path reports\nGo ahead with WES and BROCA\n\nMeeting with Clare 16.12.2021\nBlock 1H: do WES, Briony to organise blood \nAsk Gayanie if high grade (without high Ki-67 information), if so, send for BROCA.";
      d_case_summary = "Ovarian ?Squamous\nReferred to SFRCP for additional sequencing. Clare recommends path review/ discussion with pathologist, then lit review and expert opinion on prognosis/ relapse risk/ management. Unusual histo report and subtype. Following consent for SFRCP and ? WES on FFPE.";
      date_consented = "2021-10-14";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Squamous cell ovarian carcinoma, stage 1C2+";
      case_details = "53 years old \n\n2021-02:\toophorectomy, cyst rupture \n\n2021-08:\tTAHBSO, FIGO stage 1C2. Left ovary and tube fixed and blocked (Block 2H)\n\nIHC positive: CK5/6, P40 and GATA 3 \n\n2021-09: Chemoradiotherapy ordered - radiotherapy plus weekly cisplatin, to be reassessed prior to administering chemotherapy. \n\n2021-11: Received FFPE block 2H.\n\n2022-03: Blood B1 received. B1 and 2H DNA sent for WES\n---------------------------------------------------------------------------\nReferred to SFRCP for additional sequencing. Clare recommends path review/ discussion with pathologist, then lit review and expert opinion on prognosis/ relapse risk/ management. Unusual histo report and subtype. Following consent for SFRCP and WES on FFPE. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01511_BRCAResult_18Jan22_Redacted.pdf";
      portal_letter = "SFRC01476_ARCPortal_Oct2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2021 block received by Warren from Dorevitch 16/11/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01476";
  }
