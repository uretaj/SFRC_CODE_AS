with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "KJ/8J/SHA256E-s27162301497--243b947699c846050010baa2762d3c3dc622dac0fb84eabb170d18bf4c055619.gz/SHA256E-s27162301497--243b947699c846050010baa2762d3c3dc622dac0fb84eabb170d18bf4c055619.gz";
      r2 = "49/0w/SHA256E-s27101737074--c63f9827b542ffd77ae91252a565010287dea7c4b5a4e91243b2e38165222bd0.gz/SHA256E-s27101737074--c63f9827b542ffd77ae91252a565010287dea7c4b5a4e91243b2e38165222bd0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vz/Wg/SHA256E-s5124980087--65d4efa3998d7f4c89d917d857e192fcfee6452a21850be87bfc0ef0bf5162db.gz/SHA256E-s5124980087--65d4efa3998d7f4c89d917d857e192fcfee6452a21850be87bfc0ef0bf5162db.gz";
      r2 = "mQ/2V/SHA256E-s5238695943--41cb9239076ad4e029663f18c0b67c71756056b2b1d9f051766b32fa4cd3d219.gz/SHA256E-s5238695943--41cb9239076ad4e029663f18c0b67c71756056b2b1d9f051766b32fa4cd3d219.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 30.03.2023\nDiscussed WES report:\n-gBRAF and sSPOP are VUS according to TSO500 report, while CCDC6 is not on the panel (seen in endometrial cancers). TSO500 on sample collected before radiation, WES report on recurrence (after radiation). \n-FBXW7 is on the TSO500 list. Is recurrent in HGSEC and endometrial clear cell carcinoma. \n-Unsure if patient will be sensitive to PARPi. \n-CN plot looks HRD: \"not clearly not HRD\" - Matt \n\nClare's Meeting 19.09.2022\n-Plan: ask Damien and Matt about the BRAF  \n mutation (send report). \n-WGS done? CODEC participant? Ask Rachel \n Delahunty (Briony/Mandy to ask) \n-Mandy to get updated EPIC note \n-Do WES on block 1E";
      d_case_summary = "Endometrial cancer - FIGO Stage IA - Unsigned";
      date_consented = "2022-06-29";
      tumour_type = "Clear cell gynae other";
      tumour_details = "Clear cell endometrial carcinoma, high grade";
      case_details = "71F\n\n2020-09: Dx Stage 1A clear cell endometrial cancer\nIHC positive: Ber-EP4, Pax8, Napsin-A (cytoplasmic)\nIHC negative: ER, PR, WT-1\np53: wild type\npMMR\n\n2020-11: Surgery: TLH/BSO/PLND\n\n2020-12: Radiation: HDR vaginal vault brachytherapy x3 fractions.\n\n2021-07: MoST TSO500 report (tissue collected 2020-06)\n-CREBBP inactivating variant (p.R1446C, c.4336C>T)\n-SPOP and BRAF variants detected. \n\n2022-06: Recurrence, widespread metastatic disease in omentum. \nSurgery: lapraroscopy and omental biopsy (Block 1E)\nIHC positive: CK7, PAX8, Napsin-A\nIHC negative: ER, PR \n\n2022-08: Sections from Block 1E (omentum from 2022-06 biopsy) received. Blood B1 received.\n\n2022-08: MoST Circuit (PMC73235)\nipilimumab, nivolumab \n\n2022-11: DNA from B1 and Block 1E sent for WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "28/07/2022: June 2022 sample requested from RWH pathology by Devindee.\n26/08/2022: 2022 sample slides received from RWH pathology by Devindee";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01622";
    capture = CREv2;
  }
