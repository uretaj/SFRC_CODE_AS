with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vv/xz/SHA256E-s62912517661--5888682afcc7354fd07e489d0887cd25e7213d5208773cc31c2862b7f5277c92.gz/SHA256E-s62912517661--5888682afcc7354fd07e489d0887cd25e7213d5208773cc31c2862b7f5277c92.gz";
      r2 = "G9/zW/SHA256E-s67645059015--c9a58e210842565b8f009cd87c5ecd53f985e5d1a1e707560002a1e58e7304e2.gz/SHA256E-s67645059015--c9a58e210842565b8f009cd87c5ecd53f985e5d1a1e707560002a1e58e7304e2.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "zg/m4/SHA256E-s92690543180--2b40cc617bb12863cc6f537aa2a519b17931a055c880b78005694a2a1718c819.gz/SHA256E-s92690543180--2b40cc617bb12863cc6f537aa2a519b17931a055c880b78005694a2a1718c819.gz";
      r2 = "Qg/Qq/SHA256E-s97867406338--0e10aae08b15e44f000c3596810ba3a76c40072b2e081c12f9673737a35d1ce2.gz/SHA256E-s97867406338--0e10aae08b15e44f000c3596810ba3a76c40072b2e081c12f9673737a35d1ce2.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "0k/F8/SHA256E-s5929566603--bdc69ccb4ecb0611c5689ce7ac6aac23d910859ee8d5762c0c554f3fb3ca6606.gz/SHA256E-s5929566603--bdc69ccb4ecb0611c5689ce7ac6aac23d910859ee8d5762c0c554f3fb3ca6606.gz";
      r2 = "wQ/Z7/SHA256E-s5994282968--cbb2ed9bc201b19659358d97f2750f33784874b72171dcf98581cb87a1460f45.gz/SHA256E-s5994282968--cbb2ed9bc201b19659358d97f2750f33784874b72171dcf98581cb87a1460f45.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0006";
      meeting_discussions_follow_up = "RC Meeting 08.12.2022\nDiscussed WGS report with SFRC data. Also have WES data on baseline block.\nWES TMB 275 - probably because Omega kit was used.\nThe different NF1 variants found in WES and WGS are probably the same event on different transcripts.\nMYC amp WGS (7,2) and WES (11,5) are similar.\nThe TP53 in germline table is somatic (no germline AF).\nSome fusions of note, 3 of them (due to overlapping regions) - listed in DNA_Analysis. Not reportable, but out of interest.\n";
      d_case_summary = "HGSOC, SOLACE2 patient.";
      date_consented = "2022-09-11";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "In SOLACE2, for WGS. PDX has come up";
      brca_report = "SOLACE2_0006 BRCA report.pdf";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01652";
  }
