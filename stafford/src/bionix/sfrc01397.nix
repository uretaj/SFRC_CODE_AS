with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 60;};})];
}; let
  samples = [
    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "M6/P6/SHA256E-s23594887135--e59cfb60111559ca0c3707fada315cd5c193359938bb69b2faa1d6d1af09f5b1.gz/SHA256E-s23594887135--e59cfb60111559ca0c3707fada315cd5c193359938bb69b2faa1d6d1af09f5b1.gz";
      r2 = "67/F8/SHA256E-s23770530972--970dc20c1cbb78e76d4997b232b0300d932f0630f9021869f77c8e173a033a36.gz/SHA256E-s23770530972--970dc20c1cbb78e76d4997b232b0300d932f0630f9021869f77c8e173a033a36.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "90/Pz/SHA256E-s5603913348--1db1ad18ae6587fd8bc37276f56c7e910b50f9d91223ef4b5c67a147ccd76fc1.gz/SHA256E-s5603913348--1db1ad18ae6587fd8bc37276f56c7e910b50f9d91223ef4b5c67a147ccd76fc1.gz";
      r2 = "1x/zk/SHA256E-s5756040092--3296a2e71cb29fbfd6294beed743c5291cd01bca894af5621b9f8b4bcd94f7b0.gz/SHA256E-s5756040092--3296a2e71cb29fbfd6294beed743c5291cd01bca894af5621b9f8b4bcd94f7b0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting with Clare 2023.05.18\nPlan: looks like all the DNA from 1Q used for WES, was 1T recalled to extract more DNA for methylation analysis? Yes extract \n\nMeeting with Clare 22.10.2021\nblock 1Q: organise WES";
      d_case_summary = "carcinosarcoma of the uterus FIGO 1A. Enrolled for research only.\nRare cancer and 3 cancers (carcinosarcoma uterus, NSCLC, SCC anus)";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma  NSCLC  SCC anus";
      case_details = "66 years old female  \n\n2011 May\tAnal SCC (chemoRT - 5FU and Mitomycin)  \n\n2017 Aug\tNSCLC (RUL resection)  \n\n2021 Mar\tCarcinosarcoma of the uterus Hyst, BSO and omental biopsy  \nCarboplatin and Paclitaxel  \nFFPE block 1Q received , FFPE block 1T received  \n\n2021 Jun\tBlood B1 received \n\n2021 Aug \tRadiotherapy \n\n2021-Nov \tWES:  \nTMB: 23, Purity: 76%, Ploidy: 1.85, LOH: 0.28, Genome doubling: False \nGermline mutations: None reportable  \n Somatic mutations:  \nTP53, stop gained, 61% \n(ENST00000269305.8, c.637C>T, p.Arg213*)  \n*Clinvar: Pathogenic \nTP53, missense variant, 61% \n(ENST00000269305.8, c.638G>A, p.Arg213Gln) \n*Clinvar: pathogenic \nRB1, splice donor variant & intron variant, 46% \n(ENST00000267163.5\tc.1215+1G>A) \n*Clinvar: pathogenic \nFLT4, stop gained, 34% \n(ENST00000261937.11, c.2863G>T, p.Glu955*) \nPIK3CA , missense variant, 24% \n(ENST00000263967.4, c.1357G>A, p.Glu453Lys) \n*Clinvar: pathogenic \nMutational signatures: \nSig6: 29%, 470.0 fit \nSig3: 19%. 309.6 fit (borderline) \n\n Amplification: none detected, Deletion: none detected   \n Eligible for FLT4 mutations trial - sunitinib?  \n LOH, signature 3 all borderline, would probably get called by myriad to double check by methylation analysis - please let Kas know to add to her list \n\n ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Block received from RPAH by Warren 11/10/21\n17Mar23: Mar21 sample requested from SSWP by Monica\n29Mar23: Mar21 sample received from SSWP by Monica";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01397";
    predictNeoantigens = true;
  }
