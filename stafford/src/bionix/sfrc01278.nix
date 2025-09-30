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
      prefix = "grimmond/SFRC/2020-07-14/L2000420_S61";
      suffix = "_001";
      sha256-1 = "82e0ff77a050bdf89787ebd67edee89432c738678e3003b7095d1bba08005fe7";
      sha256-2 = "49299a2fac590fd0a03fa124a11efc59e9ee2e310981dc127b70df581a1b16d1";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "grimmond/SFRC/2020-07-14/L2000421_S58";
      suffix = "_001";
      sha256-1 = "fa8787ecdef4e4de0d028ebdd0df5af1778f4bd19314dbe3168b65d2c6289d98";
      sha256-2 = "10963d6d13679a66783a106b51ac6ed62caad61613a68d0872a60a7ac3fa0813";
    }
    {
      site = "S1";
      class = "rna";
      r1 = "M9/V4/SHA256E-s4181692021--7654967edd389ccead5640e8d9dd0a62d52a9aac953bf2851f6958d0ce128415.gz/SHA256E-s4181692021--7654967edd389ccead5640e8d9dd0a62d52a9aac953bf2851f6958d0ce128415.gz";
      r2 = "FX/k9/SHA256E-s4130190224--a6aef38f3d9e23bf2ce9ed5c847e53b2c7590fb3bc4acaf1ccc5f86909badbd0.gz/SHA256E-s4130190224--a6aef38f3d9e23bf2ce9ed5c847e53b2c7590fb3bc4acaf1ccc5f86909badbd0.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "K2/69/SHA256E-s88822938389--244d7ef7b218a174bbb216e18d4643780ca5d44b7cfe56f8b3ef47c3d8df6604.gz/SHA256E-s88822938389--244d7ef7b218a174bbb216e18d4643780ca5d44b7cfe56f8b3ef47c3d8df6604.gz";
      r2 = "qp/Zg/SHA256E-s94845647604--72a3f0d44555ee179b8088cbc73b0d625d005a8ef16c7640229191d0409eb4d3.gz/SHA256E-s94845647604--72a3f0d44555ee179b8088cbc73b0d625d005a8ef16c7640229191d0409eb4d3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "RC Meeting 05.08.2021\nDiscussed WGS for S2. Compared to S1 report, CIRCOS plot slightly different.\nNothing clinically relevant. \nDo not have the html, but probably no new drivers, just the exisiting TERT promoter mutation.\n\nClare's meeting 2021.07.01\nGayanie's extra review: no increased mitoses in the recurrent tumour. Nothing to do until WGS results back. \n\nMeeting with Clare 2021.06.03\nPlan: Do WGS on S2 (in case it has changed as this is a recurrence). \nAsk Gayanie if there is evidence of increased nuclear mitotic activity - has grade increased? \nRescue S1 into 2 mice \n\nRC Meeting notes 09.07.2020\nonly 26 years old, but could do well. Clinically, is post-op, watching her rising marker. CIRCOS plot - desert with some structural rearrangements  \nIn the genome, not much going on, but what recombinant event is driving the disease that can be treated, but then come back aggressively? \n\nMeeting notes 23.04.2020\nYoung patient still alive and may benefit from WGS - DNA to be extracted next week (Holly and Gen)\nHaving a review with Orla 28.4.20 to look at growth rates - may be discussed at MDM that day.\nPaid for by Marian Patten trust \n\nMeeting notes from 9.4.20:\nRedone diagnosis, this is an SCTAT (stage 1A), potentially send for WGS (Clare getting clinical update before a decision about this can be made)";
      d_case_summary = "Granulosa cell tumour, bloods and tissue from Trisha.\nLSO - 145mm sex cord stromal tumour with annular tubules (SCAT), with spread to fallopian tube and multiple foci of intravascular invasion";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "30F  Sex cord tumour w annular tubules (\"SCTAT\"), st IA  A: low grade stage IA tumour  No indication for chemo  PRL normalised / AMH falling nicely, still just above ULN";
      case_details = "Sex cord tumour with annular tubules (SCAT), Dx on Bx from LSO, D&C, Omental Bx on 14/02/2020\n\nFor MRI abdo/pelvi CT chest";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01278";
    disableShatterSeek = true;
  }
