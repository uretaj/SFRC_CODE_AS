with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "3G/zz/SHA256E-s4342154316--39e6bb897d215cb3465a0b553db3f4cbeb9f981937bc40dcf634aeab8e4d8551.gz/SHA256E-s4342154316--39e6bb897d215cb3465a0b553db3f4cbeb9f981937bc40dcf634aeab8e4d8551.gz";
      r2 = "3M/Km/SHA256E-s4582498090--2b62474552d367efd0f3489398f7842e07fe69211cef89c65774c909cd44db5c.gz/SHA256E-s4582498090--2b62474552d367efd0f3489398f7842e07fe69211cef89c65774c909cd44db5c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0054";
      meeting_discussions_follow_up = "RC Meeting 08.09.2022\nDiscussed BROCA results.\nFrom WES Meeting 16.06.2022 - Germline BRCA1 mutation not in WES report as deletion too large?  (~130bp) - but we know that it's there. \nTP53 is the same event. \n\nRC meeting 16.06.2022\nAsha & Cass to talk to Matt about organoids/PDX.\n\nRatana and Clare update 18.02.2022\nDo the DNA+RNA on S5 cell pellet, but send DNA for WES (not WGS).\n\nRC Meeting 17.02.2022\nHave ascites cell prep for S5. Can extract DNA+RNA using AllPrep kit and submit for WGS.\n\nBROCA meeting with Clare 15.10.2021\nSent the same sample as WES for BROCA (S4)\n\nRC meeting 2021.08.05\nBRCA1 germline exon 14 deletion not detected by WES, only by MLPA. Victoria Beshay to discuss with Tony, Justin, Lachlan. \n\nRC Meeting 22.07.2021\nGermline BRCA1 mutation (deletion of exon 14) - that we could not detect. \nNew blood was taken, WES performed. \nRepeat germline WES (B2) confirms no BRCA1 mutation detected. - by email from Justin \nMatt/Clare to discuss further with Path lab about specific primer and possible interfering SNV.  \n\nRC Meeting 01.04.2021\nWES results discussed, have BRCA Report (preliminary) saying there is a BRCA1 deletion.\nPatient has stable disease, not quite progressing (so no new biopsy). No reversions would be possible on gene deletions. Our results do not report the BRCA1 deletion. \nFCC report confirms the mutation by NGS and Sangar sequencing. \nClare to contact Victoria Beshay for SNPs or BAM files.\n\nRC Meeting notes 18.03.2021\nWES results discussion:  Find germline BRCA1 report (Clare to do). Then can look at report again. \n\nRC Meeting notes 12.11.2020\nDo WES on this sample at 300X (with extra cost). \n\nTP53 mutation is expected to be a null mutation - consistent with pathology that shows no staining\n\nMeeting notes 29.09.2020\nWon't be able to get a good OCT (S4 had the highest tumour purity but we only have mince (no SF)). Extract DNA from S4 mince, then do TP53 assay to determine tumour purity, to send for WGS.\n\nMeeting notes 10.09.2020\nNew OCT block review is not good. Patient is doing well, so no rush for WGS. Keep doing OCT until good tumour can be extracted.\n\nMeeting with Clare 02.07.2020\nPatient is on SOLACE 2 (Germline BRCA1 carrier). Talk to Cass about which tissue to allocate to SOLACE 2 and which to keep for SFRC. Send for WGS - Will need to embed some SF tissue in OCT, for Gayanie to review before extracting DNA (only a small section of tumour in FFPE so far, not ideal for WGS). Not urgent. ";
      date_of_death = "03/2023";
      d_case_summary = "diagnosis is HGSOC 2015, and TNBC 2012, with a BRCA1 germline mutation. Bloods done and received on 1 Dec 2020.";
      date_consented = "2020-06-07";
      tumour_type = "HGSOC";
      tumour_details = "Stage 1C High grade serous cancer of the ovary in 2015; gBRCA1 mutation  triple negative breast cancer 2012";
      case_details = "54yo woman, HGSOC platinum sensitive, BRCA1 carrier.\n\n2012-07: Diagnosed (L) breast cancer. Surgery: (L) breast WLE/SLN, then (L) ALND\nIHC negative: ER, PR, H2\n\n2013-02 - 2013-03: Radiation (L) breast\n\n2015-11: Dx with Stage 1C HGSOC (fallopian tube carcinoma) from washings. Surgery: RR BSO \n\n2016-01 - 2016-04: Treatment: Carboplatin / Paclitaxel x 6 \n\n2017: Surgery: Bilateral mastectomies and reconstruction\n\n2020-06: Surgery: diagnostic laparoscopy.  Diagnosis: Recurrence of HGSOC for the first time after initial Dx in 07/2020, with first rising CA125. BRCA1 carrier. On SOLACE 2 trial. \nHistopath on tissue labelled 'omentum':\nIHC positive: PAX8, WT1, p16 (patchy positivity), ER (80%, 3+)\nIHC negative: PR\np53: null mutation pattern (ie, no staining of tumour cells)\n\n2020-06: Fresh omentum tissue received at lab and processed (S1, S2, S3, S4)\n\n2020-12: Blood B1 received\n\n2021-05: Blood B2 recieved\n\n2022-01: Recieced 2700mL Ascites (S5)";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 Primary Breast Ovary only";
      patient_germline_mutations = "gBRCA1";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01308";
    filterFQZeros = true;
  }
