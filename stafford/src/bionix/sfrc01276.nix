with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "VK/jP/SHA256E-s38931944646--d6550f533ee99ddf365da68d4b4d4c04e0c12fd0b15cf34250e01d4f90f25406.gz/SHA256E-s38931944646--d6550f533ee99ddf365da68d4b4d4c04e0c12fd0b15cf34250e01d4f90f25406.gz";
      r2 = "16/07/SHA256E-s41667847276--15cc9288212aea75ce772605ff0b4b67a2ba1579258f1be1a2314b8ad51f25dc.gz/SHA256E-s41667847276--15cc9288212aea75ce772605ff0b4b67a2ba1579258f1be1a2314b8ad51f25dc.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "w5/q5/SHA256E-s71089628618--9b95eb81b28fc42fa4d9c879ff7eee332819d6ebb2dc75e9fc7105366c82706c.gz/SHA256E-s71089628618--9b95eb81b28fc42fa4d9c879ff7eee332819d6ebb2dc75e9fc7105366c82706c.gz";
      r2 = "fW/1K/SHA256E-s75388958327--7d0e58e40324c4b50ddd617cf27720a84d5b53f713824495299ad8b36781ac83.gz/SHA256E-s75388958327--7d0e58e40324c4b50ddd617cf27720a84d5b53f713824495299ad8b36781ac83.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "JJ/Jj/SHA256E-s5571954672--d11c59c5674714eebc87a57b302b162e35d6934481d57b81e79bf3564a3735ec.gz/SHA256E-s5571954672--d11c59c5674714eebc87a57b302b162e35d6934481d57b81e79bf3564a3735ec.gz";
      r2 = "0X/X9/SHA256E-s5509101565--9b2673d17a2106a81c0bd47e4d29245c67282d8943fe59fed03537583e34154d.gz/SHA256E-s5509101565--9b2673d17a2106a81c0bd47e4d29245c67282d8943fe59fed03537583e34154d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "RC Meeting 2021.12.16\nDiscussed WGS report.\nCOL4A5 and COL4A6 - collagen gene rearrangements, add this case to stromal project.\nPurity estimate from software (16%) is underestimate - Highest fraction of somatic mutation suggests about 40% - need to look at this case again (for analysis).\nSomatic MYCN 5' UTR mutation.\nSignature 3 highest (but predicted proficient in Sean's report). \nRearrangement on X corresponding to Collagen genes.\n\nClare's meeting 2021.06.24\nSFRC01276_S1: 95% tumour purity, WGS on snap frozen. In clinical notes: not invasive malignancy, is different to other malignant cases we have \n\nClare's meeting 2021.07.29\nSFRC01276_D, Damien to see if we could have access to more material by reviewing path reports. Want RNA to look for fusions. Ask Stephen Fox about testing for fusions \nDamien found out patient will be seeing Orla on the 3/8/2021 to discuss surgery. We should be able to get fresh tissue.\n \nMeeting with Clare 02.07.2020\nThis case to our attention because looks benign, but behaves in a malignant fashion. Send for WES (+ germline) (looking for fusion).\n\nClare discussion in the lab area 12.02.2020: \nJosh to recall a block with Stump tumour and once received and reviewed by Gayanie send for WES with germline.";
      d_case_summary = "\"Malignant\" leiomyomatosis Cervical Bx 08/2014: Smooth muscle tumour, no malignant features\n11/2019\nImaging: diffuse mass involving vulva, ut/Cx, bladder wall, (L) hydronephrosis\nBx   , incl EUA / PET guided: smooth muscle tumour w no malignant features. ER/PR , Ki67 3%\nGynae and Sarc MDM R/V: malignant by radiological criteria\nRegard as STUMP";
      date_consented = "2020-02-12";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Malignant(?) leiomyomatosis Cervical   Uterine smooth muscle tumor of uncertain malignant potential (STUMP)";
      case_details = "42 years old female \n\nProgressive pelvic leiomyomatosis, multiple breast fibroadenomas \n\n2017:  nephrectomy, recalled 3 blocks, no tumour found \n\n12-2019:  CT CAP 36/20 showed slowed PD in known disease  \n\n01-2020: perineal biopsy \n\nIHC negative: HMB45  \n\nIHC positive: smooth muscle actin, ER 80%, PR 50%, Ki67 3% \n\nWe have received a block but it was smooth muscle only.  \n\n06-2020: commence Rx goserelin   \n\nER/PR+. Ki67 <5%   \n\n08-2021: surgery, we received tissue \n-----------------------------------------------------------------------Progressive pelvic leiomyomatosis, multiple breast firboadenomas\n\nCT CAP 36/20 showed slowed PD in known disease since 12/2019\nRx goserelin commence 6/20\n42 years old. Progressive pelvic leiomyomatosis, multiple breast firboadenomas \n\nCT CAP 36/20 showed slowed PD in known disease since 12/2019 \n\nRx goserelin commence 6/20 \n\nER/PR+. Ki67 <5%  ";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01276_FCPR_11Feb2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "STUMP Tissue requested from St Vincent's by Joshua on 03/03/2020\n\nTissue received on 23/03/2020 by Joshua\n\nTissue re-requested via email on 14/07/2020 to see if any further tissue exists, a/p Clare email\n\n2017 R Nephrectomy Tissue (suspicious) recalled from Northern Health a/p Ratana email on 30092020 via fax, resent by Warren and received 2/7/21";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01276";
  }
