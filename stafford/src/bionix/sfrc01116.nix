with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/FASTQ/2019-04-05T0132__WGS_SFRC01116/data/190211_A00130_0092_AHGY23DSXX_PRJ190051_SFRC01116B";
      suffix = "_001";
      sha256-1 = "0ab70a8462cdf6143de944d66cc5b6d9cc3e61546e6e0214bc5d3ea5c7b84ed9";
      sha256-2 = "7bfb17df05b3ac208d6cf8af2f56974bc54d03d605e5a981111b2c4809698081";
    }
    {
      class = "tumours";
      site = "1V";
      prefix = "grimmond/FASTQ/2019-04-05T0132__WGS_SFRC01116/data/190211_A00130_0092_AHGY23DSXX_PRJ190052_SFRC01116T";
      suffix = "_001";
      sha256-1 = "9d7a06e6cbd0b18cca7ad371884b9adb785c0f32b2b0c9116036580a392f9c4d";
      sha256-2 = "9ec2ca6249ecbf8b39b4001841b49299c3b36f2cec6640177a958998133847f9";
    }
    {
      site = "S2_T1";
      class = "tumours";
      pdx = true;
      r1 = "V9/pF/SHA256E-s58081723803--a0f683d042a71180950a5fc112363afe65f360254e792f48379827a176cac802.gz/SHA256E-s58081723803--a0f683d042a71180950a5fc112363afe65f360254e792f48379827a176cac802.gz";
      r2 = "jW/Jm/SHA256E-s59260279291--cf762fa239a8f4781b84255733c6e0b34844934e4ed926a6d37ae235a95dc878.gz/SHA256E-s59260279291--cf762fa239a8f4781b84255733c6e0b34844934e4ed926a6d37ae235a95dc878.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC meeting 02.02.2023\nDiscussed WGS report from PDX sample.\nHER3 of note? \nARID1A not called in the WGS (coverage issue?).\nThis is a Cyclin E amplified HGSEC, at the time when trials were not available.\nThis is a very refractory PDX.\n\nRC meeting 06.10.2022\nDiscussed new BROCA results (compare to other results).\nARID1A and CCNE1 added to BROCA list after the S1 result. \nWGS was on FFPE sample from 2018 (low purity) \n\nMeeting notes 2020.03.05\nBroca results discussed, BROCA report needs to be issued. Briony to add to Clare's list \n\nMeeting notes 2019.12.05\nCurrently on lenvatinib and considering adding pembro at cost \nPossible she has had some response to alternative immunotherapy \nFuture: consider ordering assay for ERBB3 for ddPCR and check if PBMC number increase.\n\nTP53 result 2019.12.02\nUnfortunately, out of the 4 cores that when for p53 MiSeq, the highest tumour purity is 12% which if not enough for WGS.\n \nMeeting notes lab retreat 10.10.2019\nBiopsy on 11.10.2019, priority mice and WGS.\n\nMeeting note 2019.08.15\nWGS was done on FFPE (block received in Jan 19) and blood  \nBiopsy taken on 4.7.19 post chemo - this sample, not enough tumour to do anything\nDon't do anything until the patient progresses  ";
      date_of_death = "10/2020";
      date_consented = "2018-11-27";
      tumour_type = "HGSEC";
      tumour_details = "High grade serous endometrial cancer, FIGO stage 2";
      case_details = "65F\n\n2018-03: Dx HGSEC, FIGO Stage 2\nSurgery: TLH/BSO. FFPE Block 1V.\nIHC positive: p16, p53 (mutation type), \nIHC negative: WT1, vimentin\npMMR\n\n2018-03 - 2018-07: Adjuvant HDR Vaginal Vault Brachytherapy\n\n2018-12: 1st line chemotherapy: Carboplatin/Paclitaxel x6 commenced\n\n2018-12: HER2 negative\nFFPE Block 1V received.\n\n2019-01: Blood B1 received\nWGS on B1 and FFPE Block 1V: TP53 and ERBB3 VUS.\n\n2019-03 - 2019-09: Remission\n\n2019-07: Blood B2 received. Fresh tissue S1 received.\n\n2019-10: Recurrence. Fresh tissue S2 - S5 received.\n2nd line chemotherapy: Lenvatinib\nBROCA on S1: somatic TP53 short variant, 5%\n\n2019-11: Blood B3 received\nMiSeq TP53 on S2 - S5 DNA:\nS2: 8%, S3: 11%, S4: 9%, S5: 12% -tumour purity not high enough for WGS on these tissues.\n\n2020-01: PET/CT Scan: Stable disease.\n\n2020-04: Ceased Lenvatinib due to decline in renal function\n\n2020-10: Deceased\n\n2021: PDX established from mince from S2 tissue\n---------------------------------------------------------------------------\nRecurrent high grade serous endometrial cancer (FIGO Stage 2) , first Dx 22/3/18. HER2 negative, \n\nTLH+BSO with sentinel LN  biospy, omental biopsy and washings performed March 2018. Adjuvant HDR Vaginal Valunt Brachytherapy completed June 2018\nOn first line chemotherapy (carboplatin/paclitaxel) from Dec 2018\n\nWill have CAT scan before cycle 5\n\nTissue: TLH + BSO\n- Specimen no: 18972556 Block 1\n- Sample date: 22-Mar-2018\n- Received 17-Jan-2019 -> to SG lab for WGS";
      pre_analysis_mutations = "HER2 status zero";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01116";
  }
