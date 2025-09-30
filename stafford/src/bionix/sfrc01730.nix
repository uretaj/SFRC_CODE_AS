with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "vK/gx/SHA256E-s2291562484--adb56748c5d4dad95a52eafdaaf46f5c5358d7d431d8e840275b0d596c757f41.gz/SHA256E-s2291562484--adb56748c5d4dad95a52eafdaaf46f5c5358d7d431d8e840275b0d596c757f41.gz";
      r2 = "QV/gf/SHA256E-s2306701902--b7155b6d28fccc58b20f7ec17f0e64e9b8ef7cad136e2348c863b43de374858e.gz/SHA256E-s2306701902--b7155b6d28fccc58b20f7ec17f0e64e9b8ef7cad136e2348c863b43de374858e.gz";
    }
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "VP/wJ/SHA256E-s2334374609--b7e8116d808dccd857c56c5f6a5e99d6745ff77ce9401293551b4ba7db9d26ed.gz/SHA256E-s2334374609--b7e8116d808dccd857c56c5f6a5e99d6745ff77ce9401293551b4ba7db9d26ed.gz";
      r2 = "GW/27/SHA256E-s2349409562--0147c2c6da093b6b9d76c9a27207d7f935dc9e2d4cb57e109cb035a16fe3d0c3.gz/SHA256E-s2349409562--0147c2c6da093b6b9d76c9a27207d7f935dc9e2d4cb57e109cb035a16fe3d0c3.gz";
    }
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "Pv/8M/SHA256E-s2528080724--629377b6b225fce5879da5842e18940ec39eff82b8d6130e4e40b56c0439460f.gz/SHA256E-s2528080724--629377b6b225fce5879da5842e18940ec39eff82b8d6130e4e40b56c0439460f.gz";
      r2 = "Fg/42/SHA256E-s2548723305--daca23e46a91dad67d1fe86e6f6bdc56541d5cc815dbcc3be54027b042ea8254.gz/SHA256E-s2548723305--daca23e46a91dad67d1fe86e6f6bdc56541d5cc815dbcc3be54027b042ea8254.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "52/4m/SHA256E-s430741630--78878850bdb67ae577fcdf045567f52ae8ec8a0b4e93e30ea2983c13a7b1dc7a.gz/SHA256E-s430741630--78878850bdb67ae577fcdf045567f52ae8ec8a0b4e93e30ea2983c13a7b1dc7a.gz";
      r2 = "mf/Q3/SHA256E-s444424591--881806b5cdf7b6d8eab78bfe18f58253d13fc15a5dde9bcec33852e027d32c45.gz/SHA256E-s444424591--881806b5cdf7b6d8eab78bfe18f58253d13fc15a5dde9bcec33852e027d32c45.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wW/4P/SHA256E-s432736574--497cbfc0a1a2b0ba25c99a668991531b08f5d3506222923b7e5d156aeeb60281.gz/SHA256E-s432736574--497cbfc0a1a2b0ba25c99a668991531b08f5d3506222923b7e5d156aeeb60281.gz";
      r2 = "K6/vX/SHA256E-s446649977--37e00f6cb1d73434c231c7b4e72447fdd8102954b71cc76304d2cb73c1cb8ca6.gz/SHA256E-s446649977--37e00f6cb1d73434c231c7b4e72447fdd8102954b71cc76304d2cb73c1cb8ca6.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X1/V1/SHA256E-s495735805--ce2336d9de647246fecbf10810ff1cca0a31ecd860a041a87fb4a52ffa2bb725.gz/SHA256E-s495735805--ce2336d9de647246fecbf10810ff1cca0a31ecd860a041a87fb4a52ffa2bb725.gz";
      r2 = "gj/Pp/SHA256E-s513434606--ae37e58976a59cd32b0fb6b51286958a3c6267f103288ec63431706523d2a0ac.gz/SHA256E-s513434606--ae37e58976a59cd32b0fb6b51286958a3c6267f103288ec63431706523d2a0ac.gz";
    }
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "Q7/7K/SHA256E-s1456041550--99a66b140a13078c5183ef1797728f3b3b337dfe01d7eee3dc5618f99f4253c1.gz/SHA256E-s1456041550--99a66b140a13078c5183ef1797728f3b3b337dfe01d7eee3dc5618f99f4253c1.gz";
      r2 = "QM/fv/SHA256E-s1450941707--0ed2552a3c789224ad5107a4cf356bed80ff7ee696996717e92e708f1bac6c40.gz/SHA256E-s1450941707--0ed2552a3c789224ad5107a4cf356bed80ff7ee696996717e92e708f1bac6c40.gz";
    }
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "3W/kK/SHA256E-s1430753980--63a8fd6feb96cddd740b5c74c10746ae1c47ba37eab5362cf38fab8e65ee02b1.gz/SHA256E-s1430753980--63a8fd6feb96cddd740b5c74c10746ae1c47ba37eab5362cf38fab8e65ee02b1.gz";
      r2 = "11/67/SHA256E-s1422319983--bd9ded8370160b738a779b2d749c6dadf33a05ae44286cdba1ceaecf90dccc1a.gz/SHA256E-s1422319983--bd9ded8370160b738a779b2d749c6dadf33a05ae44286cdba1ceaecf90dccc1a.gz";
    }
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "j5/9W/SHA256E-s1408090074--d0e1be4550e63a83e9f55d9e675dcdd1cb1942b921dd5b9074e7a3b1f3c984da.gz/SHA256E-s1408090074--d0e1be4550e63a83e9f55d9e675dcdd1cb1942b921dd5b9074e7a3b1f3c984da.gz";
      r2 = "gV/PZ/SHA256E-s1408183434--cd3dca38c3298d432b94420fbbce17af35e64ffd17532aa825080e9c5aea3b2a.gz/SHA256E-s1408183434--cd3dca38c3298d432b94420fbbce17af35e64ffd17532aa825080e9c5aea3b2a.gz";
    }
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "xW/W2/SHA256E-s1437234357--9901e0a48001aa9b50cb6868ab1b9d7db58359c5770d181eb3a29bb8c21ae851.gz/SHA256E-s1437234357--9901e0a48001aa9b50cb6868ab1b9d7db58359c5770d181eb3a29bb8c21ae851.gz";
      r2 = "5V/FZ/SHA256E-s1445022594--91ec0c028a2bf82dc5c8f18f2bfca4733b2c596118c4c3f1a466459a4b6f46bb.gz/SHA256E-s1445022594--91ec0c028a2bf82dc5c8f18f2bfca4733b2c596118c4c3f1a466459a4b6f46bb.gz";
    }
    {
      site = "1P";
      class = "tumours";
      pdx = false;
      r1 = "q8/qw/SHA256E-s1764464776--afffa755fa579bce0e01708c5c62041ffb8bdb4c4d5c1d7f6abe0aef4d9d382f.gz/SHA256E-s1764464776--afffa755fa579bce0e01708c5c62041ffb8bdb4c4d5c1d7f6abe0aef4d9d382f.gz";
      r2 = "92/7z/SHA256E-s1765091887--1c75edccbc91510d6e920eb3fb3c26b5d31926f03c262c41411c6948e233e46b.gz/SHA256E-s1765091887--1c75edccbc91510d6e920eb3fb3c26b5d31926f03c262c41411c6948e233e46b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 9.5.24:\nGermline depth is low (20x). HRD score not valid in this case with low genomic coverage. Germline RB1 not reportable, in the tumour it is not likely to be a driver. Does not look like the MSH2 is a driver either, but request IHC (in clinic) \nWith gBRCA2, should see more HRD features.  Might be too early, lowly scarred. *What does Damien think about the HLA findings, clinically? \n*Inadequate tumour purity? Copy number data does not look good. Check the domain in which the HLA variants hit. Report, include MMR IHC request. Jocelyn checking the reason for the low coverage of reads in the germline.\n\nClare's sample meeting 29.06.2023\nPlan on FFPE block 1P: do WES (not urgent,  check with Kristy if this is good for TWIST) \nAdd to Oligometastatic project, but need to check later ";
      d_case_summary = "fallopian tube carcinoma";
      date_consented = "2023-03-06";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "fallopian tube HGS carcinoma";
      case_details = "2021-11:\tInitial diagnosis, treated as pT3N1 HG papillary breast cancer, Stage III \nER+/PR-/HER2- \nBx: Micropapillary ca, G3, ER 2+/60%, PR neg, HER2 neg, Ki67 50% \n\n2021-12:\t Surgery for \"primary breast cancer\" \nER pos / PR neg, HER2 neg \n\n2022-01: \tPredictive variant analysis report: BRCA2, exon 11 \n\nFrom 2022-01 to 2022-05:\tcarbo/paclitaxel \n\n2022-06: \tRadiation \n\n2022-07:\tSurgery Risk reduction surgery for gBRCA2 \n\nFrom 2022-07 To 2022-11\tAdjuvant hormonal Rx for \"primary breast cancer\"(letrozole) \n\n2022-10: \tSurgery Risk reduction lap BSO / washings / D&C (gBRCA),  FFPE Block 1P received \nIHC Positive: WT1, PAX8, p53 (mutational pattern), ER (2+ in 70%)  \nIHC Negative: PR, HER2, GATA3 (focal aberrant staining) \n\n2022-10: \tInitial Diagnosis Fallopian tube carcinoma Prior \"breast cancer\" diagnosis subsequently \t\trevised to met HG serous fallopian tube ca (WT1 / PAX8 pos) \n\nFrom 2022-11 to 2023-03 \tcARBOplatin/PACLitaxel  \n\nMDM 15/12/21 Pathology reviewed: breast and ovarian/tubal tumours initially thought to be histologically distinct, however breast tumour PAX8 and WT1 positive on retrospective review Therefore unifying diagnosis is Stage IVB HGSC of tubal origin \n\n2023-04:\tSurgery, TLH, omental Bx, Blood B1 received \nIHC positive: P53, PAX8 \nPlan: Maintenance PARPi (not for Bevacizumab at this stage) \n\nQuick summary:\n22/11/2021\tdiagnosis breast cancer \n15/12/2021\tright mastectomy \n1/1/2022\tAC chemo and Carbo/Taxol \n1/3/2022\tgermline BRCA2 reported \n1/6/2022\tRTx to chest wall \n8/7/2022\tRisk reducing surgery (gBRCA2) left mastectomy \n13/10/2022\tBSO risk reducing surgery (gBRCA2) (Block 1P) \n1/10/2022\tbreast cancer Dx revised to HGSOC \n14/11/2022\tCarbo/Taxol \n19/4/2023\tTLH surgery \n1/5/2023\tOlaparib (1st line maintenance) ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "19May23: Oct22 sample requested from RWH by Monica\n31May23: Oct22 sample received from RWH by Monica";
      mp_subgroup_sfrcp4_new_id = "2 Primary Breast Ovary only";
      patient_germline_mutations = "BRCA2";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01730";
  }
