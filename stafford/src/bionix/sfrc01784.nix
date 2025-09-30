with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "qM/48/SHA256E-s2646576240--f9426c7be3f0ff2967ca6536fcc2a8208209d967e6352077b6a70c5a3503991a.gz/SHA256E-s2646576240--f9426c7be3f0ff2967ca6536fcc2a8208209d967e6352077b6a70c5a3503991a.gz";
      r2 = "4P/gQ/SHA256E-s2634116218--b6fc922d43d4f1c818d01b0d2a0e1250804d6908b4a00498d1baea436bf44a9b.gz/SHA256E-s2634116218--b6fc922d43d4f1c818d01b0d2a0e1250804d6908b4a00498d1baea436bf44a9b.gz";
    }
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "1g/xP/SHA256E-s2666852388--4c43444e559b6d22ed1ee7cb9648deea69e9396569cb5563ad4b4b7f393303c8.gz/SHA256E-s2666852388--4c43444e559b6d22ed1ee7cb9648deea69e9396569cb5563ad4b4b7f393303c8.gz";
      r2 = "VP/3w/SHA256E-s2669017622--f16fcd8a0ea7271c13ae624a1943f1bb78e909d6f7420c550dfcfb010f759e23.gz/SHA256E-s2669017622--f16fcd8a0ea7271c13ae624a1943f1bb78e909d6f7420c550dfcfb010f759e23.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q4/2v/SHA256E-s5016015551--cf377b84904cb503c2c2795274e3871d886cf6fcbe811bbfa5c909b48cbbac64.gz/SHA256E-s5016015551--cf377b84904cb503c2c2795274e3871d886cf6fcbe811bbfa5c909b48cbbac64.gz";
      r2 = "X7/wf/SHA256E-s5053476334--699a2839cc4733b4bbd006b1dffca17231f40637132354437839a395a38f04c0.gz/SHA256E-s5053476334--699a2839cc4733b4bbd006b1dffca17231f40637132354437839a395a38f04c0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "v6/6w/SHA256E-s5223174999--01be33b1644c1aff6294eedb97af0af3e847459c777e8dc0d64a4207f6b7fb21.gz/SHA256E-s5223174999--01be33b1644c1aff6294eedb97af0af3e847459c777e8dc0d64a4207f6b7fb21.gz";
      r2 = "mp/9g/SHA256E-s5301840190--af371ba7cfe71b52fdb893a768c5659be64ca1f5f935e1310e95e5d043ae062a.gz/SHA256E-s5301840190--af371ba7cfe71b52fdb893a768c5659be64ca1f5f935e1310e95e5d043ae062a.gz";
    }
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "pq/7P/SHA256E-s5198128513--43f5c5dd49cb83bca31b58a21590fc77c6d3108c6381edbeea69f4b913dc01a2.gz/SHA256E-s5198128513--43f5c5dd49cb83bca31b58a21590fc77c6d3108c6381edbeea69f4b913dc01a2.gz";
      r2 = "2j/m0/SHA256E-s5215143152--7e2ecdeb9556a3ce2cc5bd810a936299f005e3377dd4142d8cdcc85f8ec81cae.gz/SHA256E-s5215143152--7e2ecdeb9556a3ce2cc5bd810a936299f005e3377dd4142d8cdcc85f8ec81cae.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Pk/qZ/SHA256E-s4713588056--125ad9d970d0a583658919bcc126b37e5f96dbbf49d58e867ee63358480eef92.gz/SHA256E-s4713588056--125ad9d970d0a583658919bcc126b37e5f96dbbf49d58e867ee63358480eef92.gz";
      r2 = "J0/5f/SHA256E-s4795395800--053486fe8a55bbd72c410c572de033c3e6d5cbab299c57f8c6a31228b0158a4d.gz/SHA256E-s4795395800--053486fe8a55bbd72c410c572de033c3e6d5cbab299c57f8c6a31228b0158a4d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      sophia_report = "SFRC01784_BRCA_HRDReport_28Sep2023_Redacted.pdf";
      meeting_discussions_follow_up = "RC Meeting 15.02.2024:\nReport back to Alison Davis regarding the HOXB13 - she can talk to her FCC about this (Sydney). Note in our report that we found the variant in the germline. \n\nSample meeting 11.08.2023\nPlan on FFPE block A1(70-80%): Clinician is very insistent, this sample is for urgent BRCA \nHow would you like to go about this? Organise BRCA over at PeterMac? \nPLEASE FIRST SEND FFPE TO FOX LAB FOR BRCA PANEL SEQUENCING (ASK WHAT THEY NEED) \nAsk Andrew Fellowes about the current BRCA form, if it is correct. If payment is correct. Case is from interstate (update - Ratana has asked Victoria Beshay, who is ATTN on previous forms) \n\nTHEN PROCESS FOR TWIST WES (NEED HRD STATUS), \nWait for WES twist to be established \n\n\nEmails 24.08.2023\nHave the proper BRCA testing forms now, Ratana/Briony to complete forms and submit slides to Peter Mac. Noted that 10um sections were put on charged slides and 5um sections on uncharged slides.";
      blood_recall_history = "01Aug23 - Text to patient ";
      urgency_details = "For urgent BRCA testing please";
      d_case_summary = "newly diagnosed stage 4 uLMS- for BRCA please";
      tso500_external = "SFRC01784_MoST_30Nov2023_Redacted.pdf";
      date_consented = "2023-07-06";
      tumour_type = "uLMS";
      tumour_details = "Stage IV uLMS";
      case_details = "64 years old female  \n\n2023-04: \tSurgery (FFPE block A1 received) \nIHC positive: caldesmon, desmin, SMA (focally) \nER, PR negative, Ki67 40-50% \nConsidering Adriamycin and trabectedin combination \n2023-09: SOPHIA report\n                 HRD status, genomic instability status and BRCA variant status all negative.\nRAD51B Uncharacterised large rearrangement*, tierIID\n2023-11: MoST report: TP53 (NM_000546.6) VAF 77%, GID4 amplification (8 copies)\nRARA amplification (10 copies)\nHOXB 13 G84E (NM_006361.6)VAF 13% (might be germline origin , refer to familial cancer clinic)\nRAD51B loss (0copies)\nRB1 loss (0copies)\n\nPotential of 4 clinical trials all tier 4\nRAD51B, TP53: ATR inhibitor, PARP inhibitor\nRAD51B: Olaparib\nRAD51B: PARP inhibitor\nTP53: ATR inhibitor\n";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "13Jul23: Apr23 sample requested from ACT pathology by Monica\n20Jul23: Apr23 sample received from ACT pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    name = "SFRC01784";
    capture = TwistV2HR;
  }
