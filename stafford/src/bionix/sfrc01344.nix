with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "P4/Vq/SHA256E-s40772978317--0dd17a03dee567d5a75ec41691ab2604ef0311570e87268defab64dc2d64c381.gz/SHA256E-s40772978317--0dd17a03dee567d5a75ec41691ab2604ef0311570e87268defab64dc2d64c381.gz";
      r2 = "4z/M8/SHA256E-s43038689330--3ac37f05e9084462fb0abe16af7333e8061cb1f6df972e00e1c0a1c3dbd0304c.gz/SHA256E-s43038689330--3ac37f05e9084462fb0abe16af7333e8061cb1f6df972e00e1c0a1c3dbd0304c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "kg/v4/SHA256E-s79827445681--474bb4681cb895da3f12fa06ae2e10491c71998d2c8c645ad4d938e91a99825b.gz/SHA256E-s79827445681--474bb4681cb895da3f12fa06ae2e10491c71998d2c8c645ad4d938e91a99825b.gz";
      r2 = "kJ/z2/SHA256E-s86374849411--cd1639a61bad026b56d02b02cd573753223f1fc88dc8557754d3a6daeacf7aeb.gz/SHA256E-s86374849411--cd1639a61bad026b56d02b02cd573753223f1fc88dc8557754d3a6daeacf7aeb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "Clare's Meeting 22.12.2022\nDiscussed Cyclin E and B7H4 IHCs. Cyclin E H-score is 75 - low. B7H4 IHC 80% positivity. Clare to let Gwo know these IHC scores, suggesting AZD8205 trial.\n\nMeeting with Clare, Ratana, Briony, Rae 14.12.2022\nCass to check B7H4 IHC on FFPE Block A01 and if positive, screen for AZD8205.\nTissue is B7H4 positive; Gayanie to double check.\n\nMeeting with Clare 16.12.2021\nClare to review with Briony and see how patient is doing, and see if cyclin E IHC result are clinically relevant.\n\nMeeting with Clare 04.11.2021\nOrganise BROCA on fresh tissue S1\n\nRC meeting 15.10.2021\nWarren to recall a block and do cyclin E IHC. Recalling a FFPE from the biopsy we received.\n\nBROCA meeting with Clare 15.10.2021\nOrganise BROCA on S1 \n\nRC Meeting 13.05.2021\nWent back over WGS findings. Gwo provided patient update.\nIs she entitled to BEIGENE PARPi (Pamiparib)? Or AZD-5305 \nThe gBRCA1 is D11q region \nCompassionate access to BEIGENE for the ABCB1. Clare to follow up this, and the MET amplification. \nMET amplification - lung cancer, crizotinib \nDamien to create final report \n\n\n15.03.2021\nMade new OCT blocks to review and make RNA for Sean's lab to do transcriptome analysis.\nWhen we have both WGS and RNASeq, we can then line these cases up for Proteomics with Roger Reddell - he would prefer a lot of cases to a few. We need 40um (eg 4 x 10 um) - so have a think about which cases we could put forward for that!\n\nRC Meeting 18.02.2021\nTo make RNA and send to Sean's lab for RNAseq to compare with large cancer dataset.\nWGS report discussed. RNAseq to check amplification - suggest efflux blocking PARPi?\n\nMeeting notes 03.12.2020\nReviewed S1. Have blood and gDNA \nPlan: WGS! microdissect ";
      date_of_death = "01/2023";
      d_case_summary = " 45 female with progressive HGSOC on PARPi with gBRCA1 mutation. Also consented for PRECISE. For biopsy of lymph node on 17 Nov 2020 at Monash Health. Extra cores for PDX and WGS. WGS results received 29 Jan 2021.\nCorrespondence from Gwo 4/05/2021- pt is doing well on 1st line chemotherapy - just received 6th cycle of carboplatin and caelyx - but not complete response. \nHistopath report dated 15/01/20191st is the interval debulking surgery  and the report dated 17/11/20 is the histology report on the supraclavicular LN biopsy at progression on  post 1 year of olaparib";
      date_consented = "2020-11-10";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "45F gBRCA1 mut carrier HGSOC  \n\n2018-09:\tDx - large volume ascites \nCompleted 3 cycles of Neoadj chemotherapy (carbo + taxol)  \n\n2019-01:\tInterval debulking surgery \nIHC positive: p53, WT1 \n\n2019-04:\tCompleted adj chemotherapy (Carbo + taxol)  \n\n2019-05:\tCommenced olaparib  \n\n2020-09:\tRecurrence  \n\n2020-11:\tBiopsy of supraclavicular LN - for PRECISE and SFRC. Failed QC for PRECISE. Tissue fixed and blocked (Block A01)\n\nBlood B1 and fresh tissue S1 (80%) received.\nIHC positive: ER, p53, CK7, PAX8, WT1\nIHC negative: CK20 \n\n2021-11: Cyclin E IHC on Block A01: moderate to strong (+3/+2) positivity in approximately 30% nuclei.\n\n2020-12:\tFurther progression and symptomatic - commenced on 1st line carbo + caelyx \nCycle 1 on 10/11/20, Cycle 2 on 7/1/21, Cycle 3 on 4/2/21, Cycle 4 on 4/3/21, Cycle 5 on 1/4/21, Cycle 6 on 29/4/21 \n\n2020-12: S1 and B1 DNA sent for WGS:\n-gBRCA1. \n-BRCA1 has undergone copy number neutral loss of heterozygosity in the tumour. Tumour displays features of BRCA deficiency, including a dominant BRCA mutational signature.\n-TP53 - Mutation of uncertain clinical significance and copy number neutral loss of heterozygosity \n-MSH2 rearrangement. The tumour retains a wildtype copy of MSH2 and has no evidence of microsatellite instability nor of a dominant mismatch repair signature. \n-Copy number gains of MYC, ABCB1 and MET were close but did not meet our threshold for amplification. In addition, these copy number gains were certainly not focal. MYC CN 10, MET CN 11, ABCB1 CN 9.\n-Sig 3 52%\n-CHORD 82% HRD, HRDetect 0.97 HRD\n\nPatient doing well but not on complete response. \n\n2022-12: B7H4 IHC on Block A01. Cyclin E H-score confirmation.\n---------------------------------------------------------------------------Application has been submitted by Gwo for the PRECISE trial (Pamiparib) based on WGS results.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2020 slides received by Warren 16/11/21 from Monash";
      patient_germline_mutations = "BRCA1";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01344";
  }
