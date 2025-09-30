with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B4";
      class = "normals";
      r1 = "QQ/f5/SHA256E-s38489028315--f2d098a48cbfee3089cc9c325df52c1097a94a27c517c5d4c1b0ec2e05c8a26d.gz/SHA256E-s38489028315--f2d098a48cbfee3089cc9c325df52c1097a94a27c517c5d4c1b0ec2e05c8a26d.gz";
      r2 = "1j/37/SHA256E-s40246313345--8b52d619a0eaf8a0ef03036a25e8f849426e71f1c6841938ca8b72d032b6e072.gz/SHA256E-s40246313345--8b52d619a0eaf8a0ef03036a25e8f849426e71f1c6841938ca8b72d032b6e072.gz";
    }
    {
      site = "S1_T3";
      class = "tumours";
      r1 = "F6/j4/SHA256E-s64776018989--96cefaaca5bcebb2c918686a28a1e52543056fe6f390146049e64a011d07ef83.gz/SHA256E-s64776018989--96cefaaca5bcebb2c918686a28a1e52543056fe6f390146049e64a011d07ef83.gz";
      r2 = "Xw/GJ/SHA256E-s68578763028--061e96ee2d2350f2b3506c1a0425cb59351485544508d838bfc7f30ebdf860d9.gz/SHA256E-s68578763028--061e96ee2d2350f2b3506c1a0425cb59351485544508d838bfc7f30ebdf860d9.gz";
      pdx = true;
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "NOMINATOR 01013";
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC Meeting 06.10.2022\nDiscussed new BROCA results (compare to all other results).\nRPA2/BRCA1 rearrangement in the WGS data (not report).\n\nRC Meeting notes 01.10.2020\nWGS of PDX discussed (Analysis instrument).\nNo patient report needed or an FCC (patient deceased, and no germline results to report). Justin and Jocelyn to summarise the top results. Correct nomenclature of genes and mutations is needed. \n\nMeeting notes 8.5.20:\nKas to chase up methylation analysis of PDX with Alex Dobrovic\n\nMeeting notes 2020.03.05\nBroca results discussed. Will be sent for WGS when T3 harvested. Treatment with PARPi, CX5461. Patient is deceased. Potential monoallelelic loss of BRCA1 and RPA1 (still waiting for Matt to generate primers to test mutation). Not clinically reportable so no report needs to be issued.  \n\nlab meeting 07.02.2020\nBrac1 and RPA2 translocation suspected from BROCA results. Do a PCR on S1 DNA to check the translocation. Organise WGS on T3 PDX. \n\nMeeting notes 07.06.2019\nRun P53 assay on S1, S2 and 1B. Check nominator report for specific TP53 mutation\n\nMeeting notes 16.05.2019\nAlready have 4 bloods for her (2 this year) - get another one next Friday 24th - need to do ctDNA analysis of HER2 amplification in all blood samples (Holly to contact Sarah-Jane) ";
      date_of_death = "11/2019";
      date_consented = "2018-03-29";
      tumour_type = "HGSEC";
      tumour_details = "HGS endo, extensive local spread and pulmonary metastases";
      case_details = "First line chemotherapy with carboplatin / paclitaxel commenced 29/3/18, mixed response\n2nd line therapy: weekly-paclitaxel (DR by 25%) / trastuzumab / pertuzumab on 13/7/18\n3rd line therapy: compassionate three weekly TDM1 7/3/19\nBiopsy - HER2  amplified on ISH but protein negative on IHC, consistent  with HER2 methylation/silencing\n4th line therapy: Carboplatin Gemcitabine cycle 3 - PD, no response to carbo/gemcitabine\nRequired Bowel bypass in August   2019 - successful, has developed a good appetite since\n Deceased 11/2019\n \n \n";
      pre_analysis_mutations = "TP53, ERBB2";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      histology_summary = "Vaginal/cervix biopsy (30-Jan-18):\n- Strongly positive: p53 (diffuse) and p16\n- Positive: CEA\n- Negative: Vimentin, ER, PR\n------------------------------------\nCervical biopsy (13-Feb-18)\n- Positive: p53 (diffusely and strongly); p16 (variable) and CEA\n- Negative: Vimentin, ER, PR\n---------------------------------------\nInguinal LN biopsy (1-Jan-19)\n----------------------------------------\nSupraclavicular LN biopsy (15-May-19)\n- Strong positive: CK7\n- Positive: p53\n- Negative: CK20, PAX8, WT1, ER, TTF1, CDX2\n- HER2: weakly stains the cytoplasm; HER2 locus amplified by FISH\n";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01069";
  }
