with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2z/zw/SHA256E-s83658945809--56ec0d63881f97a1afcf79436cbd6025544bba7001d9348c94e2173944abf613.gz/SHA256E-s83658945809--56ec0d63881f97a1afcf79436cbd6025544bba7001d9348c94e2173944abf613.gz";
      r2 = "zZ/P2/SHA256E-s89759652283--811776b2682f29431de307a0534e3e2e2d8776ba30709c08b868e759ea46d3e5.gz/SHA256E-s89759652283--811776b2682f29431de307a0534e3e2e2d8776ba30709c08b868e759ea46d3e5.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "j2/Jg/SHA256E-s43200182231--68f5b5146a628cbfde00aefd52052a330339afe87f2ee3a262e01124a3366282.gz/SHA256E-s43200182231--68f5b5146a628cbfde00aefd52052a330339afe87f2ee3a262e01124a3366282.gz";
      r2 = "56/9W/SHA256E-s46273643766--0fe3cb76198566f9e9f34ab84437910777c6a4e3e278e924b6cc0ac4eb2b3572.gz/SHA256E-s46273643766--0fe3cb76198566f9e9f34ab84437910777c6a4e3e278e924b6cc0ac4eb2b3572.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "KZ/JQ/SHA256E-s4989688066--6b59cef257102c36a59497fc892085f26a63711b50a26dfee6d576ba102393bd.gz/SHA256E-s4989688066--6b59cef257102c36a59497fc892085f26a63711b50a26dfee6d576ba102393bd.gz";
      r2 = "g2/pk/SHA256E-s5009808331--f7edc515926b783a23fe93fbdf24a870f48d7072ae1a34cdda6d2923b5773701.gz/SHA256E-s5009808331--f7edc515926b783a23fe93fbdf24a870f48d7072ae1a34cdda6d2923b5773701.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "Meeting notes 06.02.2020\nWGS report discussion: Gen to try 2D and 3D \n\nMeeting notes 2019.10.24\nPlan: do WGS \n\n2019.01.11\nEmailed Kristy to request tissue form upload into Redcap ";
      d_case_summary = "Sertoli-Leydig cell tumour of ovary";
      date_consented = "2019-09-12";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Sertoli-Leydig cell tumour of ovary";
      case_details = "Sertoli Leydig cell tumour of ovary diagnosed from TLHBSO on 11/09/2019. ER neg/PR mod positive.\n\nNo role of adjuvant Tx after surgery\n\nWGS clinical notes\nSex cord stromal tumour. Some doubt about diagnosis. Could this be confirmed by molecular testing eg Dicer vs Foxl2 mutation? Hardly any cases of WGS in the literature";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01224";
  }
