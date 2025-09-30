with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {gridss.assemble = def gridss.assemble {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G8/2v/SHA256E-s57058165069--0c8c777401b927681518b6d8b2548c67d8c651faa3844f623a4c55b82b96842d.gz/SHA256E-s57058165069--0c8c777401b927681518b6d8b2548c67d8c651faa3844f623a4c55b82b96842d.gz";
      r2 = "xP/pQ/SHA256E-s60843995573--d796119a61c47ae444981c907290101263ac0f358ccf2079665a548d42ddda36.gz/SHA256E-s60843995573--d796119a61c47ae444981c907290101263ac0f358ccf2079665a548d42ddda36.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Zx/zQ/SHA256E-s9886008035--aa2ac2c97da52311cfac000c5d7a75b865989e65bc4481315b8e5cf480c0b7b5.gz/SHA256E-s9886008035--aa2ac2c97da52311cfac000c5d7a75b865989e65bc4481315b8e5cf480c0b7b5.gz";
      r2 = "4F/pG/SHA256E-s10678615121--4d4fea6f34c5ae3fa96b28e2f5c63e7e899309f0f388e564cef8fa90ece4fa1c.gz/SHA256E-s10678615121--4d4fea6f34c5ae3fa96b28e2f5c63e7e899309f0f388e564cef8fa90ece4fa1c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "77/Zj/SHA256E-s49818122853--8f901a009f437e3d25486579fd240647a15e56dccc42910dbe9942ebb5f44c82.gz/SHA256E-s49818122853--8f901a009f437e3d25486579fd240647a15e56dccc42910dbe9942ebb5f44c82.gz";
      r2 = "xx/5v/SHA256E-s52362794858--388b6dc7b1a2c68515b2ae9aa449b3524d235ddf9c06d09418aa9a6fc2e391f6.gz/SHA256E-s52362794858--388b6dc7b1a2c68515b2ae9aa449b3524d235ddf9c06d09418aa9a6fc2e391f6.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "ZK/q1/SHA256E-s15720604175--95984a20f10d41e11d3fd5701111ad8c044bb6d2d29df9b19f0725595178ece6.gz/SHA256E-s15720604175--95984a20f10d41e11d3fd5701111ad8c044bb6d2d29df9b19f0725595178ece6.gz";
      r2 = "Fm/q6/SHA256E-s16617835773--ce6f8e3f51782efcbc79c561b888bfd3f9ac000861e8e54f3a239fa9177bef0d.gz/SHA256E-s16617835773--ce6f8e3f51782efcbc79c561b888bfd3f9ac000861e8e54f3a239fa9177bef0d.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "j9/jw/SHA256E-s10815455625--cdabd343a7d154cafe00f68dcd4a01af9f7b445fea7ab94fff4c2e9cd21f8f79.gz/SHA256E-s10815455625--cdabd343a7d154cafe00f68dcd4a01af9f7b445fea7ab94fff4c2e9cd21f8f79.gz";
      r2 = "W3/9m/SHA256E-s10951028751--dcd6664bc817ab2dfc27b6882aa15e90b925c801da26f3c2406c9a538d9d8134.gz/SHA256E-s10951028751--dcd6664bc817ab2dfc27b6882aa15e90b925c801da26f3c2406c9a538d9d8134.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "Clare's Meeting 26.08.2022\nThere is nothing to extract from Block 1.14--no viable tumour. Clare & Mandy to email Dr to let them know that there is nothing we can do. Patient is in complete remission (no fresh tissue). Potential super responder. \n\n30Jun22: From clinician: \"in CR and not due for imaging for some time so FFPE would be best\".\n\nEmails 29.06.2022\nNo findings by TSO500 or WGS because of low tumour purity. Going forward, Briony to ask treating doctor for a fresh biopsy for WGS. If no, then look into recalling FFPE blocks with good tumour.\n\nRC Meeting 23.06.2022\nTSO500 report back, no abnormalities detected.\nHave WGS data from Sean's lab and could see a RASA3 mutation.\nLayla revisited data. \"I pulled out the WGTS data from storage and had a closer look at the genome coordinate where the RASA3 variant was called. It is likely a false positive due to an alignment issue that was also seen in the germline. Joep and Sean have both had a look and agreed the variant should be dismissed.\"\n\nMeeting 5.05.2022 with Clare\nDoctor asking about WGS results. It had failed QC, nothing else done. Now, send for TSO500 (anything in MAPK pathway).\n\nMeeting with Clare 18.11.2021\nFresh tissue S1: DNA and RNA for WGS from OCT";
      d_case_summary = "low grade serous ovarian cancer";
      date_consented = "2021-10-05";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "2021-08:\tHysterectomy. Tissue from RS Omentum fixed and blocked (Block 1.14)\nIHC: \n-AE1/AE3 Highlights small numbers of tumour cells \n associated with the extensive psammomatous \n calcification \n-Oestrogen receptor protein (ER) - 2+ intensity in \n 80% of tumour cells \t\t\n-Progesterone receptor protein (PR) - no significant \n staining \n\n2021-10: Laparotomy and debulking surgery. Fresh tissue S1 received and processed. Blood B1 received.\n\n2022-03: Completed Carbo/Taxol x6\n2022-05: Commenced maintenance Anastrozole (still on Jan24)\n\n2021-11: S1 DNA and RNA sent for WGS: Tumour burden low and insufficient for somatic analysis. No clinically significant germline variants detected.\n\n2022-06: S1 DNA (new extraction from WGS) and RNA (same as WGS) sent for TSO500. No abnormalities were detected, including in KRAS, BRAF, and NRAS. TMB <10.\n\n2022-08: Sections from FFPE Block 1.14 (Hysterectomy 2021-08) received.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "28/07/2022: 2021 sample requested from Austin pathology by Devindee.\n06/08/2022: 2021 sample slides received from Austin Pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01469";
  }
