with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "35/z6/SHA256E-s15081968740--4e5a8287417b8b6ba3fbce584baa929a6102ec17ca8eec27233f2fe14e1ca80e.gz/SHA256E-s15081968740--4e5a8287417b8b6ba3fbce584baa929a6102ec17ca8eec27233f2fe14e1ca80e.gz";
      r2 = "Xf/MP/SHA256E-s15440651567--a24290f0c657ae4f05e9d33aa92b3f22deaece3f5041b49808d60a349e813ec7.gz/SHA256E-s15440651567--a24290f0c657ae4f05e9d33aa92b3f22deaece3f5041b49808d60a349e813ec7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gW/GW/SHA256E-s5390045295--26e0791cd4b3a45321f21607f3531a20355b9ab80307473dfa2c9a748eb5cef1.gz/SHA256E-s5390045295--26e0791cd4b3a45321f21607f3531a20355b9ab80307473dfa2c9a748eb5cef1.gz";
      r2 = "15/f3/SHA256E-s5575963997--f67b45c670ea4d6783129f7ed74d912d2d3000521a5e319c7e559647bf391c55.gz/SHA256E-s5575963997--f67b45c670ea4d6783129f7ed74d912d2d3000521a5e319c7e559647bf391c55.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 17.11.2022\nDiscussed WES report:\nNothing reportable. Nothing to lead to the presence of Sig6. \nNo real LMS/uLMS markers seen.\nIssue report, low priority. \nPut the non-uLMS cases together, and ask Gen if other LMS cases (uterus or pelvis) are in the uLMS project. \n\nClare's meeting 05.05.2022\nExtract FFPE 2D for WES when blood arrives";
      d_case_summary = "cervical LMS";
      date_consented = "2022-02-26";
      tumour_type = "Cervical other";
      tumour_details = "HG cervical LMS <5cm, up to 10 mitoses/HPF, completely excised  ER/PR/Ki67/BRCA pending";
      case_details = "40F\n\n2022-01: Dx Leiomyosarcoma of cervix\nIHC positive: desmin, SMA, H-caldesmon.\nIHC negative: AE1/AE3, S100\nPatchy non-specific staining for CD10\n\n2022-02: Surgery: TLH, B/L salpingectomy / (L) oophroectomy / omentectomy / (R) pelvic LND (7 nodes). Cervical mass tissue 2D fixed and blocked.\n\n2022-03: FFPE Block 2D received.\n\n2022-03: Radiation (50.4Gy / 28# )\n\n2022-05: Blood B1 received\n\n2022-08: Block 2D and Blood B1 DNA sent for WES\n\n2023-02: PET - no evidence of disease";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "15/03/2022: Jan 2022 sample requested from Melbourne Pathology by Devindee. \n23/03/2022: Jan 2022 sample slides received from Melbourne Pathology by Devindee. \n07/11/2022: Jan 2022 block requested from Melbourne pathology by Devindee for uLMS project.\n21/11/2022: 2022 block received.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "Pending";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01533";
  }
