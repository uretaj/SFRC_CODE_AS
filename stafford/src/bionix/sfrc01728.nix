with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j3/JP/SHA256E-s40950999556--ebf7f7c1b38466d0200adff63a3cbf9b5c32fc906b4ceeed79d749763f5c4d89.gz/SHA256E-s40950999556--ebf7f7c1b38466d0200adff63a3cbf9b5c32fc906b4ceeed79d749763f5c4d89.gz";
      r2 = "XZ/6X/SHA256E-s43888239568--015ec741456e9d905cf2c4612eb8a5535b91fe205a4f981bf5e6091807b85fa9.gz/SHA256E-s43888239568--015ec741456e9d905cf2c4612eb8a5535b91fe205a4f981bf5e6091807b85fa9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Zw/89/SHA256E-s93433631319--745f1ac39c3e64b2521459e68a012de495629e6428d88cbdd95459bb26ac5658.gz/SHA256E-s93433631319--745f1ac39c3e64b2521459e68a012de495629e6428d88cbdd95459bb26ac5658.gz";
      r2 = "1M/GG/SHA256E-s100545285899--3033981a87e5ab15014c83af92e021171d1e6f8bdbb9d48884690a6663359a0c.gz/SHA256E-s100545285899--3033981a87e5ab15014c83af92e021171d1e6f8bdbb9d48884690a6663359a0c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nOne other PMP case with WGS - SFRC01286. Also had a KRAS.\nGermline POLD1 is a VUS (not pathogenic/listed as a driver) .\n\nSample meeting with Clare 2023-05-18\nPlan: Micro dissect S1 OCT for TSO500? Yes. If failed do liquid TSO, What is the tumour % threshold  for TSO 500? Minimum 20%, 40ng DNA \nExtract DNA, see if this qualifies for the liquid TSO list. \n\nClare's Meeting 23.03.2023\n*Kylie has passed on this case, not looking at appendiceal cases. \n-Mucinous carcinoma of the appendix, in gynae ward. \n-Section everything (OCT S1 - awaiting review), try to get enough DNA, at least for TSO500. \n\nText from Clare 01.03.2023\nMucinous adenocarcinoma, unsure if ovarian or appendiceal. Process extra FFPE, SF and mince in case is ovarian to give to Kylie Gorringe. ";
      d_case_summary = "Grade 2 mucinous carcinoma peritonei, High grade mucinous neoplasm of appendix";
      date_consented = "2023-04-24";
      tumour_type = "Other rare";
      tumour_details = "mucinous adenocarcinoma, low grade, appendiceal";
      case_details = "41 year old female:  \n\nMucinous low grade carcinoma, Grade 1 pseudomyxoma peritoneii, High Grade Mucinous Neoplasm (HAMN) \n\n2023-03: Laparotomy BSO, appendicectomy, omental biopsy, fresh surgery tissue S1 received  \n\n2023-04: Blood B1 received  \n";
      patient_information_complete = "Incomplete";
      other_tumour_type = "mucinous adenocarcinoma, low grade, appendiceal";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "41 year old female: Mucinous low grade carcinoma, Grade 1 pseudomyxoma peritoneii, High Grade Mucinous Neoplasm (HAMN) \n\n2023-03: Laparotomy BSO, appendicectomy, omental biopsy, fresh surgery tissue S1 received  \n\n2023-04: Blood B1 received  ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01728";
  }
