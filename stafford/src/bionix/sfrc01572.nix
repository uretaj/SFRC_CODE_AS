with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "6v/PV/SHA256E-s19042862893--6c295928109cfe05524458f594e4975cbf1ece874c58f83901cdee4d338438dd.gz/SHA256E-s19042862893--6c295928109cfe05524458f594e4975cbf1ece874c58f83901cdee4d338438dd.gz";
      r2 = "V7/56/SHA256E-s19389862191--99ce3922177705fb3aeb73eef3efc16a96d95faba8db59f9fe386b719061b364.gz/SHA256E-s19389862191--99ce3922177705fb3aeb73eef3efc16a96d95faba8db59f9fe386b719061b364.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "w9/9P/SHA256E-s4296824847--99f6a6f29a8a8af3064d5e5d34173e7f906bc5622e65c6b846450e535beaaade.gz/SHA256E-s4296824847--99f6a6f29a8a8af3064d5e5d34173e7f906bc5622e65c6b846450e535beaaade.gz";
      r2 = "pX/K0/SHA256E-s4523599705--1de19de1071212b473d5663d394c8981586ef10a2deb05758b4ea6aa1a696db5.gz/SHA256E-s4523599705--1de19de1071212b473d5663d394c8981586ef10a2deb05758b4ea6aa1a696db5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 30.06.2022\n--Send Block 1A for URGENT WES, do deep sequencing. We want the molecular profile to determine tumour origin. \n--Ratana to make RNA (3 slides) & Rachael to make DNA (7 slides). Might do Fusion Panel later.\n--Mandy to add updated EPIC notes to RedCap.\n\nMessage from Clare 14.06.2022\nUrgent WES when block 1A is reviewed by Gayanie.";
      d_case_summary = "52yo female, high grade adenocarcinoma morphologically suggestive of endometrioid type, immunoprofile is suggestive of female genital tract origin\n\nBRCA2 mutation carrier\nPrior breast cancer 2012\nPrior TAH for HMB\nPrior RRSO for gBRCA2\nDx with ? Vaginal or Endometrial high grade adeno carcinoma Oct 2021\np53 null (c/w mutant)";
      date_consented = "2022-04-09";
      tumour_type = "Gynae cancer other";
      tumour_details = "high grade adenocarcinoma morphologically suggestive of endometrioid type, immunoprofile is suggestive of female genital tract origin, also breast cancer";
      sfrcp_her2_report = "SFRC01572_HER2Report_07Jun2022_Redacted.pdf";
      case_details = "52yo woman, BRCA2 mutation carrier\n\n2011: TAH for heavy mensural bleeding\n\n2012: breast cancer\n\n2018: BRCA2 germline mutation\n\n2019: Breast cancer recurrence. Started adjuvant anastrazole for breast cancer, remains on it.\n\n2021-10: Initial diagnosis - Cancer of female genital origin\n\nHistopath on vaginal vault biopsy (tissue fixed and blocked (Block 1A)):\nIHC positive: CK7, Ber-EP4, GATA3 (patchy weak),\nPAX8 (focal moderate), Vimentin,\np63 (patchy, particularly in spindle areas), p16, CK5/6, ER (weak: 2+ in 2%), PR (weak: 1+ in 20%),\nHer2 equivocal (strong and incomplete >10%) - Needs HER2 DISH - discussed with Dr\nPrue Allan\nNegative: CK20, WT1, GCDFP15, p53 (mutation pattern - null phenotype)c/w mutation\nCEA.\n\"The immunoprofile shows overlapping results making assignment of the tumour origin\ndifficult.\"\n\n2021-11: Treatment: cisplatin, radiation\n\n2022-01: diagnosed endometrial cancer\n\n2022-05: Blood B1 received\n\n2022-05: FFPE sections from vaginal vault biopsy (Block 1A 2021-10) received.";
      brca_report = "SFRC01572_BRCA_10Jan17_Redacted.pdf";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "07/05/2022: Oct 2021 sample tissue requested from RCH pathology by Devindee.\n23/05/2022: Oct 2021 sample slides received from RCH pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_germline_mutations = "BRCA2";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01572";
    predictNeoantigens = true;
  }
