with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3W";
      class = "tumours";
      pdx = false;
      r1 = "WK/QF/SHA256E-s12679468442--73463f1f4d9194d5790fe1d66d0640164ce0e8fb47f1235515e455e1f6101a4d.gz/SHA256E-s12679468442--73463f1f4d9194d5790fe1d66d0640164ce0e8fb47f1235515e455e1f6101a4d.gz";
      r2 = "7z/x1/SHA256E-s12826545725--fff8607883afb062ee9189fa259fca9f1e98fa281269198bb46d3a9866079bf8.gz/SHA256E-s12826545725--fff8607883afb062ee9189fa259fca9f1e98fa281269198bb46d3a9866079bf8.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fg/JM/SHA256E-s6470419073--2f27360cb05196ada0f0e3badc7b57b52ea83facbae38cdc1c03f6755efe8fb7.gz/SHA256E-s6470419073--2f27360cb05196ada0f0e3badc7b57b52ea83facbae38cdc1c03f6755efe8fb7.gz";
      r2 = "pf/4f/SHA256E-s7091099406--b7f88dcd42493e82ff10bef32faa6b698c84faeceee64e2cfddf4f1098e225e7.gz/SHA256E-s7091099406--b7f88dcd42493e82ff10bef32faa6b698c84faeceee64e2cfddf4f1098e225e7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 08.06.2023\nDiscussed WES report for Block 3W:\n-gBRCA1 and sTP53 known. NF1 deletion is new.\nNF1 deletion, potential for MEKi? \n-Clare to discuss directly with patient--no report needed.\n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 3W\n\nClare's Meeting 22.12.2022\nFFPE Block 3W mostly tumour, 80% purity.  do WES. Is a super responder. Would also like to do Opal and nanostring. Waiting for Myriad results. ";
      myriad_report = "SFRC01673_MyriadResult_05Dec2022_Redacted.pdf";
      d_case_summary = "54 y female.\nHGSOC, BRCA2 carrier\nOn PBS first-line maintenance olaparib (PARPi) for 18 months (with some withholds due to side\neffects) in CR\nCa125 sits at 2 - currently 2 on 30/8/22\nCommenced olaparib Feb 9th 2021\nIn CR for since Dec 2020 post C6 chemo (Ca125 and imaging) - for > 20 months\nOn olaparib > 10 months in CR";
      date_consented = "2022-10-26";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "54F\n\n2020-08: Dx HGSOC\nSurgery: Debulking, hysterectomy, BSO (FFPE Block 3W)\nIHC Positive: Pax-8, CK7, p53, WT-1 (focal), ER (weak +1, 10%),\nIHC Negative: PR\n\n2020-08: FCC Report: Pathogenic gBRCA2 detected\n\n2020-09 - 2020-12: Carboplatin/paclitaxel x6\n\n2021-02: Commenced maintenance olaparib\n\n2022-03: CTCAP: No evidence of metastasis or relapse\n\n2022-10: In CR since Dec 2020\n\n2022-11: Sections from FFPE Block 3W received.\n\n2022-12: Myriad MyChoice: HRD Status Positive, GIS Score 55.\n\n2023-03: DNA FFPE Block 3W sent for WES.";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA2) score 55";
      fcc_report = "SFRC01673_FCPanel_28Aug2020_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/11/2022: 2020 sample requested from RWH pathology by Devindee\n21/11/2022: 2020 slides received. ";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
      patient_germline_mutations = "BRCA2";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01673";
  }
