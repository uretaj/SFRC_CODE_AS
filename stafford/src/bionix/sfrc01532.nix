with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        gridss.collectMetrics = def gridss.collectMetrics {
          walltime = "48:00:00";
        };
        gridss.assemble = def gridss.assemble {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jv/Wz/SHA256E-s46243852866--6b6497189877bdb102633dc320cf3c600350b1eba7688a6d27c08985f01c584b.gz/SHA256E-s46243852866--6b6497189877bdb102633dc320cf3c600350b1eba7688a6d27c08985f01c584b.gz";
      r2 = "wk/k3/SHA256E-s48754451153--30abacfb8c0e92e9eaadafd29e4c47bbe275af8787125114cffbba1cbf43be5d.gz/SHA256E-s48754451153--30abacfb8c0e92e9eaadafd29e4c47bbe275af8787125114cffbba1cbf43be5d.gz";
    }
    {
      site = "Org60-T";
      class = "tumours";
      pdx = false;
      r1 = "Z8/m3/SHA256E-s118457351287--d8a3e6fd9bef08d67c287481bec3e4bf8046198466f50e39a8a15c71fc0bf574.gz/SHA256E-s118457351287--d8a3e6fd9bef08d67c287481bec3e4bf8046198466f50e39a8a15c71fc0bf574.gz";
      r2 = "57/zv/SHA256E-s123736898741--fde79c444040c34919403294dd66aa855732e339518c2af5ad0e8529601ef427.gz/SHA256E-s123736898741--fde79c444040c34919403294dd66aa855732e339518c2af5ad0e8529601ef427.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC Meeting 21.07.2022\nDiscussed WGS report (Grimmond and SFRC).\nFrom Damien: \nInactivation of BLM -?HRD related (1 of 2 genes), tumour is HR-proficient  \nNTRK3 rearrangements - no WTS, so orthogonal testing recommended \n - unlikely with KRAS MT \n - Owen Prall: recommend RNA seq, pan-TRK immuno low sensitivity, PMCC: OPA test is cheapest \n - Gorringe lab may be able to do the validation (RD will follow-up) \nEmail from Kylie: \nLooks like classic MOC. Can do RNAseq on the organoids. \nYes agree most likely HR proficient. \nDiscussion: \nThe SFRC report still not detecting TP53 (which is in Grimond report). Is being filtered out, needs to be addressed. \nNo other findings of note. \n\nClare's meeting 05.05.2022\nGen to send germline DNA to Kylie, she submits FFPE DNA for WGS (Clare talking to Sean about splitting costs). Ask Kylie if DNA from this FFPE sample is wanted for WES? Or pictures and info about this block (plus the others when they're ready). The most invasive sample (Nov sample) might be better for WGS. Kylie to decide. \n\nEmail from Gen 16.03.2022\nThis is a mucinous ovarian cancer sample - fresh tissue went to Kylie Gorringe's lab and they are growing some cells. No fresh tissue but we are getting the FFPE in (Kylie's lab tried OCT with their fresh tissue but lots of freezing artifact).\nShould get blood 17.03.22. \nFFPE coming.\n \n";
      date_of_death = "09/2022";
      d_case_summary = "Mucinous ovarian carcinoma FIGO Stage IVB, PAX8  .";
      date_consented = "2022-02-16";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Ovarian mucinous carcinoma";
      case_details = "28yo woman\n\n2021-02: Laparoscopic right ovarian cystectomy - \nHistology: right ovarian cyst 11.02.21: 70mm borderline mucinous tumour with microinvasion (microinvasion focus measures 1mm)\nLeft abdominal wall mass, core biopsy\nIHC positive: PAX8, cytokeratin 7, p53, MUC5AC\nIHC negative: WT1, PR, ER, cytokeratin 20, TTF-1, Napsin A, CDX-2, MUC2, SATB2, p16\n\nRight ovarian cyst\nPositive: cytokeratin AE1/AE3, PAX8, \nNegative: WT1, ER, PR\nretained expression of MMR proteins MLH1, PSM2, MSH2, MSH6\n\nFTA for follow-up & completion right salpingo-oophorectomy\n\n2021-11: Diagnosis of adenocarcinoma, immunoprofile in keeping with ovarian mucinous carcinoma\n- CT C/A/P: Large pelvic complex cystic masses, suspect recurrent or residual ovarian neoplasia\n- An enhancing mass in the left anterolateral abdominal was, suspicious for a metastasis - Suspicion of lower uterine/cervical mass\n- Probably hepatic cyst\n\nTissue from left abdominal wall mass (block 1.1b) fixed and blocked.\n\n2021-12: Gynae US 03.12.21: Large left ovarian malignancy. Right sided ovary has 2 cysts. High grade disease with rapid progression. For CRS + HIPEC. \nSurgery: Laparotomy, ureteric catheters, cytoreduction, BSO, excision left abdominal wall mass, omentectomy, resection of rectal disk, debulking, HIPEC. Cytoreduction Surgery, Hyperthermic Intraperitoneal Chemotherapy, and Insertion Of Ureteric Stent - Bilateral.\n\nTissue from left ovary (1.1) fixed and blocked.\n\nIHC positive: \nStrong: CK7, MUC5AC, P53,\nWeak: PAX8, CK20, CDX12\n\nIHC negative: SATB2, MUC2, WT1, Napsin A, ER, PR, P16\n\nIHC normal staining of MMR proteins: MSH6, MSH2, PMS2, MLH1\n\n2022-01: Cancer Staged\nStaging form: Ovary, Fallopian Tube, and Primary Peritoneal Carcinoma, AJCC 8th Edition\n- Clinical: FIGO Stage IVB (cT3c)\nIHC: ER and PR negative\n\nTissue from right ovary (1.1a) fixed and blocked.\n\n2022-03: Blood B1 received\n\n2022-04: left ovarian tissue from block 1.1 received\nright ovarian tissue from block 1.1a received\nleft abdominal wall mass from block 1.1b received.\n";
      myriad_submission = "";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "18/03/2022: Dec 2021 sample requested from PMC pathology by Devindee. \n01/04/2022: Feb and Nov 2021 samples requested from Austin pathology by Devindee.\n06/04/2022: Dec 2021 block received from PMC pathology by Devindee.  \n14/04/2022: Feb and Nov 2021 slides received from Austin pathology by Devindee. ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01532";
  }
