with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qz/GG/SHA256E-s3121518335--39a8ecfbfa47e45489cfdbaa5ae086c935e7e4a1c58250a9511ca2ea7991e861.gz/SHA256E-s3121518335--39a8ecfbfa47e45489cfdbaa5ae086c935e7e4a1c58250a9511ca2ea7991e861.gz";
      r2 = "3P/f9/SHA256E-s3329591231--0e22dbe726012700e1d6609d71856eee8e152363e0909a28456e0d2e18b481d4.gz/SHA256E-s3329591231--0e22dbe726012700e1d6609d71856eee8e152363e0909a28456e0d2e18b481d4.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "jp/45/SHA256E-s4994536008--040508d7aa38cb175841f831ae12f689217ba90aa54750d038729c4d0b7cda0e.gz/SHA256E-s4994536008--040508d7aa38cb175841f831ae12f689217ba90aa54750d038729c4d0b7cda0e.gz";
      r2 = "0M/Z7/SHA256E-s5333884633--2cdeb230c1447f5f4db60db91ebd7067e6d6bf89c1da4e4099914f2753c77715.gz/SHA256E-s5333884633--2cdeb230c1447f5f4db60db91ebd7067e6d6bf89c1da4e4099914f2753c77715.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 01.2022\nplan: Have we been able to find the BROCA mutation with WES analysis? \n(Jocelyn email 13.01.2022) Justin improved the accuracy of the capture region definitions and the BROCA mutation BRCA1 c.4096+3A>C which was not in first report is now in the reports. \nGermline \nBRCA1 c.2475delC  het in B1 (AF 0.49), homozygous in S1_T1 (0.985) \nSomatic \nBRCA1 c.4096+3A>C , HF = 0.27 raw, with purity = 0.97, so good agreement with 31% - 33% \n\n19.11.2021\nNot enough DNA from 1A to do WES or TSO 500\n\nClare's meeting 18.11.2021\nCyclin E review on block 1A: Is not 3+, so is not high. Will not need to clinically report. Inadequate sample. \n\nClare's meeting notes 2021.10.22\nBlock 1A: Make DNA, do WES if enough DNA otherwise do TSO500. Organise CCNE staining and methylation assay. Kas and Cas to look at this case  \n\nClare's meeting notes 2021.04.22\nSFRC01049_2C. Plan: Kas - d11q case with a secondary mutation. Microdissect this TINY area, for DNA for Kas ";
      date_of_death = "10/2017";
      d_case_summary = "HGSOC relapsed post-PARPi gBRCA1 mu, breast ca\nDied 28/10/2017";
      date_consented = "2017-07-18";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC 2015,   Breast 1999";
      case_details = "Deceased 10/2017";
      pre_analysis_mutations = "BRCA1 germline mutation carrier\nPost PARPi\n\nBROCA results from Swisher lab on fresh tissue and PDX:\nS1: BRCA1 c.2475delC (100%); BRCA1 c.4096+3A>C (31%); TP53 c.428_429insCA (100%)   \nT1: BRCA1 c.2475delC (100%); BRCA1 c.4096+3A>C (33%); TP53 c.428_429insCA (100%)   \n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2015 block requested by Warren 1/2/21\n2015 block received by Warren 12/4/21\n2015 block 1A requested13/9/21, received by Warren 11/10/21";
      mp_subgroup_sfrcp4_new_id = "2 Primary Breast Ovary only";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01049";
    capture = CREv2;
    predictNeoantigens = true;
  }
