with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Z7/XF/SHA256E-s40043162835--8adbcfb0071e68a23cd1b38faaefb6e2e4b24f002abc41925a5ae0c39fc9a434.gz/SHA256E-s40043162835--8adbcfb0071e68a23cd1b38faaefb6e2e4b24f002abc41925a5ae0c39fc9a434.gz";
      r2 = "ZW/7v/SHA256E-s42677595265--d273bbd4a34ade624c0d802982a43b490c861092c2d16da15c13e0edad53eb48.gz/SHA256E-s42677595265--d273bbd4a34ade624c0d802982a43b490c861092c2d16da15c13e0edad53eb48.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "wp/00/SHA256E-s94100738779--c44c7edd04a2def0dc8b379a3758683d1c8fc8e0ce7c0edc0e9321395237d683.gz/SHA256E-s94100738779--c44c7edd04a2def0dc8b379a3758683d1c8fc8e0ce7c0edc0e9321395237d683.gz";
      r2 = "XK/7v/SHA256E-s99923789394--1ec3b6e3987fbb11ab56a5dbf37a063105326666b0623e4bd68b68b43c3cb58d.gz/SHA256E-s99923789394--1ec3b6e3987fbb11ab56a5dbf37a063105326666b0623e4bd68b68b43c3cb58d.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "zq/qK/SHA256E-s5561241001--1f9c769f18b55e0a74954d8e6f3bbccb6891496a44652f75b2a1e49f8e499d9f.gz/SHA256E-s5561241001--1f9c769f18b55e0a74954d8e6f3bbccb6891496a44652f75b2a1e49f8e499d9f.gz";
      r2 = "8K/XP/SHA256E-s5632617379--af7ba0513527ff3db959676a14044bf7f542168ed576fd63ab0e436edddfea35.gz/SHA256E-s5632617379--af7ba0513527ff3db959676a14044bf7f542168ed576fd63ab0e436edddfea35.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "2023.09.26\nGayanie's review on second OCT block: No tumour \n\nClare sample meeting 2023.09.21\nHER2 not amplified (ISH), IHC weak 2+ \nS2 sent for WGS (May 22), it failed \nNew S3 - no tumour - so make a new OCT block \nRecall FFPE blocks from previous surgery (May 22) - Haris. \n\nRC Meeting 27.10.2022\nDiscussed WGS report (Grimmond and SFRC), compared with TSO500.\nSig3 might be real & driven by HPV - HPV tumour.  \nCDKN2A absence in WGS not a conflicting result - due to poor quality - TSO result is valid.\nHER2 IHC normal.\nLow TMB. \nNF1 LOF.\nCDKN2A MT - affects p16, not p14. 18% GAS. MOST 10 (palbo + avelumab) \nTP53.\n\nClare's Meeting 30.05.2022\nS2: Non-urgent WGS. Have time to dissect (have TSO500 already). If not good, can do WES later. RL to do after time off. \n\nRC Meeting 17.02.2022\nJust keep OCT sample for future. Patient has a good outcome from the TSO500 (FFPE sample), so no need to extract DNA for another TSO500.\n\nClare's meeting 10.02.2022\nFresh tissue S1: DNA for TSO500 (just for anything actionable)\n**Did not realise TSO500 had already been done.\n\nRC meeting 03.02.2022\nDiscussed TSO500 report. \nHER2 not amplified.\nReport to be forwarded.\n\n20.12.2021\nBriony email to Amandine: regarding Her 2 status:Trisha said she was going to get RWH path to do it, but I haven't heard back from her about it and I cant see anything on EPIC. I have asked her again and will let you know-- Her2 ISH report now attached to redcap= non amplified\n\n06Dec- Clinician informed us patient is progressing, please report out TSO500 result ASAP. Briony\n\nRC Meeting 25.11.2021\nBlock review - small areas of tumour. Extract DNA and RNA and send for TSO500. Need to check with Trisha about HER2 results. \n\nCorrespondance with Clare and Warren November 2021\n Block 3: do the HER2 ISH through Prue Allan at Petermac, PD1 and MMRd staining.";
      d_case_summary = "HPV adenocarinoma gastric type of cervical tumour";
      date_consented = "2021-10-29";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "HPV-independent adenocarcinoma of cervix, gastric type";
      case_details = "2021-09: \tendometrial, cervical and peritoneal biopsies \n\nIHC negative: P16, ER, vimentin \n\nIHC positive: CK7, CK20, CEA \nHer2 IHC: weakly positive\nHer2 ISH: not amplified \n\nDiagnosis cervical mucinous adenocarcinoma \n\n \n2021-10:\tWas planned for hysterectomy, but cancer has spread and surgery is not an option anymore.  \nTreatment: Carboplatin/paclitaxel ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2021 block received by Warren from ACL 16/11/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01478";
  }
