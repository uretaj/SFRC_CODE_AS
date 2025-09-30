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
      pdx = false;
      r1 = "4w/29/SHA256E-s87700914515--ec8233a0e0f5ddc76337f576e663900e89e2147c84f738de9f88118a96ae51a2.gz/SHA256E-s87700914515--ec8233a0e0f5ddc76337f576e663900e89e2147c84f738de9f88118a96ae51a2.gz";
      r2 = "6v/58/SHA256E-s95021620737--91572049e7a1f2b30db5b27a082b48bb027f101e401b02c74ff95fe2868567e9.gz/SHA256E-s95021620737--91572049e7a1f2b30db5b27a082b48bb027f101e401b02c74ff95fe2868567e9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "5p/QF/SHA256E-s39152846727--33cd80cd1d3c36bbb8c595fca56a8a8ff34d7bea2bcd0a65cd4e0039fd4ee90b.gz/SHA256E-s39152846727--33cd80cd1d3c36bbb8c595fca56a8a8ff34d7bea2bcd0a65cd4e0039fd4ee90b.gz";
      r2 = "fJ/ZJ/SHA256E-s41898248182--b66a68bd8fdffd853cae2767cd68bab4c0cd29a8166451a208fe1d2a4575af30.gz/SHA256E-s41898248182--b66a68bd8fdffd853cae2767cd68bab4c0cd29a8166451a208fe1d2a4575af30.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "k7/Px/SHA256E-s5542762698--a1629d915f0f551abf1e41af7c214c99ea19fead857ffabd1e18fc7b29203bec.gz/SHA256E-s5542762698--a1629d915f0f551abf1e41af7c214c99ea19fead857ffabd1e18fc7b29203bec.gz";
      r2 = "Qw/xP/SHA256E-s5554962507--d9fdc4c1dd39b77f09c78bcd37b28456dd493e34e7d6355c4460d27c8b1d41e2.gz/SHA256E-s5554962507--d9fdc4c1dd39b77f09c78bcd37b28456dd493e34e7d6355c4460d27c8b1d41e2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "Clare's meeting 2021.07.29\nSFRC01165_S3 Digest mince for cell culture. Gen and Clare to discuss further\n\nClare's meeting notes 2021.07.01\nPlan for S3: review OCT block for tumour. If still no tumour than block SF piece for sectioning and review. If nothing in block try on snap frozen. To do cell culture on mince (if tumour present).\n\nMeeting notes 06.02.2020\n WGS report discussion: Gen do try 2D and 3D  \nFind out if patient alive to see if need to generate report back. \n\nMeeting notes 03.10.2019\nBriony to check if patient still alive to evaluate if WGS would be beneficial.\n\nMeeting notes 22.08.2019\nDecision:  70% tumour purity in S1 and no tumour in S2 (Gayanie review on fresh samples) \nAmandine to summarise all granulosa cell tumour cases and material \nClare will send these details to Peter Fuller/Simon Chu and ask about WGS - we have 2 cases with fresh tissue (out of total of 5 cases - 2 we don't even have blood for) \n\nMeeting notes 23.05.2016\nLook up litterature for epigenetic, genomic and wait for teleconf with Peter Fuller, talk to Simon Chu";
      d_case_summary = "Granulosa cell tumour diagnosed 2006;";
      date_consented = "2019-04-29";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa Cell Tumour of the Ovary";
      case_details = "Recurrent ovarian granulosa cell tumour, diagnosed 2006.\n\nSurgery followed by adjuvant chemotherapy with BEP after diagnosis.\nRecurrence in 2019, treated with 3 months of endocrine therapy, and secondary cytoreductive surgery completed in May 2019";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Fresh tissue received 1-May-2019 from surgery at RW; L pelvic side wall and sigmoid mesentery root\n\nPelvic Tumor- RWH Pathology\nID: 17975299HISTG\nSample date: 18Jun17\nRequested: 25Jun19 (Briony)";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01165";
  }
