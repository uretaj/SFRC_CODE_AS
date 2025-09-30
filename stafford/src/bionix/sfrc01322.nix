with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2W/Vf/SHA256E-s37208512627--20a7b5473efd43fc45ba9ef64382ed1fade50cd69b7ef2870b47639e1b41d9c7.gz/SHA256E-s37208512627--20a7b5473efd43fc45ba9ef64382ed1fade50cd69b7ef2870b47639e1b41d9c7.gz";
      r2 = "xz/46/SHA256E-s40870875846--b9cb653e40f528c5259e2122851db3c2924b096d89171ac11dcc71b0166715cf.gz/SHA256E-s40870875846--b9cb653e40f528c5259e2122851db3c2924b096d89171ac11dcc71b0166715cf.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Zg/pK/SHA256E-s13961335029--256c46fac0a1af0de2122aead30d20a2461c9fc6e9856d28ea86ef183eec7f09.gz/SHA256E-s13961335029--256c46fac0a1af0de2122aead30d20a2461c9fc6e9856d28ea86ef183eec7f09.gz";
      r2 = "37/vv/SHA256E-s14749974726--c452f72ac084006d1f615f3a46e9ba9f68064f7160e1bb8e1189b5f4ede216d2.gz/SHA256E-s14749974726--c452f72ac084006d1f615f3a46e9ba9f68064f7160e1bb8e1189b5f4ede216d2.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "45/qq/SHA256E-s63862402039--742b0158202504f85f2ae3085250ad3419c792e6fb22e0acb6a0c7b6c48be46e.gz/SHA256E-s63862402039--742b0158202504f85f2ae3085250ad3419c792e6fb22e0acb6a0c7b6c48be46e.gz";
      r2 = "mG/v9/SHA256E-s69208923354--1a56ee21e684b19e20211084b820a5c5f1f3a70b4ba2faae69cfe41c38efb91f.gz/SHA256E-s69208923354--1a56ee21e684b19e20211084b820a5c5f1f3a70b4ba2faae69cfe41c38efb91f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "gF/62/SHA256E-s3938166740--15fcf57bae75db7e09b8b548aba8752cd64986da0ab8e589304615d3089c2d67.gz/SHA256E-s3938166740--15fcf57bae75db7e09b8b548aba8752cd64986da0ab8e589304615d3089c2d67.gz";
      r2 = "GW/M2/SHA256E-s4018142577--d08af5fd5e014617dcb01c31afd1319eed98b88a8d5f237aabcf2e2b734c79a8.gz/SHA256E-s4018142577--d08af5fd5e014617dcb01c31afd1319eed98b88a8d5f237aabcf2e2b734c79a8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "28.01.2021 Clare meeting\nBlock 1.11 review. Extract DNA for WES (after March for funding)\n\nRC Meeting notes 12.11.2020\nWGS discussion. RB1 germline mutation, CHEK2 germline (known in clinvar) - report to FCC. \nPIK3R1 rearrangement - aberration of PI3K pathway signalling.\nMYOCD amp is common feature of LMS. \nSignatures - 3 (27% - 2000 assigned), 8 (39%). But again CHORD and HRDetect both say HR proficient - possible carry over from signature 8 explaining perhaps overcalling of signature 3?\n\nMeeting notes 02.10.2020\nSend SF tissue for WGS. Have blood.";
      date_of_death = "04/2022";
      d_case_summary = "Metastatic mesenteric leiomyosarcoma with germline RB1 mutation";
      tumour_type = "uLMS";
      tumour_details = "Metastatic mesenteric leiomyosarcoma with germline RB1 mutation";
      case_details = "Radical resection of retroperitoneal mass on 13/08/2018 showing Grade 2 uLMS. Metastatic disease found on Dec 2018 involving liver. Commenced on doxorubicin in Feb 2019, with stable disease response.\nProgressive disease involving lung liver and muscles Dx in Jan 2020, commenced on gemcitabine + docetaxel  (2 cycles from 06/02/20-05/03/20).  Commenced 3L pazopanib from 05/20 - 07/20\n\non Ox40 trial";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2018 uLMS block routinely recalled from PMCC on 26/10/2020 by Josh\nBlock received by Warren 11/1/21";
      patient_germline_mutations = "RB1";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01322";
  }
