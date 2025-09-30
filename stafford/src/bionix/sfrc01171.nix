with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "wf/gM/SHA256E-s17371981541--4c198b1f4dbda24ea98a58623ccb19eeb428bcfc44ac94fd473baaac73ba47d4.gz/SHA256E-s17371981541--4c198b1f4dbda24ea98a58623ccb19eeb428bcfc44ac94fd473baaac73ba47d4.gz";
      r2 = "kf/FJ/SHA256E-s17292390843--a0a15a88c0ecf56a8f41c3f267e2af2a9c28c1e4aabf61ec43131dc36c0468d7.gz/SHA256E-s17292390843--a0a15a88c0ecf56a8f41c3f267e2af2a9c28c1e4aabf61ec43131dc36c0468d7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9g/Jw/SHA256E-s6351892164--8303fcd1c28069e4714a0167707101debdb4e6ffa100a94a340ba6995e2e3342.gz/SHA256E-s6351892164--8303fcd1c28069e4714a0167707101debdb4e6ffa100a94a340ba6995e2e3342.gz";
      r2 = "2w/Gm/SHA256E-s6531682394--dd7c28f9f01c4badf0fe694412589c2cf1a564948d36d908fb8cf5a922f76d32.gz/SHA256E-s6531682394--dd7c28f9f01c4badf0fe694412589c2cf1a564948d36d908fb8cf5a922f76d32.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "BROCA meeting Amandine/Clare 04.03.2022\nDevindee to recall baseline block from surgery in 2018.\nMandy yo get note from EPIC";
      date_of_death = "06/2020";
      d_case_summary = "Clear cell ovarian. Deceased 06/06/2020";
      date_consented = "2019-05-07";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell ovarian";
      case_details = "72F\n\n2018-11: Diagnosed Stage IV clear cell ovarian cancer. \nSurgery: TAH BSO  (FFPE Block 1F)\nIHC positive: CK7, PAX8, Napsin A (focal),  ER (+3, >90%), PR (2-3+, ~70%), \nIHC Negative: WT1, CK20\ngermline BRCA1/2, PLAB2, RAD51C, RAD51D, BRIP WT \nMMR proficient\n\n2018-12 - 2019-04: Commenced Adjuvant carbo/paclitaxel, Bev maintenance 3 weekly after.\n\n2019-05: Metastases: extensive nodal involvement in pelvic, retropertioneum, mediasstinal, L base of neck. \n\n2019-05: Dx Stage I Endometrial Ca--found on TAH/BSO sample, HR positive\n\n2019-05: Blood B1 received\n\n2020-06: Deceased\n\n2022-03: Sections from FFPE Block 1F received\n\n2022-06: Block 1F DNA sent for BROCA: \nSomatic PTEN, ARID1A, CTCF, BRAF, RAD51C, PIK3R1\n\n2022-09: Block 1F DNA sent for WES\n\n\n---------------------------------------------------------------------------\nMetastatic clear cell ovarian cancer, extensive nodal involvement, diagnosed on TAHBSO on 12/11/18\n\nAdjucant Carboplatin/Paclitaxel + Bevacizumab commenced 31/12/18, Carboplatin/Paclitaxel ceased April 2019\nRemains on Bevacizumab maintenance 3 weekly";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "11/03/2022: Nov 2018 sample tissue requested from RWH pathology by Devindee. \n23/03/2022: Nov 2018 slides received from RWH pathology by Devindee. ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01171";
    capture = CREv2;
  }
