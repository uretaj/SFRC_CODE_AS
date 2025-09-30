with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "94/ZM/SHA256E-s48262876335--0837e2fa1aa2d4a8a0958e1383d2a62fa5a15d6ad142e4da8d09e258e1510815.gz/SHA256E-s48262876335--0837e2fa1aa2d4a8a0958e1383d2a62fa5a15d6ad142e4da8d09e258e1510815.gz";
      r2 = "4J/Vq/SHA256E-s52417675222--01fdac33e5350a46631ab94672d00ee1de4cc1644594d702dc5b81ad2ffc8f27.gz/SHA256E-s52417675222--01fdac33e5350a46631ab94672d00ee1de4cc1644594d702dc5b81ad2ffc8f27.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "zJ/k1/SHA256E-s76652913979--d3bcbd7a02b38773d2d11db4ab7fb41528448931bc29534ed00b27cdbc7b364c.gz/SHA256E-s76652913979--d3bcbd7a02b38773d2d11db4ab7fb41528448931bc29534ed00b27cdbc7b364c.gz";
      r2 = "0V/JF/SHA256E-s81515608411--b4b92c2697c7b93117448cb8885deeb13a1edfdcf371d12f409d2503957cf161.gz/SHA256E-s81515608411--b4b92c2697c7b93117448cb8885deeb13a1edfdcf371d12f409d2503957cf161.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "Pz/6F/SHA256E-s3965338542--f6d86c605e63a5350de30741e4750b86aa9fad714fdb1d723b267004b35feb3f.gz/SHA256E-s3965338542--f6d86c605e63a5350de30741e4750b86aa9fad714fdb1d723b267004b35feb3f.gz";
      r2 = "34/mJ/SHA256E-s3964267072--aa91f5e6ce2be66c0e4e88940b24d0ddb280da6b9c4b72c1577412cfe915d0e4.gz/SHA256E-s3964267072--aa91f5e6ce2be66c0e4e88940b24d0ddb280da6b9c4b72c1577412cfe915d0e4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 14.04.2022\nDiscussed WGS report.\nDamien's notes from Variant meeting: \nPlanning doxorubicin \nLow TMB \nWTS failed \nTP53 LoF and LOH \nPTEN LoF and LOH \nRB1 inactivating rearrangement \nRBL2 LoF \nNTRK2 rearrangement - potentially actionable (MoST 6 larotrectinib and MoST 10 entrectinib) \nDominant HRD signature, BUT CHORD and HRDetect proficient \n\nOwen: NTRK2 FISH not useful. Pan-TRK IHC maybe. Reattempt RNA. \nCheck with Owen for Pan-TRK \nThen... consider discussing with David Thomas suitability for MoST 6 \nIMParpHRD \nMoST-CIRCUIT \n\n* DNA and RNA was made in Sean's lab. We have lots more frozen tissue (did not receive fresh) and FFPE sections from same surgery. \n* to validate the NTRK2, have been in contact with Owen Prall at Peter Mac. FISH not an option, the break would be too small. They can do IHC for panTRK (non-specific NTRK1-3 expression) and pERK. Can submit RNA for RNAseq analysis (panel is more sensistive than repeating WTS with Sean). \n*new RNA extractions done on S2 frozen tissue (twice). Bad RNA quality. \n* our 2A FFPE sections were cut over 1 year ago, not good for new IHC or RNA extraction for the panel. PMCC have requested blocks and will do IHC + RNAseq for validation \n\nTexts and emails Gen/Ratana/Clare 25.02.2022\nPatient is progressing, have done BRCA assay only. Have S2 with 80% tumour, so send SF for urgent WGS\n\nMeeting notes 16.05.2019\nDecided to sent block for BRCA at PeterMac as the fresh tissue did not show sufficient tumour.";
      date_of_death = "12/2023";
      date_consented = "2019-03-27";
      tumour_type = "uLMS";
      tumour_details = "Uterine Leiomyosarcoma";
      case_details = "Previous radiotherapy to right hip, no systemic therapy\n\nTAH BSO - Australia Clinical Labs\nRef no: 2018/22993/dw/dn\nCollected 19-Mar-18\nNOTE: not leiomyosarcoma on path report\n\nFemoral Lytic Lesion -St Vincent's Hospital Labs\nLab no: 2019B004692\nCollected: 28-Feb-19";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "03/11/2022: 2018 and 2019 samples requested from clinical labs and PMC pathology by Devindee for uLMS project.\n14/11/2022: 2018 block received.";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01158";
  }
