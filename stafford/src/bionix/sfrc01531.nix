with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mM/Qm/SHA256E-s5422568578--c2931262b84ecfd419e7387676daeab878a5eb2d2b0f83ad293127b40ea8bbc0.gz/SHA256E-s5422568578--c2931262b84ecfd419e7387676daeab878a5eb2d2b0f83ad293127b40ea8bbc0.gz";
      r2 = "14/9Z/SHA256E-s5728536973--89a94154ca79ce8585b14715ff7657c91a39a213a8d4b7344448ac403f9f775c.gz/SHA256E-s5728536973--89a94154ca79ce8585b14715ff7657c91a39a213a8d4b7344448ac403f9f775c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2k/Wz/SHA256E-s22424016127--1b566e2ec3b460d5bdf9eca68d82492a32211a7abe11b90d880e64a41ea61310.gz/SHA256E-s22424016127--1b566e2ec3b460d5bdf9eca68d82492a32211a7abe11b90d880e64a41ea61310.gz";
      r2 = "F2/F9/SHA256E-s23584859922--5b779dacdee8ec83660b7d61bdfc65544d00df06eb6efea46c90ca6ef5e877d2.gz/SHA256E-s23584859922--5b779dacdee8ec83660b7d61bdfc65544d00df06eb6efea46c90ca6ef5e877d2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Whatsapp message from Clare 05.09.2023\nPlease do C-MYC IHC at Peter Mac. WES showed CN 20.\n\nRC Meeting 17.11.2022\nDiscussed WES report:\nLow purity of sample\nCNV is not great, MYC CN 20 might not be amplified\nCheck if Pol1 trial is re-opening - MYC CN 20\nIssue report, urgent: MYC CN 20\n\nClare's meeting 05.05.2022\nContinue with plan to send OCT for extra depth WES, FFPE too low.\n\nRC meeting 21.04.2022\nTumour quality on OCT slides too low for WGS. Do extra depth WES \n\nGAMUT study - Kylie Gorringe has reported this patient is in GAMuT. ";
      d_case_summary = "Ovarian Stage IIB G 2 Mucinous adenoCa";
      date_consented = "2022-02-18";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Ovarian Stage 11B G 2 Mucinous adenoCa";
      case_details = "51yo woman \n\n2021-07: Diagnosed with stage 11B G 2 Mucinous adenocarcinoma (intestinal type). \n\nSurgery:  TAH/BSO, debulking surgery (infracolic omentectomy and bipsies). Tissue-S1 taken and snap frozen. Tissue 1F of Mucinous ovarian adenocarcinoma fixed and blocked.\n\nIHC Positive: CK20, CDX2, CK7 (patchy)\nIHC Negative: ER, PAX8 \npMMR\n\n2021-09: Chemotherapy: Carboplatin/paclitaxel x6 cycles.\n\n2022-02: Blood-B1 received. \n\n2022-03: Snap frozen tissue-S1received. FFPE slides from Block 1F received.\n\n2022-08: S1 and B1 DNA sent for WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "11/03/2022: July 2021 sample requested from RWH pathology by Devindee. \n23/03/2022: July 2021 sample slides received from RWH pathology by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01531";
  }
