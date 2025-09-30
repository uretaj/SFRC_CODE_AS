with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "x0/zP/SHA256E-s48429722580--cb6a008549bd58d916749648cc23620d181f109312683a1d1667f3a61dcf5152.gz/SHA256E-s48429722580--cb6a008549bd58d916749648cc23620d181f109312683a1d1667f3a61dcf5152.gz";
      r2 = "30/J3/SHA256E-s52683688060--ed36af0ec3f9a954f27a4e2bf4490827c979dd5431fca180244fbb510dd9659f.gz/SHA256E-s52683688060--ed36af0ec3f9a954f27a4e2bf4490827c979dd5431fca180244fbb510dd9659f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "0X/3F/SHA256E-s102163303562--4c0593bdf4b2bf18d5317a5aca6c39f80e30c2bf6fb49d04683d66d22ac7ed3f.gz/SHA256E-s102163303562--4c0593bdf4b2bf18d5317a5aca6c39f80e30c2bf6fb49d04683d66d22ac7ed3f.gz";
      r2 = "Pv/jF/SHA256E-s109337058147--d2eedd7c2c65fb504473e5ecc29bfa300b1877216e919aa69698a1d14ed3fa83.gz/SHA256E-s109337058147--d2eedd7c2c65fb504473e5ecc29bfa300b1877216e919aa69698a1d14ed3fa83.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "PQ/k9/SHA256E-s4812303595--b6f7a9c597ceb02021673b258df3b2c827e2e9c3029d5909fd264a4561cdd1d5.gz/SHA256E-s4812303595--b6f7a9c597ceb02021673b258df3b2c827e2e9c3029d5909fd264a4561cdd1d5.gz";
      r2 = "K8/Wq/SHA256E-s4764482107--7b5113fdbae28976a1dba1d848d594021cc1996ac4e222ebacb9d2cb5c3eef85.gz/SHA256E-s4764482107--7b5113fdbae28976a1dba1d848d594021cc1996ac4e222ebacb9d2cb5c3eef85.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC Meeting 04.08.2022\nDiscussed SFRC WGS report.\nAll mutations in Grimmond were found in SFRC, same AF.\nCan request pathology review - is this endometrial, rather than cervix?\n\nRC Meeting 26.05.2022\nDiscussed WGS (Grimmond only) report.\nMost mutations likely due to MSI phenotype - best option is immunotherapy \n\nClare's meeting 10.02.2022\nmicrodissect and WGS\ndMMR case - once we get blood can go ahead with WGS.  \nTrisha does not have tissue  \nNo Letters from Orla because patient is not private, most recent one from Epic 21/12/21 in EPIC Redcap ";
      d_case_summary = "Mucin producing adenoca c/w FGT origin (probable cervix)\nPD-L1 IHC:  positive (75%) / MMR IHC: loss of MSH2 / MSH6\nPresented w (L) CN XII palsy\nSOD: brain (posterior fossa, resected), pelvic mass involving bladder / ant sigmoid, lung, liver\n(R) hydronephrosis\nBreast lesions Bx'd -> benign\nPath: adenoca with mucin production, cw FGT primary\nPos: CK7 / EMA / PAX8 / CD10 / Ca125 (patchy)\nNeg: WT1 / P16 / CK20 / GATA3 / ER / PR / TTF-1 / CEA / CDX2 / CAIX";
      date_consented = "2021-12-21";
      tumour_type = "Gynae cancer other";
      tumour_details = "Mucin producing adenoca c/wFGT origin (probably cervix)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01504";
  }
