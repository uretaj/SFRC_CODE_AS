with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1O_1";
      class = "tumours";
      pdx = false;
      r1 = "ZQ/F4/SHA256E-s5716711911--3afcd7f83f1daa8b713c1fd78e7da6aa8360e8c76724dee90fcac9ed5dfbd78f.gz/SHA256E-s5716711911--3afcd7f83f1daa8b713c1fd78e7da6aa8360e8c76724dee90fcac9ed5dfbd78f.gz";
      r2 = "6W/mj/SHA256E-s5684818793--9109c5036adc8035a46c568567fb906c277b1780dac05cda11cabf0652875c3a.gz/SHA256E-s5684818793--9109c5036adc8035a46c568567fb906c277b1780dac05cda11cabf0652875c3a.gz";
    }
    {
      site = "1O_1";
      class = "tumours";
      pdx = false;
      r1 = "V3/ZP/SHA256E-s5931884493--189125c43b2e691989b2cf7cd225cc8a58d3e0c1c8c9196f6e9d0470914d5b0e.gz/SHA256E-s5931884493--189125c43b2e691989b2cf7cd225cc8a58d3e0c1c8c9196f6e9d0470914d5b0e.gz";
      r2 = "Mp/MW/SHA256E-s5906833245--6a0ddffd9d306f5fda454b45d64d5f930ad81191baa6c921dd9fa8727287ccb5.gz/SHA256E-s5906833245--6a0ddffd9d306f5fda454b45d64d5f930ad81191baa6c921dd9fa8727287ccb5.gz";
    }
    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "58/WJ/SHA256E-s3979394462--020c37672157e9fe30604f451773f723cdf27dd9234a3c9aaea2f0aac5413d63.gz/SHA256E-s3979394462--020c37672157e9fe30604f451773f723cdf27dd9234a3c9aaea2f0aac5413d63.gz";
      r2 = "Z3/p0/SHA256E-s4001960136--a9d33230db32a5f070404789de3bc55225e7837c082f521d34a5c323f5396df7.gz/SHA256E-s4001960136--a9d33230db32a5f070404789de3bc55225e7837c082f521d34a5c323f5396df7.gz";
    }
    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "gJ/qz/SHA256E-s4060172933--1650cfbea610b58cc184d7ec922ad856157e4b8c40a7bd3022e280ca367a5dd6.gz/SHA256E-s4060172933--1650cfbea610b58cc184d7ec922ad856157e4b8c40a7bd3022e280ca367a5dd6.gz";
      r2 = "mp/wf/SHA256E-s4086707893--f40aa10f86b85d8ea0522695def204b5b4774b23cf441389cf4e8c7b52250c4c.gz/SHA256E-s4086707893--f40aa10f86b85d8ea0522695def204b5b4774b23cf441389cf4e8c7b52250c4c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0j/vj/SHA256E-s1173550551--1ce1ee1162cf5c9c5a4dcfa41da09f9520764af8e593f15cd36e7f3e2b7ec10c.gz/SHA256E-s1173550551--1ce1ee1162cf5c9c5a4dcfa41da09f9520764af8e593f15cd36e7f3e2b7ec10c.gz";
      r2 = "65/x6/SHA256E-s1191156369--87fa29a928ef6bc68830e2be232e017914c7fdc6712005d7b9c6e98caa2c614f.gz/SHA256E-s1191156369--87fa29a928ef6bc68830e2be232e017914c7fdc6712005d7b9c6e98caa2c614f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "78/wJ/SHA256E-s1212699758--82bdc65b5407e9b0819fc72f8df6144caa1e0f7ffea8a4ffcb1fae091495482a.gz/SHA256E-s1212699758--82bdc65b5407e9b0819fc72f8df6144caa1e0f7ffea8a4ffcb1fae091495482a.gz";
      r2 = "w5/jm/SHA256E-s1233546005--c2f217e18173812cbd8825625c25d8584ed8658a1fb9a3e68212f3978517ba43.gz/SHA256E-s1233546005--c2f217e18173812cbd8825625c25d8584ed8658a1fb9a3e68212f3978517ba43.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 5.10.2023\nTWIST WES Block 1O (Called 6U in report)\nDiscussion\n- Same as TSO500, but WES found TGFBR2 and KMT2C \n- No CCNE1 amplification \n- Report: No additional findings, but there was TGFBR2\n\nClare's sample meeting 2023.09.07\nPlan: Current rising CA125.  \nAsk Kristy if this WES data is back and prioritise analysis \nClare to look into endometrial trials available. \n\nCass email 11.09.2023\nH score =150. Not very high. Is the IHC on the archival FFPE? Could be different at recurrence. But is CCNE1 useful currently - is there a trial with ZN-c3 at Peter Mac?\n\nClare's sample meeting 24.08.2023\nDiscussing Gayanie IHC review \nCyclin E: \t+3-30%, +2-20%, +1-20% \nB7H4:\t\t about 15-20%. \n\nCS - thanks - what is the H score for Cyclin E - Cass can calculate - I think 170, which is not that high \nB7H4 does not sound that good. \nHer ca125 is rising gradually on len/pem \n\nConsider TDX-d  trastuzumab deruxtecan in view of the HER2 1+ (from the diganostic report?). Have we tried HER2 IHC on any other sample to see if this is below? Could we do that? See below from the TAH BSO report from tissue collected 17/8/21: She could pay for drug. \n\n \n29.08.2023\nMonica chasing up labelling of FFPE block with the path lab, to identify which block we have received. FFPE block is now labelled SFRC01759_10 instead of SFRC01759 only, please note that FFPE DNA submitted for WES was labelled SFC01759_6U but is the same as SFRC01759_10\n\nSample meeting with Clare 20.07.2023\nPlan on FFPE block : WES Twist clinical urgent sample , BROCA (on hold)\nDoCyclin E and B7H4 IHC  ";
      d_case_summary = "65 y female. HGSEC on self-funded lenvatinib pembrolizumab pre C10 (start date 30/9/22)\nMolecular status: p53 mutated, ER/PR weak-mod pos, pMMR, HER2 1 \n- Dx in June 2021: TAH, BSO, omentectomy, washings (Warringal Private, Kenneth Gear)\n- Invasive high grade uterine serous adenocarcinoma, invading into outer half of myometrium, LVI , Omentum involved and  peritoneal washings cytology positive. FIGO stage IVB (pT1b, pNx, pM1)\n- Dec 2021: completed 8 cycles of carbo/taxol (Prof N Tebbutt, Dr George Iatropoulos, Darebin Specialist Centre)\n- Jan 2022: CMR on FDG PET\n- April 2022: PET/CT: small nodule in anterior abdominal wall, low grade avidity, non specific\n- July 2022: PET: avid omental   peritoneal nodules, R external iliac and retrocaval LAD, low volume ascites, no distant mets. CT: additonally RLL 9mm nodule (prev 7mm) may represent a met\n- Ca125 200 15.07.22\n- Commenced self funded Lenvatinib/Pembrolizumab 30th Sept 2022";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "65 years old female \n\n2021-05\tCervical biopsy, curetting \n\n2021-06:\tInitial diagnosis, TAHBSO (FFPE Block 1O),  HGSEC, stage IV. Omental metastasis, serosal disease, \t\t\tperitoneal washing positive, FFPE block received \n\t\tER and PR weak to moderate  \n\t\tIHC positive: P16, P53 mutated, WT1 \n\t\tIHC negative: Her2 (1+), MSS, vimentin \n\t\tNormal expression of DNA mismatch repair proteins \n\n\t\tCarbo/taxol C8  \n\nTSO 500 \nTMB low, MSI stable. No mutational signature \nTier IIC : ATM, (3 clinical trials) \nTier IID: PPP2R1A, TP53 (no clinical trials) \n\n2022-01\tComplete metabolic response \n\n2022-07\tProgression \n\n2022-09\tself-funded lenvatinib pembrolizumab \n\n2023-05\tBlood B1 received  \n\n2023-06: Sections from FFPE Block 1O received\n\n2023-07: Cyclin E and B7H4 IHC performed:\ncyclin E: +3-30%, +2-20%, +1-20%, H-Score 150.\nB7H4: about 15-20%. There is some normal endometrium with stronger staining. Could not see the control\n\n2023-08: 1O and B1 DNA sent for WES TWIST\n\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "23May23: Jun21 sample requested from Dorevitch by Monica\n21Jun23: Jun21 sample received from Dorevitch by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01759";
  }
