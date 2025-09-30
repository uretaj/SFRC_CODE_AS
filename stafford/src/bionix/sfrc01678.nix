with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "k2/7W/SHA256E-s5510213782--966c17dd3ff64aca633055a7c57d83623f085f5e86c7d98e2e849792eb41bf53.gz/SHA256E-s5510213782--966c17dd3ff64aca633055a7c57d83623f085f5e86c7d98e2e849792eb41bf53.gz";
      r2 = "3Z/J9/SHA256E-s5479768459--b90264fe3d2c209d62bd3816c90299baa8ea7c9f2db75adf62ff12d961f302ac.gz/SHA256E-s5479768459--b90264fe3d2c209d62bd3816c90299baa8ea7c9f2db75adf62ff12d961f302ac.gz";
    }
    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "1m/Wj/SHA256E-s5417392927--1a55c38d178c8742b65102ce9d623528e0d054534505d86fff54db5e5b3ea85c.gz/SHA256E-s5417392927--1a55c38d178c8742b65102ce9d623528e0d054534505d86fff54db5e5b3ea85c.gz";
      r2 = "v9/J5/SHA256E-s5417834622--e046401066f09cf271227bb7f737b7f205f3c193a208a0513a2381fbf5368796.gz/SHA256E-s5417834622--e046401066f09cf271227bb7f737b7f205f3c193a208a0513a2381fbf5368796.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2F/36/SHA256E-s4838202196--783018da875279402503067b2ec13fb9ea12025bd9ee8617bf4d2fde14f707af.gz/SHA256E-s4838202196--783018da875279402503067b2ec13fb9ea12025bd9ee8617bf4d2fde14f707af.gz";
      r2 = "84/pX/SHA256E-s4876891551--c83904fce70114fdc7c4e25fc7e52020cc1b657160f750160b98024341c1c318.gz/SHA256E-s4876891551--c83904fce70114fdc7c4e25fc7e52020cc1b657160f750160b98024341c1c318.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "x2/f7/SHA256E-s5035111254--5fa4e3239f7034493bff5372132a966f21b8c1472be4560d31c8e00c7ea0d855.gz/SHA256E-s5035111254--5fa4e3239f7034493bff5372132a966f21b8c1472be4560d31c8e00c7ea0d855.gz";
      r2 = "fQ/7J/SHA256E-s5113309366--a05bab1b9087d9a4f8f85e04e355a3a75d7f7936bb0342e8a18b0b5f721d0e55.gz/SHA256E-s5113309366--a05bab1b9087d9a4f8f85e04e355a3a75d7f7936bb0342e8a18b0b5f721d0e55.gz";
    }
    {
      site = "2E";
      class = "tumours";
      pdx = false;
      r1 = "f3/gF/SHA256E-s10322098920--8d2ec490a7f77433c1b615ee7b52f3e8f7276c742873bbd7567bc305a538edb2.gz/SHA256E-s10322098920--8d2ec490a7f77433c1b615ee7b52f3e8f7276c742873bbd7567bc305a538edb2.gz";
      r2 = "03/pf/SHA256E-s10340035138--6f6ca415d29628325625210d39098a55933618b9f0367a1f6ea06ade5926242a.gz/SHA256E-s10340035138--6f6ca415d29628325625210d39098a55933618b9f0367a1f6ea06ade5926242a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kg/gV/SHA256E-s4555090234--861b0fa61d2f8a331c1c868cef48970b4e5511742bda4cd49c6169d10d96ee1f.gz/SHA256E-s4555090234--861b0fa61d2f8a331c1c868cef48970b4e5511742bda4cd49c6169d10d96ee1f.gz";
      r2 = "z1/Q5/SHA256E-s4634862470--7a6569c9f6a5a03b5f3d5296c8717094772bcd3f54ce3679cd66beb349a10f69.gz/SHA256E-s4634862470--7a6569c9f6a5a03b5f3d5296c8717094772bcd3f54ce3679cd66beb349a10f69.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 1.2.2024 - TWIST WES Block 2E:\nNothing to report.\nDamien to issue negative report, Clare to email treating clinician urgently. Recommendation to send for fusion panel. \n\nClare's sample meeting 2023.09.21\nPlan: this new block 1A can replace ffpe bock A1 from the same surgery. Plan is for WES, we have received 5 blocks so far, one is ruled out because low tumour purity. Now which blocks should we send for WES? \nDo TWIST WES on the block with the highest tumour purity (80%) 2E only. Many blocks recalled as this was an urgent case but WES needed only on 1 single block.\n\nClare's sample meeting 2023.09.04\nPlan on FFPE block 2E and 1B: Urgent WES? \n\nCS-Yes please. What happened to the A1 sections - possibly ok but we wanted to use the most recent sample?  \n\nAC- ffpe block A1 was reviewed tumour purity 25-30% and only small areas \n\nClare's Meeting 22.12.2022\nFFPE Block A1 has small areas of tumour, 25-30% purity. Not a lot of tumour, but attempt DNA extraction to do WES. ";
      urgency_details = "As per Monica WhatsApp message ";
      d_case_summary = "- 29/2/2016 Surgery - Alfred Hospital.\n- Pathology - esthesioneuroblastoma, Hyams grade 3. Kadish C with extension through the cribriform plate\ninto the dura and there was extensive involvement of the right periorbita which resulted in a right orbital\nexenteration and flap repair. Positive margins in the superior and inferior aspect of the orbit and the dura.\n- Adjuvant RT at The Alfred under Sid Davis - 60Gy over 6 weeks with concurrent cisplatin/etoposide, 2 doses\n(start and middle),.\n - Now presents with recurrence in the parapharyngeal space and right level 1b nodal station.\n- Biopsy 28/6/22 - core from right neck.\n- Surgery Aug 2022";
      date_consented = "2022-11-02";
      tumour_type = "Other rare";
      tumour_details = "esthesioneuroblastoma, Hyams grade 3  (olfactory neuroblastoma)";
      case_details = "51M\n\n2016-02: Dx esthesioneuroblastoma, Hymas grade 3.\nSurgery: Resection\nChemoradiotherapy: 60Gy over 6 weeks with concurrent cisplatin/etoposide, 2 doses\n(start and middle).\n\n2022-06: Recurrence of olfactory neuroblastoma\nSurgery: Biopsy of metastatic pharyngeal space lesion. FFPE Block A1.\nIHC positive: synaptophysin\n\n2022-08: TSO500 - no variants reported\n\n2022-08: Surgery: Right neck dissection for met olfactory neuroblastoma. FFPE Blocks 1B and 2E.\nIHC positive: CD56, chromogranin, synaptophysin, S100 (staining of sustentacular cells)\nIHC negative: AE1/3, p63\n\n2022-10 Adjuvant radiotherapy to right neck. \n\n2022-11: Blood B1 received\n\n2022-12: Sections from FFPE Block A1 (2022-06 metastasis) received.\n\n2023-07: Most recent clinical update: NED. \n\n2023-08: FFPE Blocks 1B and 2E received.\n\n";
      patient_information_complete = "Incomplete";
      other_tumour_type = "esthesioneuroblastoma";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/11/2022: 2022 biopsy sample requested from Alfred Pathology by Devindee.\n01/12/2022: 2022 slides received. \n16Aug23: 29Feb16 Nasal sample requested from Alred by Monica\n16Aug23: 12Feb16 Nasal polyp sample requested from Cabrini pathology by Monica\n16Aug23: Jul and Aug22 samples requested from Melbourne Pathology by Monica\n22Aug23: Jul and Aug22 samples received from Melbourne Pathology by Monica\n25Aug23: 12Feb16 Nasal polyp sample received from Cabrini pathology by Monica\n18Sep23: 29Sep16 samples received from Alfred Pathology by Haris";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    name = "SFRC01678";
    capture = TwistV2HR;
  }
