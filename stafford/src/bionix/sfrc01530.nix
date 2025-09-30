with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "9v/pK/SHA256E-s15007919992--23f4ee04e82baf915a0cde4d234455de0309a4781c4c25823c2d8906e118ae49.gz/SHA256E-s15007919992--23f4ee04e82baf915a0cde4d234455de0309a4781c4c25823c2d8906e118ae49.gz";
      r2 = "Vm/M3/SHA256E-s15410274084--48d17231d2b3cbc3a1b946a2de2a547540d63d155f88ec90fd6cfbddae7ee092.gz/SHA256E-s15410274084--48d17231d2b3cbc3a1b946a2de2a547540d63d155f88ec90fd6cfbddae7ee092.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fM/4G/SHA256E-s5470174953--b24d23b59042dd41bb39a1aad1e8e49e4542c21960b280a9a7998a56ae1af212.gz/SHA256E-s5470174953--b24d23b59042dd41bb39a1aad1e8e49e4542c21960b280a9a7998a56ae1af212.gz";
      r2 = "jW/GJ/SHA256E-s5818632445--41621ed12dddee1d179566400a71f5b8dc3f38ac79ebddeb887510bc75646101.gz/SHA256E-s5818632445--41621ed12dddee1d179566400a71f5b8dc3f38ac79ebddeb887510bc75646101.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 13.10.2022\nTo report (From WES): TP53, FAM135B, MYB and NDRG. Not recommending PARPi \n\nRare cancer 21/02/2022\nWES on FFPE 1A";
      date_of_death = "24/12/2022";
      d_case_summary = "75yo female History of Paget's disease of vulva and cervix (Poorly differentiated mucinous adenocarcinoma ), HER negative, 12/8/20 Vulvectomy ";
      date_consented = "2022-02-13";
      tumour_type = "Gynae cancer other";
      tumour_details = "Poorly differentiated mucinous adenocarcinoma of vagina";
      case_details = "09Jun23 - WES cancelled due to pt death - not disclosed to clinician. \n\n\n75yo woman\n\n2007: perianal Paget's disease diagnosed\n\n2012-10, 2013-01, 2013-04, 2014-04, 2015-05: 5x Re excision of perianal pagets\n\n2018-04: laproscopic Abdominal perineal resection. Histo: extensive Pagets with focal adenocarcinoma clear of margins. 0/6 LN involvement. \n\n2020-07: vulvectomy. Histopathology diagnosis of stage 1A vulval cancer\n\nDiagnosis: new anterior vaginal adenocarcinoma FIGO 3C1\nPET primary and iliac nodes involved\nMRI sub-urethral mass and iliac nodes\n\n2022-01: \nIHC Positive: CK7 & CK20 (patchy), CDX2, CEA, Synaptophysin & chromogranin (focal to patchy) \nIHC Negative: PAX8\nMosaic: p16\n\n2022-03: FFPE sections 1A of tissue biopsy of vaginal lesion\n\n2022-04: Blood B1 received.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "21/02/2022: Jan 2022 tissue sample requested from RCH pathology by Devindee. \n03/03/2022: Jan 2022 sample slides received by Devindee. ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01530";
  }
