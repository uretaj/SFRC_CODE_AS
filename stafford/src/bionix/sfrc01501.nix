with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "PQ/Vv/SHA256E-s19436483667--0a1ba267311b52a5e0e65e13625785172461db3b895aefb44097b0d6dcfef272.gz/SHA256E-s19436483667--0a1ba267311b52a5e0e65e13625785172461db3b895aefb44097b0d6dcfef272.gz";
      r2 = "Qg/03/SHA256E-s19486743027--9e221c9e00779ed7abf3b12c939dad55c43b9712f26cf3acaf9c7c44fce4b3c4.gz/SHA256E-s19486743027--9e221c9e00779ed7abf3b12c939dad55c43b9712f26cf3acaf9c7c44fce4b3c4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Gq/9P/SHA256E-s5576343103--600dfd173d0962834427c7f446aa09c9c4ab875d8f43fe01473f0493b8cdf170.gz/SHA256E-s5576343103--600dfd173d0962834427c7f446aa09c9c4ab875d8f43fe01473f0493b8cdf170.gz";
      r2 = "Wk/Kg/SHA256E-s5774289121--8eb7609d37bb4723037b75b3e88769655ef6d0324161dcbc8da1766b2b2316d5.gz/SHA256E-s5774289121--8eb7609d37bb4723037b75b3e88769655ef6d0324161dcbc8da1766b2b2316d5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0066";
      meeting_discussions_follow_up = "RC Meeting 20.04.2023\nDiscussed WES report:\n-Germline RAD51D - not a driver but is reportable and worth investigating \n-Somatic TP53, TGFBR2 to be reported \n-No LOH event happening \n-Clare to look into gRAD51D (to email Linda & Briony). To revisit when we get BRCA report. \n\nClare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block 2C (Check with Asha location and amount of DNA first).\n\nClare's Meeting 14.07.2022\n-FFPE block 2C (para tubal tissue) is post-NACT. Send for deep WES and nanostring.\n-Cass to talk to Gayanie re. sourcing SOLACE 2 tissue\n-***For Asha HGSOC set for OPAL panel. May need to get WES via SOLACE2 protocol*** --Asha will extract DNA from this tissue for SOLACE2";
      myriad_report = "SFRC01501_MyriadResult_03Nov2022_69_Redacted.pdf";
      d_case_summary = "04/09/2018 High grade serous ovarian carcinoma, super-responder on SOLACE2";
      date_consented = "2021-12-16";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "65yo woman\n\n2018-09: Diagnosed HGSOC\n\n2018-10: Treatment: Carboplatin/Paclitaxel, 6 cycles completed 2019-01\n\n2019-01: Surgery: labaroscopic debulking, BSO, TAH, omentectomy, adhesiolysis, oversew serosa transverse colon.\n-Histopath: left fallopian tube has a focal p53 signature, but no definite intraepithelial carcinoma is seen.\n-para tubal tissue containing possible tumour nodule fixed and blocked (block 2C)\n\n2020-09: Started SOLACE2 trial ('SOLACE2 0066?' in RedCap). Super-responder.\n\n2022-06: Sections from Block 2C (TAH Jan 2019) received.\n\n**Awaiting blood.\n";
      brca_report = "SFRC01501_BRCAPanel_5Nov2018_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 69";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "20/05/2022: Jan 2019 tissue requested from RWH pathology by Devindee. \n22/06/2022: Jan 2019 slides received from RWH pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01501";
    capture = CREv2;
  }
