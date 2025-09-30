with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "z4/Jg/SHA256E-s53739017087--50d44e83bdc76f6b213e3258eb04dba767232b80e6dbcd043882c5ad9b768c49.gz/SHA256E-s53739017087--50d44e83bdc76f6b213e3258eb04dba767232b80e6dbcd043882c5ad9b768c49.gz";
      r2 = "wj/wk/SHA256E-s55878674447--345340c325c1389265c732d0b122d73c5fa400578f064fcf3ccab2a7509e2471.gz/SHA256E-s55878674447--345340c325c1389265c732d0b122d73c5fa400578f064fcf3ccab2a7509e2471.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "j5/8g/SHA256E-s95747254481--428415a74f8d1ac6df607acaba278a78bfb671f96ea73824810f230532b615de.gz/SHA256E-s95747254481--428415a74f8d1ac6df607acaba278a78bfb671f96ea73824810f230532b615de.gz";
      r2 = "9Z/99/SHA256E-s98867308442--72a1f8aa521c2ef67dcbfa18e5a69fdf1473d32fd11eb250325e320c5a3bc8c2.gz/SHA256E-s98867308442--72a1f8aa521c2ef67dcbfa18e5a69fdf1473d32fd11eb250325e320c5a3bc8c2.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "8V/pV/SHA256E-s5943828471--9e13c7b9372a137563fc9e9452bad85c280b6dd52663a97575fb7564dc42bbf9.gz/SHA256E-s5943828471--9e13c7b9372a137563fc9e9452bad85c280b6dd52663a97575fb7564dc42bbf9.gz";
      r2 = "qf/xQ/SHA256E-s5770882084--da8c57d9a2d97932706a6de1f14b6c14e0bd47b64bc42c9278cd9eaf40f9f103.gz/SHA256E-s5770882084--da8c57d9a2d97932706a6de1f14b6c14e0bd47b64bc42c9278cd9eaf40f9f103.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      sophia_report = "SFRC01460_SOPHiAHRDReport_23Sep2023_Redacted.pdf";
      meeting_discussions_follow_up = "quick Clare meeting 20.07.2022\nS1 tissue is 30-40% tumour. Send SF tissue for WGS now.\n\nEmail from Clare 23.06.2022\nPatient having a total mastectomy July 8th. We will collect for WGS for the patient - under SF, and would like to inform her breast cancer treatment if we can. Francois Vaillant/Elliot Surgenor from breast cancer lab to make a PDX from tissue. \n\nClare's meeting 05.05.2022\nWES in the breast tissue, but still waiting to sort out the ovarian WES. \nRatana to send the breast sections for TSO500\nKas to send ovarian block DNA - methylation \n\nClare's meeting 10.03.2022\nBriony to tell Devindee to get block from the breast sample (02-2022) and do WES on that (getting ovarian already) \n\nBROCA meeting 18.02.2022\nOrganise WES and BROCA in block 1.1\n\nEmail from Clare 21.12.21\nthis women had HGSOC BRIP1 mutant.\nshe was part of our Myriad project\nwe received her result and it was HRD negative\nBriony will have the result to deidentify, Warren.\nWarren, could you please recall her block now that Myriad have finished with it - also Petermac might need it - but see if you can get some sections - so that we can do CYCLIN E IHC please and also run WES?\nI would like the CYCLIN E IHC asap";
      myriad_report = "SFRC01460_MyriadResult_6Dec21_Redacted.pdf";
      blood_recall_history = "B2 \n21Feb23 - VM left";
      date_of_death = "01/2024";
      d_case_summary = "ypT3c, pN0, cM0 (Stage IIIC) High grade serous ovarian carcinoma\nBRCA pending";
      date_consented = "2021-09-15";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, gBRIP1  Breast carcinoma also  Myriad HRD negative (HR proficient) not having PARPi treatment";
      case_details = "67 years old female, BRCA1/2 WT, gBRIP1 mutation  \n\n2021-06:\t Diagnosed FIGO stage IIIC HGSOC\n-Surgery: abdominal hysterectomy, debulking, BSO. \n Ovarian carcinoma fixed and blocked (Block 1.1) \n-ER weak to moderately positive (90%)\n-PR weakly positive\n-p53 strong positive\n-Myriad HRD status: negative, GIS score of 39.\n BRCA1/2 status: negative for clinically significant \n mutation.\n-IHC on right colon:\n  -Positive: P53, CK7, PAX8, WT1, ER & PR weakly \n   positive  \n  -Negative: CDX2, CK20, Napsin A \n-IHC on ascites:\n -Positive: CK7, PAX8, wT1, P53 (strong, diffuse \n  reactivity), ER (+2 intensity in ~70% tumour nuclei)  \n -Negative: CK20 and P16  \n-CCNE IHC: Moderate to strong, (+2/+3) nuclear and cytoplasmic positivity in approximately 70% tumour cells) \n\n2021-07:\tcarbo/pacli x6, (changed to single agent carbo because of toxicity)  \n\n2021-10:\tBlood B1 received \n\n2021-12: Completed 6x cycles of carboplatin\n\n2022-01: Sections from Block 1.1 (Ovarian carcinoma) received.\n\n2022-02: \n-Possibility of breast cancer, awaiting appointment with breast specialist.\n-Biopsy block being recalled (Block A1)\n-B1 and 1.1 (ovarian) DNA sent for WES\n -Germline SMARC1 and BRIP1\n -Somatic TP53, BRIP1, MSH6\n  **note: Maybe recommend MMR IHC\n\n2022-03: Invasive breast carcinoma diagnosis.\nIHC: \n-oestrogen receptor--positive strong, >90%\n-progesterone receptor--positive strong 70%\n-Her2 negative\n-Ki67 20%\n\n2022-04: Sections from Block A1 (breast biopsy) received\n\n2022-05: Block 1.1 (ovarian) DNA sent for methylation: BRCA1 and RAD51C not detected.\n\n2022-06: Block 1.1 (ovarian) DNA sent for BROCA and Block A1 (breast biopsy) sent for TSO500\n\n2022-07: Total successful mastectomy. Massive multi focal tumour. Locally very aggressive and resistant to chemo and hormones but does not appear to have metastasised. \n-Fresh tumour S1 received and processed in the lab.";
      brca_report = "SFRC01460_BRCA_21Sep2021_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 39";
      fcc_report = "SFRC01460_FCPanel_BRIP1CONFRIMED_18Nov2021_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "01/04/2022: March 2022 sample requested from Melbourne Health Pathology by Devindee. \n14/04/2022: March 2022 slides received from MH pathology by Devindee. \n\nBlock not recalled as will be recalled for Myriad program";
      mp_subgroup_sfrcp4_new_id = "2 Primary Breast Ovary only";
      patient_germline_mutations = "BRIP1";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01460";
    predictNeoantigens = true;
  }
