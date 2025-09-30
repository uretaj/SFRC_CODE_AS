with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "QK/wx/SHA256E-s2445407732--e335435eff06b393501514346d55f6bc61e0aecd1a348a150ccb7c457edb9d29.gz/SHA256E-s2445407732--e335435eff06b393501514346d55f6bc61e0aecd1a348a150ccb7c457edb9d29.gz";
      r2 = "Pm/PQ/SHA256E-s2545632100--e352d1017dbf05ac65027c87e2e8a438ca47be90ec0461992b37468d128be287.gz/SHA256E-s2545632100--e352d1017dbf05ac65027c87e2e8a438ca47be90ec0461992b37468d128be287.gz";
    }
    {
      site = "S1_T2";
      class = "tumours";
      pdx = true;
      r1 = "20/5Q/SHA256E-s4883531620--67f54f2ffa182068f18af6da8d9c0d687f6121d49f49dc1389d264cc6d2ab38c.gz/SHA256E-s4883531620--67f54f2ffa182068f18af6da8d9c0d687f6121d49f49dc1389d264cc6d2ab38c.gz";
      r2 = "jQ/pp/SHA256E-s5131573742--06c8b8853c73c14c757d06b75f1f9558ce939e95a3f1e8a9370248e319cdd8f4.gz/SHA256E-s5131573742--06c8b8853c73c14c757d06b75f1f9558ce939e95a3f1e8a9370248e319cdd8f4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "AOCS 134056";
      meeting_discussions_follow_up = "RC meeting 01.2022\nPlan: Have we been able to find the BROCA mutation on the PDX with WES analysis? \n\nThe answer is yes, we can see evidence for that deletion in the alignment file. Because it is a deletion that has one end in an intron not included in the capture region, we can't usually detect an event like this with WES. (Jocelyn email 13.01.2022) \n\n\nMeeting 11.2021\nExtract DNA on block 3A for D11q project reversion mutation testing. Kas to organise\n\nMeeting notes 28.09.2020\nDNA from block 1C (2012, high yield) and 3A (2016, very low yield) and from PDX tumour (S1T2). Send 1C and PDX for BROCA. The 3A sample could be for Matt as a validation sample for his new platform (as we will have all other data) \n\nDiscussion on 29.4.20\nPDX has grown! Get WGS of PDX done as was never able to get this if primary tumour - Cass to check if MCRI still accepting samples\n\nDiscussion in lab area 12.02.2020\nClare is checking with David Bowtell if we can send the snap frozen tube S3 to their lab directly for them to extract RNA, check if tumour in sample and if yes screen for fusions.\n\nMeeting notes 2019.11.21\nAmandine was not successful with extracting DNA from S3, region of dissection is too small.  Clare will tell patient that no tumours in the cores\n\nMeeting notes 2019.09.26\nTry and dissect tumour cells from S3, extract DNA and check purity. We will discuss that case again afterwards.";
      myriad_report = "SFRC01217_MyriadResult_28Jan22_Redacted.pdf";
      date_of_death = "05/2020";
      d_case_summary = "HGSOC BRCA1 mutation carrier\nPost Beigene PARPi Progressive Disease. Died May 2020.";
      date_consented = "2019-08-27";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "HGSOC BRCA1 mutation, post Beigene PARPi Progressive Disease\n\n47 years old female, BRAC1 carrier \n\n2012:\t\tDiagnosed with stage III disease and had surgery (Block C received) \nIHC Positive: WT1, CK7 and P53 \nER strongly positive in 90% and PR weakly positive in 30% \nIHC Negative: CK20 \n\n\n2012 Oct:\tCarbo/Taxol completed  \n\n2014:\t\tTamoxifen \n\n2016:\t\tSurgery/biopsy (block 3A received) \nIHC Positive: WT1, P53, Ber-EP4 and CK7.  \nER strongly positive in 90% and PR weakly positive in 10% \n\n2018 May:\tstopped BGB290 trial \n\n2018 Nov:\tCarbo/taxol \n\n2019 May:\tNZV930/PDR001 trial with anti-adenosine/PD1 inhibitor \n\n2019 June: \tCaelyx \n\n2019 Aug:\tFresh tissue (0%) (biopsy) S1-2 and 3,  Blood B1 received \n\nUntil 2020 Apr:\tCarbo/Gemcitabine. Maintenance Olaparib ";
      pre_analysis_mutations = "Broca results from Swisher lab \n1C: have mutations, but some failed. \ngermline BRCA1, somatic BRCA1, PTEN, TP53 \n\nS1_T2:  \ngermline BRCA1, NM_007294, c.895_896del p.V299fs \nsomatic BRCA1, NM_007294, c.670+281_1101del\t \nsomatic PTEN, NM_000314, c.166delT p.F56fs \nsomatic TP53, NM_000546, c.963delA p.K321fs ";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA1) score 62";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2012 and 2016 HGSOC tissue recalled on 22/06/2020 via email from RWH by Josh for Ratana\n\n2012 HGSOC tissue Block 1C received on 10/09/2020\n\n2016 HGSOC tissue Block 3A received on 10/09/2020\n\n2016 block requested from RWH by Warren 13/9/21, received 11/10/21";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01217";
    filterFQZeros = true;
  }
