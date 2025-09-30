with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "zz/8p/SHA256E-s20265443096--f447c716bc3a083a43b478780c34fde7c7042d38d95144afede3f0356112d9ad.gz/SHA256E-s20265443096--f447c716bc3a083a43b478780c34fde7c7042d38d95144afede3f0356112d9ad.gz";
      r2 = "7q/K6/SHA256E-s20279451317--b4b15c6f746e9bfa8b8a162e648bc5002a9761a07490c0c9d5e960f54df916f8.gz/SHA256E-s20279451317--b4b15c6f746e9bfa8b8a162e648bc5002a9761a07490c0c9d5e960f54df916f8.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6Q/6M/SHA256E-s7086484528--f0c5f759f78a2dec9d4dd2bf60ac93c98b2bd0309bcfe30f010386f525400feb.gz/SHA256E-s7086484528--f0c5f759f78a2dec9d4dd2bf60ac93c98b2bd0309bcfe30f010386f525400feb.gz";
      r2 = "KQ/FV/SHA256E-s7418208863--696ae036b26dde6250a253d80f044dd0b3858a0480d27e388933f2b03fc5d9c3.gz/SHA256E-s7418208863--696ae036b26dde6250a253d80f044dd0b3858a0480d27e388933f2b03fc5d9c3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0108, CA0163";
      meeting_discussions_follow_up = "Sample meeting 2023.10.05\nPatient very unwell and likely will become a cascade case.\n\nClare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block 1N (Check with Asha location and amount of DNA first)\n\nRC Meeting 8.12.2022\nDiscussed WES report.\nSomatic TP53, CCNE1 x18 copies.\n\nClare's Meeting 17.11.2022\nCyclin E H-score: 185\nB7H4: 60% positivity in tumour\nMyriad MyChoice GIS score: 14. \nPt is currently on chemo. IGNITE currently shut. Is eligible for screening for AZD8205. Wait for WES report RE Cyclin E before proceeding.\n\nClare Meeting 06.09.2022\nPatient has hernia and colonoscopy to fix. Colonoscopy 06.09 for biopsy but no tissue taken.  \n\nWES on the 1N block CLINICALLY URGENT (avoiding TSO500) will need to be done by Asha \n\nBring back up in 3 weeks when Clare back. Will know if getting tissue. Hoping for WGS.\n\nsections 2.1 - keep in case. \n* extra email from Clare - do B7H4 IHC  \n\nClare's Meeting 05.08.2022\n-Use all 10 thick sections from FFPE block 2.1 for \n WES. If not enough DNA, send for TSO500. Asha to \n extract for SOLACE2 project. \n-Asha has baseline 2020 block, is awaiting \n Gayanie's review.\n-Patient is having CT scan next week because of \n potential recurrence. ";
      myriad_report = "SFRC01492_MyriadResult_28Oct2022_14_WESp_Redacted.pdf";
      blood_recall_history = "Bloods to be taken 26April22 At PMCC";
      date_of_death = "10/2023";
      d_case_summary = "8/8/20: HT - R) oophorectomy - bilateral fallopian tube resection for what was thought to be uterine fibroid hysterectomy surgery. Path: unexpected finding of HGSC of tubal ovarian origin, carcinoma within the left fimbria and the R) ovary\nNow on SOLACE2\nCASCADE CA0163";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS fallopian tube";
      case_details = "57F\n\n2020-08: Diagnosed Stage 1C HGSC of tube-ovarian origin, carcinoma within the left fimbria and the R) ovary.\n-Surgery: R) oophorectomy - bilateral fallopian tube resection\n\n2020-09: Commenced adjuvant carboplatin and paclitaxel\n\n2020-10: PET CT after 3x cycles of carbo/pacli: active peritoneal nodule deep to umbilicus. Completed 3x further cycles, ended 2021-02\n\n2021-02: Surgery: Re-laparotomy and resection of omentum + umbilical tissue. Tissue fixed and blocked (Block 2.1)\n-Path: both areas with focal HGSC, with chemotherapy response score 3\n\n2021-07: Elevation of CA125: 59\n\n2021-09: Elevation of CA125: 148. CT scan showed no evidence of disease.\n\n2021-09: Commenced SOLACE2 Trial\n\n2022-04: Blood B1 received.\n\n2022-07: Sections from Block 2.1 (umbilical tissue) received.\n\n2022-09: FFPE Block 1N (SOLACE2 input) and B1 sent for WES\n\n2022-09: FFPE Block 2.1 stained for B7H4 and Cyclin E: \nB7H4: 60 - 65% positivity\nCyclin E: +3-35%, +2-30% and +1-20%. H-score: 185\n\n2022-11: Myriad MyChoice: GIS Score 14, negative.\n\n2023-10: Deceased. Fresh samples S1 - S4 received (CASCADE 0163)";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 14";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "06/07/2022: 2021 sample tissue requested from Austin Pathology by Devindee. \n13/07/2022: 2021 slides received from Austin Pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01492";
    capture = CREv2;
  }
