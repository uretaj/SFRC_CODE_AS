with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
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
      prefix = "grimmond/SFRC/2020-07-14/L2000283_S11";
      suffix = "_001";
      sha256-1 = "0e7992ade7bd526b58a194486743033d7e99c8d58579b66a33b7b48ccdc34f29";
      sha256-2 = "03ba8b284c558724f3ab6752a7d540a6adf1bda2e6fcf594a88ba1869a142d72";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "grimmond/SFRC/2020-07-14/L2000284_S12";
      suffix = "_001";
      sha256-1 = "90430e5bb12992700e2615726bfb36d9f27d08fa81d085f14870abd5c025ad54";
      sha256-2 = "11f48137c4cce223d1f7408688e3370849ee027592e516730e1a2b50d0e83ee5";
    }
    {
      site = "S1";
      class = "rna";
      r1 = "vk/JZ/SHA256E-s3209790794--16bf4b51495bb0fe6b3324e968b34078f81de72b8101e14182e38ce58df66206.gz/SHA256E-s3209790794--16bf4b51495bb0fe6b3324e968b34078f81de72b8101e14182e38ce58df66206.gz";
      r2 = "Wf/4m/SHA256E-s3216245529--2cfa608bf5e8bb9b5984e1ee0870a1f2946dcc9d7756846d9a46a8d50322cfe6.gz/SHA256E-s3216245529--2cfa608bf5e8bb9b5984e1ee0870a1f2946dcc9d7756846d9a46a8d50322cfe6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "RC meeting notes 09.07.2020\nCIRCOS plot - deserts of structural variants? Would need other assays to confirm.  \nGen to collate and summarise with other cases for discussion with Peter Fuller.  \nDrug screening on our models to develop a bioinformatic model. \n\nMeeting notes from 9.4.20:\nSend to Sean's lab for WGS\n\n20.02.2020 - Clare following up on blood for this patient.\n\nMeeting notes 2019.12.05\nAmandine to ask Briony to organise blood to be able to send sample for WGS \n\nWhatsApp exchange 2019.11.15\nFor WGS and PDX. Send some to Simon Chu for culture.";
      date_consented = "2019-11-15";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa Cell Tumour of the Ovary";
      case_details = "65 year old woman with GCT diagnosed in 1993, with recurrence several times managed with surgery and radiotherapy, now progressing on femara hormonal therapy. Needs treatment guidance. Survived > 25 years";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01249";
  }
