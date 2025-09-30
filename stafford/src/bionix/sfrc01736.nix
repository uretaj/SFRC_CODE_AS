with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zF/1k/SHA256E-s51469407498--7a03af25ef0a64cef33b6773884d839dc375ce16df4f1bc810119eb3eb8754f1.gz/SHA256E-s51469407498--7a03af25ef0a64cef33b6773884d839dc375ce16df4f1bc810119eb3eb8754f1.gz";
      r2 = "kg/VG/SHA256E-s55078228131--324564240cfcb1658c4137f23a2d80b92aacaf9e0762bb244f95852a2668c092.gz/SHA256E-s55078228131--324564240cfcb1658c4137f23a2d80b92aacaf9e0762bb244f95852a2668c092.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "q0/W1/SHA256E-s88752608390--774620b9db1c9f6a88dca43bd61c8a06ea287f439244f939c007ca607440694c.gz/SHA256E-s88752608390--774620b9db1c9f6a88dca43bd61c8a06ea287f439244f939c007ca607440694c.gz";
      r2 = "wZ/x5/SHA256E-s94139712443--2bd7f3d3d714c654ac7dc740e7d0d5d1e7a004764407420981cfc1980c01a55b.gz/SHA256E-s94139712443--2bd7f3d3d714c654ac7dc740e7d0d5d1e7a004764407420981cfc1980c01a55b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nVery low tumour purity (says 30-40%) \nThe germline MSH2 did not look pathogenic.\nARGHEF7 case. \n\nClare Meeting 18.05.2023\nTSO had no findings. Extract DNA from OCT (small amount of 60% tumour) and send for WGS.\n\nClare's Meeting 20.04.2023\nReviewed S1 tissue: \nFFPE entirely tumour, 25%\nOCT has small volume of tumour, 60 - 70%.\nSend FFPE block for TSO500 for panel result. If no findings, can send about thinking for WGS. ";
      blood_recall_history = "Mandy's contacted 3 times and not been able to connect with them. Clare has followed up with clinician  ";
      d_case_summary = "Biphasic LGSOC\n9/2022 - FIGO stage IIIC serous ovarian cancer; 3 cycles neoadj chemo\n3/2023 - Debunking surgery, no residual bulk disease\nHistology: biphasic population, predominantly p53- (low grade) but with separate clusters of p53  cells. ER 90-95% ; PR-, HER2- ** Being treated as HGSOC\n3/2023 - Petermac germline panel";
      date_consented = "2023-03-23";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "Female, 51 yo \n\n2022-09: Initial diagnosis, Laparotomy BSO + Biopsies, FIGO Stage IIIC, \nIHC Positive: WT P53, oestrogen (+2/+3) in 70 to 80% of tumor cells, PAX8  \nIHC negative: Progesterone \nAscites have also been collected; malignant cells detected \n\n2022-10 to 2022-12: Chemotherapy C1 to C3, C4 due (likely not to proceed as per patient's preference) \n\n2022-12: MDM: Consideration for surgery with Peritonectomy unit Consideration for Arimidex \n\n2023-03: Blood B1 received. Tissue S1 from debulking surgery received \nIHC positive: CK7, P16, P53, Ki67 \nIHC negative: Her2 \nER (95%), PR (5%),  \nMLH1, MSH2, MSH6, PMS2 preservation of normal staining ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01736";
  }
