with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M4/1q/SHA256E-s32588725425--ed1371357a9c57dfa833913e5f57da38dad52c07ece614854f3e4ca23a5a1aec.gz/SHA256E-s32588725425--ed1371357a9c57dfa833913e5f57da38dad52c07ece614854f3e4ca23a5a1aec.gz";
      r2 = "PK/M5/SHA256E-s35462517611--100116a27dc96a1be03a0b579a73143635cc73d6fa2917ff16b034cb061395ca.gz/SHA256E-s35462517611--100116a27dc96a1be03a0b579a73143635cc73d6fa2917ff16b034cb061395ca.gz";
    }
    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "ZG/4P/SHA256E-s82527130167--dba10b29a09f2d12265b4598716f77a4397d33ab890d4fd34b713db3fe07d325.gz/SHA256E-s82527130167--dba10b29a09f2d12265b4598716f77a4397d33ab890d4fd34b713db3fe07d325.gz";
      r2 = "qV/76/SHA256E-s89289574296--14cf9572a0fee262ec8fe8b1d9810112f4e523e9742996ca68f1f158b9a170e1.gz/SHA256E-s89289574296--14cf9572a0fee262ec8fe8b1d9810112f4e523e9742996ca68f1f158b9a170e1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 10.12.2020\nNF1 mutation is of interest - will have discussions to try and get her on to BGB282 trial\n\nMeeting notes 13.08.2020\nS3: Extract DNA and send for WGS\n\nMeeting notes: 2019.11.28\nAli's patient, waiting for another biopsy as not enough tumour in previous samples \n\n08.11.2019: not enough DNA extracted from OCT slides to go ahead for WGS \n\nMeeting notes 2019.08.22\nTake 10 OCT slides (from AOCS)  over to Kym for DNA extraction and WGS \n\nMeeting notes 2019.07.25\nS1 fresh biopsy: No tumour\nS2 OCT slides recalled from AOCS: 30-40 % tumour, low purity for WGS  \nCinician offered an other fresh biopsy. Clare to follow up.\n\nMeeting notes 07.06.2019\nWas for WES but no tumour, what's next?\nClare has emailed Damien with details ";
      date_of_death = "3/2023";
      d_case_summary = "58 yo woman with recurrent, gBRCA1 mutant, HGSC of F-Tube Primary. Off BGB 290 trial due to PD March 2019 (slow rising CA125 and new lesions on CT). Started on Carbo/Caelyx May 2019 (with GCSF support)";
      date_consented = "2019-05-03";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGSOC/ Fallopian tube";
      case_details = "Recurrent gBRCA1 mutant HDSOC of Fallopian Tube Stage FIGO IIIC, diagnosed 10/08/2015\n\nAdjuvant Carboplatin/paclitaxel x6 completed Jan 2016 (poor tolerance to chemotx)\nTamoxifen from May 2016-Sep 22 2017.\nBGB 290 commenced 23/10/2017\n\nWGS clinical notes \n58 yo woman with recurrent, gBRCA1 mutant, HGSC of F-Tube Primary FIGO IIIC. Off BGB 290 trial due to PD March 2019 (slow rising CA125 and new lesions on CT). Started on Carbo/Caelyx May 2019 (with GCSF support)\n\n\nProgressed on PARPi trial; confirmed germline BRCA mutation";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Please note that Briony has tried to get the path report for S1 and S2 and no one has done a proper path report for that biopsy.\n";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01166";
  }
