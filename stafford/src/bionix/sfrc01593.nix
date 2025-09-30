with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "20/KF/SHA256E-s41595106897--e7477e6220a60b3c2b3bf6cec60d7ccb500885f7f71b301bf81ee1fb7142340c.gz/SHA256E-s41595106897--e7477e6220a60b3c2b3bf6cec60d7ccb500885f7f71b301bf81ee1fb7142340c.gz";
      r2 = "JV/ff/SHA256E-s44202744666--d9402f5704b12a4a95f2831fa570f495a1b3058ca59a64680a8086778870e096.gz/SHA256E-s44202744666--d9402f5704b12a4a95f2831fa570f495a1b3058ca59a64680a8086778870e096.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "05/x1/SHA256E-s87279559387--1c928a4c67892c331cb05fb5b55f7537e051ebec42bb7f32d9d7581d5182680b.gz/SHA256E-s87279559387--1c928a4c67892c331cb05fb5b55f7537e051ebec42bb7f32d9d7581d5182680b.gz";
      r2 = "2Q/WQ/SHA256E-s89633509375--92fa4c9dce3d0f2a9a0ff1d6a585b2da8a534716a977a1ad620fe913a594486a.gz/SHA256E-s89633509375--92fa4c9dce3d0f2a9a0ff1d6a585b2da8a534716a977a1ad620fe913a594486a.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "pW/kq/SHA256E-s6698790213--27cd55dc5a1c1fcd562b660782369061e418a8a5773f4ad36eb2af98bdd1c053.gz/SHA256E-s6698790213--27cd55dc5a1c1fcd562b660782369061e418a8a5773f4ad36eb2af98bdd1c053.gz";
      r2 = "mp/q3/SHA256E-s6680276248--0d4d06842e49b1d79a5ab4338059c5a9f36cd953a1b77097652bb9589e600d81.gz/SHA256E-s6680276248--0d4d06842e49b1d79a5ab4338059c5a9f36cd953a1b77097652bb9589e600d81.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 13.10.2022\nDiscussed WGS report.\nFor research LGSOC project.\nCan't do more for the patient (not well).\nClinical trial for recurrent LGSOC with Trametinib showing responses - even though by the looks of things the patients were not stratified molecularly.\n\nClare's meeting 05.08.2022\nRatana to do WGS on the S2 OCT (DNA and RNA). When we get the S2 FFPE block, cut the standard sections if there's enough tissue and send it back to PMCC.\n\nClare's Meeting 30.06.2022\nMandy/Briony to organize blood for patient.\nCut and review S2 OCT to hopefully do WGS";
      date_of_death = "10/2022";
      d_case_summary = "52yo female with FIGO stage 3C Bilateral G1 Micropapillary serous ovarian carcinoma diagnosed 23/8/2019 \n    - LGSOC. BRAF IHC negative and ER/PR positive\n    - Omental involvement/abdominal wall nodular metastatic deposits\n    - Peritoneal washings positive\n    - BRAF negative, ER 95% strongly positive, PR 30% moderately positive\n    - Baseline Ca-125 of 330 \n    - Has had significant psychosocial stressors\n    - Her Ca-125 stable until August 2020, rose from 24 to 55. \n    - Re-staged with CT Chest/Abdomen/Pelvis no clear recurrent disease, Ca-125 continues to rise 150 on 17/9/2020.";
      date_consented = "2022-06-17";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "52yo woman, FIGO Stage 3C bilateral grade 1 micropapillary serous ovarian carcinoma, ER/PR positive.\n\n2019-08: Diagnosed primary low grade serous adenocarcinoma of ovary\n-Surgery: TAH/BSO and omentectomy\n-IHC positive: ER (strong nuclear positivity in 95% tumour cells), PR (moderate to strong nuclear positivity in 30% tumour cells)\n-IHC negative: BRAF\n-p53: wild type \n-p16: mosaic \n-ki67 proliferation index: 60%\n-Commenced Adjuvant therapy with Anastrozole alone.\n-CCS - colorectal cancer somatic panel: kRAS, BRAF, nRAS, PIK3CA, PTEN, ATK1 not detected.\n\n2020-08: INOVATe panel. Nil oncogenic variants identified. HR intact (HRD score 4.3), CCNE1 copy number analysis: no gain or amplification detected.\n\n2020-10: Commenced tamoxifen for ongoing rise in CA125 & CT scan showing low volume peritoneal disease.\n\n2021-02: Further progression of disease.\n-Commenced Carboplatin/paclitaxel following rising CA125 levels. Changed to carboplatin alone after first 3 cycles due to poor tolerance of chemo doublet. Finished 2021-05.\n\n2021-06: Commenced maintenance Exemestane\n\n2021-10: Further rising CA125 levels.\n\n2021-11: Progressive symptomatic peritoneal disease on imaging. Commenced Caylex.\n\n2022-06: Patient presented for surgery. Tumour tissue from surgery from peritoneum received (S1 & S2). \n\n2022-07: Blood B1 received\n\n2022-08: S2 DNA and RNA sent for WGS.\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "08/08/2022: June 2022 sample block received from PMCC by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01593";
  }
