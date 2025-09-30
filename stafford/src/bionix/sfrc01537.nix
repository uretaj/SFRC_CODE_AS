with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "V2/M4/SHA256E-s52588736825--a5fdf67b717ed68a4cb567b6bfcc136040bb8fa6c6757f4e0dba8f59e24dab87.gz/SHA256E-s52588736825--a5fdf67b717ed68a4cb567b6bfcc136040bb8fa6c6757f4e0dba8f59e24dab87.gz";
      r2 = "vx/Z9/SHA256E-s55121389884--88a14b34d391863190beb312bd9337f353597791ab733770b269207262021691.gz/SHA256E-s55121389884--88a14b34d391863190beb312bd9337f353597791ab733770b269207262021691.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3k/zk/SHA256E-s4010571989--105feea2eb5843ce67728b5809d27b2b40cc4956c572b734ed2d753f6cfadcc6.gz/SHA256E-s4010571989--105feea2eb5843ce67728b5809d27b2b40cc4956c572b734ed2d753f6cfadcc6.gz";
      r2 = "MP/ZQ/SHA256E-s4199092628--60fe964f3cd6cf2a21805fcc94b3ff2821f3003a50b8ef7592b0cce4dd5a007f.gz/SHA256E-s4199092628--60fe964f3cd6cf2a21805fcc94b3ff2821f3003a50b8ef7592b0cce4dd5a007f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Sample meeting 04.04.2024\nS1 sample - Sections are tiny. Nothing to do.\n\nRC Meeting 24.11.2022\n-CHEK2 follow up with FCC despite low AF, but may fail to validate? Clare to decide. \n-Activating TERT promotor mutation\n-NOTCH1: uncertain due to conflict of deletion but should be reported. \"Potentially pathogenic mutation with copy number changes of uncertain impact on this mutation.\" \n-HPV confirmed as integrated. May impact expression of TP53 and TDRD6 - a test specific antigen. ?Immunotherapy options despite low TMB? \n\nClare and Ratana 14.03.2022\nThis sample will be for URGENT WES. Blood has been taken, block recalled. Will need urgent review as soon as block arrives.";
      d_case_summary = "Vaginal wall squamous cell carcinoma - cARBOplatin AUC 5 / PACLitaxel 175mg/m2 (3-weekly). Feeling well considering.\nAlso Stage 1 breast cancer 1995 (Northern Hospital)";
      date_consented = "2022-02-19";
      tumour_type = "Gynae cancer other";
      tumour_details = "Vaginal wall squamous cell carcinoma";
      case_details = "66F\n\n2021-11: Dx vaginal wall SCC, FIGO Stage IVB\nBiopsy: posterior vaginal wall; tissue fixed and blocked (FFPE Block 1.1).\nHistopathology: p16 positive, high risk HPV\n\n2021-12 - 2022-03: Chemotherapy: Carboplatin/Paclitaxel\n\n2022-01 - 2023-08: maintenance Bevacizumab\n\n2022-03: Blood B1 received\n\n2022-05: Sections from Block 1.1 received\n\n2022-08: DNA from Block 1.1 and Blood B1 sent for WES:\n-Germline CHEK2\n-Somatic NOTCH1, TERT\n-Deletions: NOTCH1, AKT1, ZNF331, TERT\n-HPV confirmed as integrated, may impact expression of TP53 and TDRD6 (a test specific antigen).\n\n2024-03: Recurrence. Fresh tissue S1 received.\n\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "10/03/2022: Oct 2021 sample requested from Austin Pathology by Devindee. \n20/04/2022: Oct 2021 sample re-requested from Austin Pathology by Devindee. \n06/05/2022: Oct 2021 sample slides received from Austin Pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01537";
  }
