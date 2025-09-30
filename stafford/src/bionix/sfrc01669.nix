with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PJ/43/SHA256E-s38884849838--0592b2ed3d8a7b69d574f262dc1e5bdef41f4a44d3bc4e946d7d6cb966f4abd8.gz/SHA256E-s38884849838--0592b2ed3d8a7b69d574f262dc1e5bdef41f4a44d3bc4e946d7d6cb966f4abd8.gz";
      r2 = "4M/ff/SHA256E-s41939344485--96dc23e6351b9ac6ffed0c72619c72da25351b64c04e98aceb054996e7f793c6.gz/SHA256E-s41939344485--96dc23e6351b9ac6ffed0c72619c72da25351b64c04e98aceb054996e7f793c6.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "46/KM/SHA256E-s103961964219--6eea51a1528151c9e7c5841686878cfb9149fcfce5da265a28017ba0c3033819.gz/SHA256E-s103961964219--6eea51a1528151c9e7c5841686878cfb9149fcfce5da265a28017ba0c3033819.gz";
      r2 = "43/jP/SHA256E-s113993759901--17abb83252c33ee5194b2a8b93e9bc13210ac2f426d55bd8fcc0a1451f659775.gz/SHA256E-s113993759901--17abb83252c33ee5194b2a8b93e9bc13210ac2f426d55bd8fcc0a1451f659775.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nThe known BRCA1 is an exon 11 variant - D11q isoform could be driving resistance.  \nNo BRCA1 splice site mutations are present, but cancer could still have high D11q expression - unfortunately can't check without high purity sample with RNA (don't have this available).\n\nClare, Ratana, Rae 18.05.2023\nBROCA for Fresh tissue S1\n\nClare's Meeting 17.11.2022\nDo WGS on S1 OCT slides. Send DNA for methylation also.";
      blood_recall_history = "30Nov22 - DNA message left\n05Dec22 - Patient called back and left message\n09Dec22- DNA message left\n15Feb23 - DNA message left\n17Feb23 - Will send out blood pack on  21st";
      d_case_summary = "HGSOC dx 2016 treated with surgery and chemo. First recurrence as 11mm peritoneal nodule. Surgery at Freemasons on 20/10/22.";
      date_consented = "2022-10-20";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "2022-10: Tissue S1 received.";
      brca_report = "SFRC01669_BRCAPanel_09Dec2022_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01669";
  }
