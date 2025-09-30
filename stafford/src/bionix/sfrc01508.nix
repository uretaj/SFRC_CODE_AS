with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "3G/9z/SHA256E-s16989226622--5208bf0c59ae22e1b78b8c92bfa444b9b842f86dcfa40d8fdfbc7ed04be0dabe.gz/SHA256E-s16989226622--5208bf0c59ae22e1b78b8c92bfa444b9b842f86dcfa40d8fdfbc7ed04be0dabe.gz";
      r2 = "1M/7m/SHA256E-s17597399865--b50f28b5f77148527e736e8e24a5975f3bce9fd08588111b8fb39ef67eacebef.gz/SHA256E-s17597399865--b50f28b5f77148527e736e8e24a5975f3bce9fd08588111b8fb39ef67eacebef.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qv/v8/SHA256E-s4658222733--b1f969aeeb127ae09d5a181c280bd179b80183b29dfd537afe4db038098bd73b.gz/SHA256E-s4658222733--b1f969aeeb127ae09d5a181c280bd179b80183b29dfd537afe4db038098bd73b.gz";
      r2 = "Q6/KW/SHA256E-s4922982003--11330f9dc0347f32a012225267ba4d8811eccce433df126372d62c7363bb991d.gz/SHA256E-s4922982003--11330f9dc0347f32a012225267ba4d8811eccce433df126372d62c7363bb991d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "WES Meeting 20.10.2022/Clare, Ratana, Mandy, Rachael 21.10.2022\nDiscussion from WES report:\nMUTYH variant seen in some families and pre-disposes to some cancers. Also SUFU \nFOXL2 pathognomonic mutation  \nTERT variant is the hotspot promoter mutation \nLTZR1 - Beigene trial \n\nIssue report!! Can refer patient to Beigene trial!\n\nClare's Meeting 06.09.2022\nLeave Block 2A (1st recurrence). For when GCT is a proper project. Wait for WES results on 2022 block 1.1 before proceeding. \n\nMeeting with Clare 20.07.2022\nUrgent WES for Block 1.1 (2nd recurrence)\n\nPlease process urgently as has been delayed due to our miscommunication. BM";
      blood_recall_history = "Blood expected - Tuesday 26April PMCC";
      d_case_summary = "Ovarian granulosa cell diagnosed 1999. Also malignant melanoma 2017.\nFor sequencing please.";
      date_consented = "2022-01-10";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa cell tumour  Also malignant melanoma.";
      case_details = "64yo woman\n\n1999-08: Diagnosed malignant GCT Stage IIIa of the ovary, indolent ++ \n-Surgery: (L) oophorectomy\n\n1999-09: Surgery: TAH/RSO\n\n2009-12: Recurrence of GCT. \n-Surgery: Secondary debulking, including \n splenectomy following recurrent tumours in pelvis, \n diaphragm, liver, spleen, small bowel NOS, \n peritoneum.\n-Histopath on biopsy of pelvic mass (Block 2A):\n   -Positive: inhibin, SMA, CD56 and CD99. \n    Occasional weak positivity for S100. Occasional \n    dot positivity seen in tumour cell cytoplasm for \n    AE1/AE3\n   -Negative: Melan A, synaptophysin, chromogranin, \n    desmin.\n\n2012-05 - 2014-08: Clinical trial: PARAGON (RWH) - Anastrozole 1mg daily.\n\n2014-08 - 2015-06: Continuing Anastrozole. Ongoing treatment on post PD on trial given possible clinical benefit (self funded).\n\n2015-07 - 2015-11: Clinical trial: PMCC 14/106: MOXR 0916, Ox40 inhibitor x6.\n\n2015-12 - 2016-06: Clinical trial: PMCC 15/87: MOXR 0916/MPDL 3280A, Ox40/PD-L1 inhibitors x10.\n\n2016-09 - 2017-02: Weekly paclitaxel x6.\n\n2017-08: Diagnosis of malignant melanoma of torso excluding breast.\n-Surgery: melanoma resected (L) anterior chest wall.\n\n2018-03 - 2018-05: Carboplatin x3.\n\n2018-06 - 2018-11: Weekly paclitaxel.\n\n2019-02 - 2019-04: Radiation.\n\n2019-04 - 2022-03: Provera 200mg daily.\n\n2022-03: Recurrence of GCT\n-Surgery: \n -Resection pelvic/paracolic/omental disease\n -Low anterior resection\n -Residual perihepatic disease\n -Parasitising tumour\n -Pelvic mass tissue fixed and blocked (Block 1.1)\n -Histopath on pelvic mass (Block 1.1):\n  -IHC positive: inhibin (focal), PR (moderate 2+ \n   staining in 20%), \n  -IHC negative: calretinin, ER\n  -There is no significant aberrant p53 staining or \n   high levels of ki-67 staining to suggest high-grade \n   transformation.\n\n2022-04: Blood B1 received.\n\n2022-07: Block 1.1 (pelvic mass from 2022-03) received. 1.1 & B1 DNA sent for urgent WES.\n\n2022-08: Sections from Jan 2010 (2nd recurrence) pelvic mass received (Block 2A)\n\n---------------------------------------------------------------------------\nDiagnosed 1999.\nMelanoma diagnosed 2017.";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "04/07/2022: 1999 sample requested from RWH pathology; 2022 sample requested from PMCC pathology (Devindee)\n07/02/2022: 2022 sample block received from PMCC pathology by Devindee. \n28/07/2022: 2009 sample requested from RWH pathology by Devindee. (unavailable at RWH)\n02/08/2022: 2009 sample requested from MH pathology by Devindee. \n08/08/2022: 2009 sample slides received from MH pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01508";
    predictNeoantigens = true;
  }
