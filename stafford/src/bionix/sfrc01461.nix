with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.7";
      class = "tumours";
      pdx = false;
      r1 = "VQ/v3/SHA256E-s12966156136--d7ab89370dc1b6ef110fd14d883273774f402e8c2b064a765d6a8d9702de1f3e.gz/SHA256E-s12966156136--d7ab89370dc1b6ef110fd14d883273774f402e8c2b064a765d6a8d9702de1f3e.gz";
      r2 = "GV/4k/SHA256E-s12919854378--f784979bdb3ed79629f60f7fc81f23f9db2174efa74e726305aedbe9ccc02f5d.gz/SHA256E-s12919854378--f784979bdb3ed79629f60f7fc81f23f9db2174efa74e726305aedbe9ccc02f5d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zf/4V/SHA256E-s5335349566--614efdc4d8fb4c803e3539c9ef46f24e9d6b7beea0f7673a52f1c0c528aeb4f4.gz/SHA256E-s5335349566--614efdc4d8fb4c803e3539c9ef46f24e9d6b7beea0f7673a52f1c0c528aeb4f4.gz";
      r2 = "jx/pF/SHA256E-s5800455320--3688d05e171d418c95cc95bd20c7ba2b009d3627f4dab72eb20eac3336fb010b.gz/SHA256E-s5800455320--3688d05e171d418c95cc95bd20c7ba2b009d3627f4dab72eb20eac3336fb010b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "20.04.2023\nDiscussed WES and BROCA results:\n-Lots of TP53 mutations in the WES\n-Germline TP53 variants weird-potential somatic variants??  \n-TP53 in BROCA not seen in WES \n-BROCA and WES on same samples \n-Justin to look further into \n\nBROCA meeting 18.02.2022\nSend block 1.7 for BROCA \n\nClare's meeting 01.12.2021\nHer2 IHC repeated with positive control confirmed this case is Her2 negative. Briony to report\n\nClare's meeting 18.11.2021\nHER2 staining came back completely negative, difficult to say if negative or failed. Redo with a positive control.\n\nClare's meeting 22.10.2021\nBlock 1.7: organise Her2 IHC, get Briony to organise blood and then do WES. ";
      d_case_summary = "HGSEC. \nSlow PD following PORTEC3 rx 2018. Asymptomatic inguinal nodes. Biopsiable disease but pt does have multiple co morbidity and raised BMI, would be technically difficult. Referral to SDFRCP for HER2 testing.";
      date_consented = "2021-09-13";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "66 years old \n\nStage 3 HGSEC \n\n2018 Sept: \thysterectomy and BSO. Tumour fixed and blocked (Block 1.7)\n\nIHC Positive: PMS2, MSH6, WT1, P53.  \nER +1 in 40% of cells \nPR +2 in 20% cells \nP16 diffuse nuclear and cytoplasmic staining  \n\n2021-10: FFPE sections from Block 1.7 received\n\n2021-11: Blood B1 received\n\n2021-12: HER2 negative (conducted with positive control as first test on 2021-11 also came back negative). DNA sent for WES\n---------------------------------------------------------------------------\nAsymptomatic inguinal nodes. Biopsiable disease but pt does have multiple co morbidity and raised BMI, would be technically difficult. Referral to SFRCP for HER2 testing. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "To recall for HER2\nblock received by Warren from Austin, 4/10/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01461";
  }
