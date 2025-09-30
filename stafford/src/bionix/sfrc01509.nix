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
      r1 = "01/w0/SHA256E-s50286794476--7c055770eb09b2289d2298eaaa1bf265fd7fff249322854016efce36be9d4147.gz/SHA256E-s50286794476--7c055770eb09b2289d2298eaaa1bf265fd7fff249322854016efce36be9d4147.gz";
      r2 = "3x/wV/SHA256E-s53833123669--8d1a30812c341d09dbecedffa128974818d0210d9b9ab89bfa475b15c96bef91.gz/SHA256E-s53833123669--8d1a30812c341d09dbecedffa128974818d0210d9b9ab89bfa475b15c96bef91.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2K/5j/SHA256E-s94076048263--dbf62f520ef4fa4c073dff6fa46a0a9d0a52876da74139bf125ede2c1336620c.gz/SHA256E-s94076048263--dbf62f520ef4fa4c073dff6fa46a0a9d0a52876da74139bf125ede2c1336620c.gz";
      r2 = "w4/2Q/SHA256E-s99738339491--b8bdd2aeb2d89976a2fec419377317737bf0e5512272958582d4f85cd82c9033.gz/SHA256E-s99738339491--b8bdd2aeb2d89976a2fec419377317737bf0e5512272958582d4f85cd82c9033.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "jz/G7/SHA256E-s12058469591--11dbec90591f47028aaade18cc6bf43e5fc0ae6d9997dd50f9303152a713774b.gz/SHA256E-s12058469591--11dbec90591f47028aaade18cc6bf43e5fc0ae6d9997dd50f9303152a713774b.gz";
      r2 = "74/97/SHA256E-s13305214954--e379b13a2a7c88c118837ab58ba0632bd6b6e6af172abeded89c1d9bb588846f.gz/SHA256E-s13305214954--e379b13a2a7c88c118837ab58ba0632bd6b6e6af172abeded89c1d9bb588846f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "RC Meeting 14.04.2022\nDiscussed WGS report.\nNothing actionable. All very normal for GCT. Patient is likely to be well given tumour stage.  \n\nMeeting with Clare 10.02.2022\n70-80% tumour purity, have blood.  \nPlan: Need letters/info from Trisha for clinical notes. Send snap frozen for WGS now. ";
      d_case_summary = "Granulosa Cell Tumour.";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "GCT";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01509";
  }
