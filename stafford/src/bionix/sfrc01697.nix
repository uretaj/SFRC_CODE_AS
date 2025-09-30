with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "3f/jf/SHA256E-s5190615277--a71fd63a3b831037f004b460e267148f431dd66d415efd9b376af09faa4264de.gz/SHA256E-s5190615277--a71fd63a3b831037f004b460e267148f431dd66d415efd9b376af09faa4264de.gz";
      r2 = "qQ/Q6/SHA256E-s5175646611--457e4f2a5dce7bf0a7215d4ff761b51b9b0f0f4582a800211f20f8ff02aea33d.gz/SHA256E-s5175646611--457e4f2a5dce7bf0a7215d4ff761b51b9b0f0f4582a800211f20f8ff02aea33d.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "fJ/6W/SHA256E-s5299974133--adc1d2c36746862078e838db63c5aebf9e8bc15d4f88be0d00d4d33aee28e73b.gz/SHA256E-s5299974133--adc1d2c36746862078e838db63c5aebf9e8bc15d4f88be0d00d4d33aee28e73b.gz";
      r2 = "zG/5j/SHA256E-s5294004998--1ecd6e3961508a0e7cff6ac1627139db5355192c2aa2ae841b1c04c012101283.gz/SHA256E-s5294004998--1ecd6e3961508a0e7cff6ac1627139db5355192c2aa2ae841b1c04c012101283.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kw/P7/SHA256E-s1184753044--1282d6d27562010c1f84e59c663defa7e459466148ce0d04fe2d90f943d56472.gz/SHA256E-s1184753044--1282d6d27562010c1f84e59c663defa7e459466148ce0d04fe2d90f943d56472.gz";
      r2 = "Qm/p0/SHA256E-s1220726881--d89f873064a99ad098b04c3fb693e937c0ca5bc77898ddc7581e9759b5a3ff8d.gz/SHA256E-s1220726881--d89f873064a99ad098b04c3fb693e937c0ca5bc77898ddc7581e9759b5a3ff8d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7q/JK/SHA256E-s1220441830--64a74d40821025661e803edf2ff132b53c9f491d1a8ead24d4d8c2dd52ece58b.gz/SHA256E-s1220441830--64a74d40821025661e803edf2ff132b53c9f491d1a8ead24d4d8c2dd52ece58b.gz";
      r2 = "zx/v1/SHA256E-s1258878920--85f8d4d09850a64f51eaca347d441056c8f82288ef037f2d73c434065a26ecc5.gz/SHA256E-s1258878920--85f8d4d09850a64f51eaca347d441056c8f82288ef037f2d73c434065a26ecc5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 19.10.2023\nTWIST WES on FFPE Block 1.1\nDiscussion Comments:\n- HRD \n- Methylation testing case, due to BRCA1 LOH - Kas. BRCA1 LOH could be cause therefore need to test for methylation. \n\nClare's Meeting 20.04.2023\nReviewed FFPE Block 1.1\nGet blood, so we can do WES. \nMight get onto EPOCH if relapses. ";
      date_of_death = "10/2023";
      d_case_summary = "Metastatic carsinosarcoma of the uterus\nNot eligible for EPOCH due to prior Pembrolizumab (As per Sumi's notes)";
      date_consented = "2023-01-20";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "carcinosarcoma of the uterus";
      case_details = "2022-07: Omental biopsy \n\n2022-07: endometrial primary curetting, FFPE Block 1.1 received  \nIHC positive: P53 (mutation type), P16 (diffuse nuclear and cytoplasmic staining), AE1/AE3 (10-\t20% of tumour cells), PAX8, WT1, CK7 (focal) \nIHC negative: Desmin, Myoglobin, HER2, GATA3, CDX 2 301, TTF-1 and Napsin A. \nER:40%, PR 0% \n\n????? Commenced carboplatin and Paclitaxel, stopped at C3. \nPost C6, stable disease \n\n2022-10: Commenced Provera \nMMR normal retained staining ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "30Mar2023: not enough tissue in 01Jul2022 block, no samples to be sent. \n07Mar23: 11Jul22 sample requested from Austin pathology by Monica \n07Mar23: 01Jul22 sample requested from Dorevitch pathology by Monica \n07Mar23: 11Jul22 sample received from Austin pathology by Monica ";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01697";
  }
