with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        octopus.callSomatic = with lib;
          {targets, ...} @ attrs:
            octopus.callSomatic (attrs
              // optionalAttrs (any (x:
                x == "chrY")
              targets) {mem = 180;});
      })
  ];
}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "2M/M4/SHA256E-s53187529015--025e0708cab6b77c8bd5938b125ad692ee1897d46570b803fbbbf1a0017e3a00.gz/SHA256E-s53187529015--025e0708cab6b77c8bd5938b125ad692ee1897d46570b803fbbbf1a0017e3a00.gz";
      r2 = "vF/7k/SHA256E-s54646844475--402bd0a07e2c3d445a1653bb3bc5f3ba01a5c3e04e357710f6c9d86889ebbe3d.gz/SHA256E-s54646844475--402bd0a07e2c3d445a1653bb3bc5f3ba01a5c3e04e357710f6c9d86889ebbe3d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Kp/1W/SHA256E-s117961330783--c5e5375553db94f5871139c23022f2c8ce3d0b43a725aff5378fc945eae54736.gz/SHA256E-s117961330783--c5e5375553db94f5871139c23022f2c8ce3d0b43a725aff5378fc945eae54736.gz";
      r2 = "q0/jp/SHA256E-s122756634266--9205c26560cb20751a5f923bd7fe0c53c36d99ff16113a9fd6773ee5c6960d44.gz/SHA256E-s122756634266--9205c26560cb20751a5f923bd7fe0c53c36d99ff16113a9fd6773ee5c6960d44.gz";
    }
    {
      site = "18T";
      class = "tumours";
      pdx = false;
      r1 = "gM/P1/SHA256E-s102430657805--8d688fd7f8cad0f725dd9227279df0e0fb3da28d742be3236bb0f711ff0bc775.gz/SHA256E-s102430657805--8d688fd7f8cad0f725dd9227279df0e0fb3da28d742be3236bb0f711ff0bc775.gz";
      r2 = "4k/JV/SHA256E-s105740167184--29e0880f4d250b15565e6d992487adcf957da6f173adefb5d67658be20e514d7.gz/SHA256E-s105740167184--29e0880f4d250b15565e6d992487adcf957da6f173adefb5d67658be20e514d7.gz";
    }
    {
      site = "18T";
      class = "rna";
      pdx = false;
      r1 = "z4/P4/SHA256E-s4287993379--5d91c215804cc10cd39882afcc381b9e9b5b01446fb417d355b56003f4825e18.gz/SHA256E-s4287993379--5d91c215804cc10cd39882afcc381b9e9b5b01446fb417d355b56003f4825e18.gz";
      r2 = "Jq/QP/SHA256E-s4367586236--aba7241a7622e818344268995e14bc2845ae20fee1a1dbe974344aac5caaf9c2.gz/SHA256E-s4367586236--aba7241a7622e818344268995e14bc2845ae20fee1a1dbe974344aac5caaf9c2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "Citation: RAF1 rearrangements are common in pancreatic acinar cell carcinomas. \nPrall OWJ, Nastevski V, Xu H, McEvoy CRE, Vissers JHA, Byrne DJ, Takano E, Yerneni S, Ellis S, Green T, Mitchell CA, Murray WK, Scott CL, Grimmond SM, Hofmann O, Papenfuss A, Kee D, Fellowes A, Brown IS, Miller G, Kumarasinghe MP, Perren A, Nahm CB, Mittal A, Samra J, Ahadi M, Fox SB, Chou A, Gill AJ. Mod Pathol. 2020 May 1. doi: 10.1038/s41379-020-0545-9. Online ahead of print. PMID: 32358589\n\n\nPlease do not use SFRC01112_B1 as there is mix up with SFRC01105_B2\nAll derivatives to be discarded ";
      date_of_death = "10/2019";
      d_case_summary = "mixed adeno and neuroendocrine carcinoma of the pancreas, metastatic; CK7 and CDX2 positive, CD56 negative; 12 cycles FOLFIRINOX with good result; maintenance temozolomide/capecitabine;";
      date_consented = "2018-11-16";
      tumour_type = "Pancreatic cancer";
      tumour_details = "Metastatic mixed neuroendocrine adenocarcinoma of pancreas";
      case_details = "Mixed adenocarcinoma and neuroendocrine carcinoma of the pancreas.\n\nReceived 12 cycles of FOLFIRINOX with complete metabolic response in 2018,  with Temozolomide/Capecitabine.\n\nSecond line Gemcitabine and Abraxane given in 2019 upon progression, followed by Onivyde (Irinotecan) with good clinical response. For WGS";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01112";
    disableGridss = true;
  }
