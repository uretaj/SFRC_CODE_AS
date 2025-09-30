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
      r1 = "Xq/qw/SHA256E-s44924215778--ca00cb6df99c8a500ffdaceb6ede0c7828d002559c2b3e12d0e9706981279d0f.gz/SHA256E-s44924215778--ca00cb6df99c8a500ffdaceb6ede0c7828d002559c2b3e12d0e9706981279d0f.gz";
      r2 = "14/8M/SHA256E-s46285578223--4915f75c10d7690a5c7adb7da658337067ec3fc6b6573073ae3f77f253627b33.gz/SHA256E-s46285578223--4915f75c10d7690a5c7adb7da658337067ec3fc6b6573073ae3f77f253627b33.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "M5/VV/SHA256E-s43554875953--6a3dba6a0964c2fee74b821152619af87f613f980649f349fe4f48e76b5aa9d6.gz/SHA256E-s43554875953--6a3dba6a0964c2fee74b821152619af87f613f980649f349fe4f48e76b5aa9d6.gz";
      r2 = "xM/w1/SHA256E-s45108547106--9d08b9a7160d4f34501dd1336bc075ef76c9993f40fa26ac1e500cc15df1e267.gz/SHA256E-s45108547106--9d08b9a7160d4f34501dd1336bc075ef76c9993f40fa26ac1e500cc15df1e267.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "wq/pW/SHA256E-s58550120878--2609d53f1e1e03244212cdd6edd94b9415bf7b930fc08ad52a3e3c27f5493ecc.gz/SHA256E-s58550120878--2609d53f1e1e03244212cdd6edd94b9415bf7b930fc08ad52a3e3c27f5493ecc.gz";
      r2 = "qV/xm/SHA256E-s60243613925--b746896124f0ab08c213814e665c1128fe3e38e098fd6a2052793c5d4fa03d3f.gz/SHA256E-s60243613925--b746896124f0ab08c213814e665c1128fe3e38e098fd6a2052793c5d4fa03d3f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "gj/fG/SHA256E-s6161505377--40e73142a37a4b7f741f44b3479800ed64d245f34c20a38375b732983573b017.gz/SHA256E-s6161505377--40e73142a37a4b7f741f44b3479800ed64d245f34c20a38375b732983573b017.gz";
      r2 = "W3/Xg/SHA256E-s6129155608--2a0572c19f218bdaac1f180f114e05d68cdfb57640d6ab67d4524a1d279e3a81.gz/SHA256E-s6129155608--2a0572c19f218bdaac1f180f114e05d68cdfb57640d6ab67d4524a1d279e3a81.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "RC Meeting 21.07.2022\nDiscussed WGS report (Grimmond and SFRC).\nNo variants detected on Grimmond report (desert). But in SFRC report, BRD7 of note with the hemizygous ARID1A deletion.\nBRD7 0.48AF - part of the PBAF complex which is a nucleosome remodelling complex (tumour suppressor). ARID1A is showing hemizygous loss (copy number of 1) and that forms a complex to form BAF (PBAF, BAF, ncBAF make up the BAF core) https://onlinelibrary.wiley.com/doi/full/10.1002/ijc.33727 \n\nMeeting with Clare 20.12.2021\nS1; Do WGS on SF tissue ";
      d_case_summary = "LGSOC, young patient.";
      date_consented = "2021-12-15";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01496";
  }
