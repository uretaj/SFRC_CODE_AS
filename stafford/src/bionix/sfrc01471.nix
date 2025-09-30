with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A6";
      class = "tumours";
      pdx = false;
      r1 = "JM/JX/SHA256E-s30821198480--621c4ecb9589cdc1beefe7932b90af111078dacf7933b9c737ce56310ebe404e.gz/SHA256E-s30821198480--621c4ecb9589cdc1beefe7932b90af111078dacf7933b9c737ce56310ebe404e.gz";
      r2 = "JZ/V1/SHA256E-s31791911835--6c9bc8868078bdc8e6f19e795b7f76eef36f2ee87326efd44798760cad52a184.gz/SHA256E-s31791911835--6c9bc8868078bdc8e6f19e795b7f76eef36f2ee87326efd44798760cad52a184.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9z/Gp/SHA256E-s4090852997--a0e0eb56196697d23368adce6d68d5f49ca6f339b5bd2a9468ed2fbcffed1a14.gz/SHA256E-s4090852997--a0e0eb56196697d23368adce6d68d5f49ca6f339b5bd2a9468ed2fbcffed1a14.gz";
      r2 = "4K/84/SHA256E-s4288292370--b610c1e26668ced6e75353575b1b65c7d26b705b97f7559620d40d7f4e9c9076.gz/SHA256E-s4288292370--b610c1e26668ced6e75353575b1b65c7d26b705b97f7559620d40d7f4e9c9076.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "WES Meeting 21.10.2022\nNothing targetable, except immunotherapies - need to ask Damien and Matt, does the many deletions mean susceptibility to immunotherapy? Is there a particular DNA repair defect that leads to multiple deletions? \n\nGet ARC Portal letter.\n\nMeeting with Clare 16.12.2021\nWait for Damien answer from Ratana's email: would the fusion panel be of interest? The one for the EHE cases? I can extract RNA if you think it will be worthwhile. We plan to get DNA for WES.\nIf RNA need, do dual extraction\n\nFor WES and RNAseq";
      d_case_summary = "metastatic peritoneal desmoplastic small round blue cell tumour";
      date_consented = "2021-10-08";
      tumour_type = "CUP";
      tumour_details = "metastatic peritoneal desmoplastic small round blue cell tumour";
      case_details = "27 years old male \n\n2020-11: Dx high grade small blue cell tumour following laparascopic appendicectomy. Biopsy of liver taken during procedure. Appendix fixed and blocked (Block A6)  \n\nKi67: 80-90% \n\nP53: WT \n\nIHC positive: AE1/AE3, CAM5.2, CK5/6, EMA, P40, P63, CD56, Synaptophysin, \tneurofilament (weak), NSE (weak), vimentin (weak), CDX2. \n\nIHC negative: Chromogrannin, PAX8, TTF1, desmin, SMA, CD45, S100, Cmyc \n\n\n2020-12:\t1x cisplatin+etoposide \n\n3x cisplatin+etoposide+Atezolizumab \n\n2021-03:\t4x Atezolizumab \n\n2021-06:\tlung washing. No malignancy \n \n2021-08:\tliver biopsy \n\nIHC positive: CKAE1/3, CD56 \n\nIHC negative: chromogranin, synaptophysin, CK7, CK5/6, CK8/18, CK20, P40, NUT1, arginase, Hep par1, glypican \n\nINI is retained \n\noccasional cell express: CDx2 \n\nKi67=90% \n\n2021-02: MoST panel: RB1 rearrangement exon 21 (Low sample quality and purity limit the interpretation of data) \n\n2021-11: FFPE Block A6 (Appendix) received\n\n2022-03: Blood B1 received\n\n2022-08: A6 and B1 DNA sent for WES\n ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01471_PortalLetter_22Sep22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2020 block received from NSWHP St George by Warren 16/11/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01471";
  }
