with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "S2_CL1";
      class = "tumours";
      pdx = false;
      r1 = "j9/VV/SHA256E-s12949796962--e3dee05b507499618bfa92bbc7e215613c90c47973be50e74573527e9d9499a6.gz/SHA256E-s12949796962--e3dee05b507499618bfa92bbc7e215613c90c47973be50e74573527e9d9499a6.gz";
      r2 = "5x/F0/SHA256E-s13489665542--c240239169567a0bc56e5939bd36f676af1412b5abb4d3448d4dd0c0c35a8ea7.gz/SHA256E-s13489665542--c240239169567a0bc56e5939bd36f676af1412b5abb4d3448d4dd0c0c35a8ea7.gz";
    }
    {
      prefix = "grimmond/s3/batch8/L1901034_S4";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "dc765543f683965044b9fcef296c563bd032bd14efa86cea6c5e2fb3d5f82eb9";
      sha256-2 = "adfee5e7be07df72f76ae020acbc0f93b29a7a1300a75600dd8dff62fa769a23";
    }
    {
      prefix = "grimmond/s3/batch8/L1901034_topup_S5";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "ef24155321475b7b371b70dbe8b96271132d238de4052fff4e85060ada02b6bb";
      sha256-2 = "ffd81f332367899401e664d58b8566b6a693d7856d3f01f60370dc11979bd0ff";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "11.05.2023\nDiscussed WES report on cell line:\nOnly found germline variants (same as WGS), no somatic variants. Could the S2 cell line be derived from normal mucosa? Not tumour tissue? \n\n13.05.2021\nDuring RC Meeting, Clare mentioned patient could be having a procedure Friday 21st May. Tissue would be for mice and organoids. Organise to get more bloods (we have one from 2019).\n\n25.02.2021\nLots of cells growing and frozen down. But review of tissue showed no tumour.\nPerhaps do tumour IHC?\nSTK11 is germline, so can't use to validate tumour. ELF3 (11%) and SOX9 (12%) from previous WGS (no TP53) \n\n04.02.2021\nHaving a new biopsy tomorrow. WGS did not show anything, want tissue for mice, mince and culture (organoids and 2D)\n\nRC Meeting notes 11.06.2020\nNeed to check that germline STK11 mutation is known (Clare to report). \nSOX9 - Wnt signalling? \n\nMeeting notes 2019.11.21\nClare reviewed clinical features, suspicious for recurrence, chemo unlikely to be of benefit, proceed with WGS. ";
      date_of_death = "10/2022";
      d_case_summary = "3C1 mucinous Ca cervix gastric type, minimal deviation/adenomamalignum. Rad hyst and LSO and nodes. 9/10/2019\nPast H/O Peutz-Jeugher with multiple previous laparotomies and also bilateral mastectomy. Presume she has a STK11 germline mutation.";
      date_consented = "2019-10-10";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Endocervical mucinous adenocarcinoma  Adenoma malignum";
      case_details = "51F, Peutz-Jeghers syndrome\n\n1997: Small bowel obstruction\n\n2003: Small bowel obstruction\n\n2009: Surgery: Laparotomy for polyp removal\n\n2011: Surgery: RSO\n\n2016: Dx Left breast DCIS\nSurgery: Bilateral mastectomy.\nNo adjuvant therapy.\nIHC positive: p63\nIHC negative: AE1/AE3, CK5/6, ER\n\n2019-10: Dx Endocervical mucinous adenocarcinoma of gastric type, FIGO 3C1\nSurgery: Radical hysterectomy, LSO. Fresh tissue S1 received. \nIHC positive: CK7, PAX8, CDX2 (focal), CA125 (focal)\nIHC negative: p16, ER, PR, CEA (focal/patchy positive staining noted), CK20\np53: wild type\n\n2019-12: Blood B1 received. WGS on Fresh tissue S1: \n• Tumour has a low tumour burden (<< 4 mutations per Mb) \n• Patient carries a pathogenic germline STK11 loss-of-function mutation. \n• A loss of function mutation of unknown clinical significance was detected in ELF3. \n• A putative loss of function mutation of unknown clinical significance was detected in SOX9.\n\n2020-11: Recurrence with bladder obstruction\n\n2021-02 - 2021-03: 1st line treatment: carboplatin/paclitaxel x2 cycles; ceased following PD.\n\n2021-02: Fresh tissue S2 received. \n\n2021-05: 2nd line treatment: Xeloda chemotherapy (for STK11 mutation)\n\n2021-08: 3rd line chemotherapy: Everolimus\n\n2021-10: CTCAP: Stabilisation of pelvic mass (cancer) and presence of pelvic collection associated with bladder.\n\n2022-01: Blood B2 received. \n\n2022-08: 1228S2_CL1 DNA sent for WES\n\n2022-10: Deceased.\n---------------------------------------------------------------------------\nWGS clinical notes \n\"48 yrs, 3C1 mucinous Ca cervix gastric type, minimal deviation/adenoma malignum. Rad hyst and LSO and nodes. 9/10/2019\nPast H/O Peutz-Jeugher with multiple previous laparotomies and also bilateral mastectomy. Presume she has a STK11 germline mutation.\n\"";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "STK11";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01228";
  }
