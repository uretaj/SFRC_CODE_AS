with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "X5/Jz/SHA256E-s24016388925--07f4f5ed0e0eaaf8e5d538a832810a27264c6427a00a87d7dd357e027507d348.gz/SHA256E-s24016388925--07f4f5ed0e0eaaf8e5d538a832810a27264c6427a00a87d7dd357e027507d348.gz";
      r2 = "m8/V9/SHA256E-s24682289584--1bb7d4fd5a65b2460a203fc5ff51ba994e08eb8e8fa934af6469231c0ffd53ff.gz/SHA256E-s24682289584--1bb7d4fd5a65b2460a203fc5ff51ba994e08eb8e8fa934af6469231c0ffd53ff.gz";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "9z/kF/SHA256E-s4820766028--2fe5d63a1cb8c6f3e08692ac9da39501bee515219366301d9aab9b6e81bc26f7.gz/SHA256E-s4820766028--2fe5d63a1cb8c6f3e08692ac9da39501bee515219366301d9aab9b6e81bc26f7.gz";
      r2 = "vZ/qK/SHA256E-s4872209143--cf82b993cf38607246a7e62d2b46055d5eb0794fc214aad4b1d266e0912da2fa.gz/SHA256E-s4872209143--cf82b993cf38607246a7e62d2b46055d5eb0794fc214aad4b1d266e0912da2fa.gz";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "pQ/5p/SHA256E-s3224907340--4695833ca6f412f913b44abc0c7ffdb27bc30989e20a768268e297f5bf2e47c0.gz/SHA256E-s3224907340--4695833ca6f412f913b44abc0c7ffdb27bc30989e20a768268e297f5bf2e47c0.gz";
      r2 = "5J/q3/SHA256E-s3558936923--b2cf0e4896adee8295f6deddd83c333bb5aac6464e65762afac8c2521a603221.gz/SHA256E-s3558936923--b2cf0e4896adee8295f6deddd83c333bb5aac6464e65762afac8c2521a603221.gz";
    }
    {
      site = "B1";
      class = "normals";
      r1 = "KF/46/SHA256E-s3004375571--1e441173d2663588573d78a59dfa75a30ce4ff1d9f29445a2a32f9a48f5e6e60.gz/SHA256E-s3004375571--1e441173d2663588573d78a59dfa75a30ce4ff1d9f29445a2a32f9a48f5e6e60.gz";
      r2 = "JM/PP/SHA256E-s3103604424--22031ce3f27ba8a802ef8593e28012daa635262796340c53ce8adfdcb5884f26.gz/SHA256E-s3103604424--22031ce3f27ba8a802ef8593e28012daa635262796340c53ce8adfdcb5884f26.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "03.12.2020\nBlocks 1.10 and A1 reviewed. 1.10 was from a follow up surgery only ~2.5months after A1 was collected. 1.10 might related to A1 or Gayanie originally suggested it could be benign deep seated Brunns' Nest tumour  \nPlan: Kristy will process A1 for WES. Block 1.10 may be used for imaging. \n- no need for Ratana and Clare to discuss tomorrow. \n\n16/01/2020 Clare and Amandine Once WES complete if susceptibility gene identified, add Rare Molecular Subtype project below as currently Breast Cancer and Multiple Primary Project only.\n";
      d_case_summary = "Multiple primaries - breast ca x2 (1995, 2013), bladder ca (2010);  cervical adenocarcinoma in situ x2 on cone biopsy";
      date_consented = "2017-11-30";
      tumour_type = "Breast cancer";
      tumour_details = "Multiple primaries - breast x2, bladder ca; 2x cervical adenocarcinoma in situ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2010 Block High Grade Carcinoma recalled for Kirsty from Eastern Pathology via fax on 22072020 by Josh. Re-requetsed via email on 30/09/2020.\n\n2010 August block urothelial carcinoma tissue requested a/p Kristy and Damein (email) from Eastenr Health via fax and email, on 22/10/2020 by Josh\n2010 August block urothelial carcinoma tissue received by Warren on 22/11/2020";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01064";
    capture = CREv2;
  }
