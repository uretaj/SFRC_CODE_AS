with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "41/vp/SHA256E-s1708398072--1ad70ba6e01ab8903b60821a338848889fa7f000d5af87e13a512b8de0a1ecee.gz/SHA256E-s1708398072--1ad70ba6e01ab8903b60821a338848889fa7f000d5af87e13a512b8de0a1ecee.gz";
      r2 = "15/Zv/SHA256E-s1737385844--69094ac7c621eae3eff570560d4a8a9a8a620bb7b953d867d65271dbeaa62daa.gz/SHA256E-s1737385844--69094ac7c621eae3eff570560d4a8a9a8a620bb7b953d867d65271dbeaa62daa.gz";
    }
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "P5/mK/SHA256E-s1695386587--e6570106a124d5cc51a634fdbbbd347477ce0dbab85dc489388255cbcadb5870.gz/SHA256E-s1695386587--e6570106a124d5cc51a634fdbbbd347477ce0dbab85dc489388255cbcadb5870.gz";
      r2 = "G6/Kq/SHA256E-s1716911756--0004d24b538e383d70cccbbcdc85589982aec08e2b504dffd4d0110437a4d578.gz/SHA256E-s1716911756--0004d24b538e383d70cccbbcdc85589982aec08e2b504dffd4d0110437a4d578.gz";
    }
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "4J/V2/SHA256E-s1702074124--c360662759dfbca3dd48a05c3d0a826aefa87d4adf397ea40b7b37dbc174262e.gz/SHA256E-s1702074124--c360662759dfbca3dd48a05c3d0a826aefa87d4adf397ea40b7b37dbc174262e.gz";
      r2 = "g3/Mp/SHA256E-s1719149067--9d0987125f0cfae265bc929b890a6438b4c9a4259d9ec460c50ff8f17cab5423.gz/SHA256E-s1719149067--9d0987125f0cfae265bc929b890a6438b4c9a4259d9ec460c50ff8f17cab5423.gz";
    }
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "2w/11/SHA256E-s1698483896--c5735e9e11eef2344ed25f0995ba780c675523582595054ca09d199fbc58ebcd.gz/SHA256E-s1698483896--c5735e9e11eef2344ed25f0995ba780c675523582595054ca09d199fbc58ebcd.gz";
      r2 = "Jz/0K/SHA256E-s1715093421--a355e7b774d9ea2f52f1915932653a7421420b3d119729c450443bc6a1c0201f.gz/SHA256E-s1715093421--a355e7b774d9ea2f52f1915932653a7421420b3d119729c450443bc6a1c0201f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xJ/GW/SHA256E-s699245817--4ec5ffadfae9f34485cb03d7b410a0551cd8ec97e3ade44a5cc2ea69b7c99475.gz/SHA256E-s699245817--4ec5ffadfae9f34485cb03d7b410a0551cd8ec97e3ade44a5cc2ea69b7c99475.gz";
      r2 = "x0/wx/SHA256E-s697901777--3d95d12fc8b99c73886503c3dbe0532b1c28f57d7bcc3b54c82982cc2dba1d17.gz/SHA256E-s697901777--3d95d12fc8b99c73886503c3dbe0532b1c28f57d7bcc3b54c82982cc2dba1d17.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3G/6W/SHA256E-s701271945--af2c88f27a729186b1355e01117fd83b4c480e9e6105f140ecf4479f395d952e.gz/SHA256E-s701271945--af2c88f27a729186b1355e01117fd83b4c480e9e6105f140ecf4479f395d952e.gz";
      r2 = "7J/WP/SHA256E-s704249622--dd15f8ab62ddcb904ba6bbf0e735a392e7168a174e47be4fd3a53caf8bc7e5cb.gz/SHA256E-s704249622--dd15f8ab62ddcb904ba6bbf0e735a392e7168a174e47be4fd3a53caf8bc7e5cb.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6K/JM/SHA256E-s693650299--8a9c45450b7b5a1eefb60704051459d65732aafe1782d75c95699714e0901fcb.gz/SHA256E-s693650299--8a9c45450b7b5a1eefb60704051459d65732aafe1782d75c95699714e0901fcb.gz";
      r2 = "Z5/jQ/SHA256E-s694659031--2214df6a485b526d5c3b5df9dd0dcfc4efec886bbe9024ea185bf5f330ad60b4.gz/SHA256E-s694659031--2214df6a485b526d5c3b5df9dd0dcfc4efec886bbe9024ea185bf5f330ad60b4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Mp/Jg/SHA256E-s723442165--f88a5327a7b31ffc3a6a139987a01665cd36832bb2bf9d2e317bb3c302fd7b89.gz/SHA256E-s723442165--f88a5327a7b31ffc3a6a139987a01665cd36832bb2bf9d2e317bb3c302fd7b89.gz";
      r2 = "0J/pw/SHA256E-s729121774--f72a7eea7e7a754d07498c02a6d2407f856ebc85545aee1418a226c14d5414d4.gz/SHA256E-s729121774--f72a7eea7e7a754d07498c02a6d2407f856ebc85545aee1418a226c14d5414d4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "Matt's email to Jocelyn (15.3.24) regarding BRCA1 variant query from RC Meeting:\nI suggest the wording: This variant was not identified in our standard analysis due to the low frequency; however, manual curation supports the prior call at a similar frequency.\n\nHappy with that or something similar\n\nRC Meeting 14.3.24:\nNothing to report. BRCA1 variant found in PeterMac BRCA report, not present in WES. \n\nCheck if we can explain this by the BRCA1 variant being at a very low frequency @Jocelyn Penington.\n\nClare's meeting 2023.05.18\n block 1C, recalled to find the BRCA1 mutation found with BRCA testing but could not detected with WGS, BROCA and TSO 500 done on fresh sample received from the same surgery. \nPlan:Extract DNA, send for WES? Yes  \nResults to Matt and Kas. TSO500, WGS, WES, BRCA test, all inconsistent \n\nClare/Ratana/Rae meeting 16.03.2023\nStill can't find the BRCA1 somatic mutation. The BRCA test was on a block collected at same procedure as our S1. Recall that block while Matt continues to look into the data.\n\nClare emails in Jan 2023\nClinical notes stated a somatic BRCA1 mutation had been found as somatic BRCA1/2 was performed as this was a clear cell cancer of the ovary. No IHC performed.\nRatana submitted our S1 block for IHC, Gayanie reviewed and says stain is wildtype.\n\nRC meeting 31.03.2022\nWGS failed in Sean's lab, no report issued. \nHowever looking at the tumour purity on the html file (40%) which is better that the pathologist estimate (25-30%) Justin, Jocelyn and Tony are confident the data can still be interpreted. \nWe could not call anything interesting but a SFRC WGS report should still be issued. Damien, Clare and Tony to generate report. \nMatt's comments: Sean Grimmond refusal will be due to not meeting NATA thresholds for reproducibility. We can reliably say we can rule out haploid calls at high % \nNo need to do WES or TSO500\n\nBroca meeting Amandine/Clare 21.03.2022\nSend S1 for Broca, bring this sample to discussion \nat a RC meeting to check if we could this sample for TSO 500 or WES\n\n\nRC Meeting 24.06.2021\nInsufficient sample. Looked at html report, but could not find anything actionable.\n\n2021.04.13\nWGS report failed. Justin to get data.\n\n2021.03.15\nS1 tissue has 25-30% tumour purity of entire piece. Submit whole tissue for WGS (if high TMB, will get immunotherapy)";
      d_case_summary = "37 yr-old female with stage 1a clear cell cancer of the ovary";
      date_consented = "2021-02-23";
      tumour_type = "Clear cell ovary";
      tumour_details = "high grade clear cell carcinoma of ovary";
      case_details = "39 years old female  \n\n2021-02\tdiagnosis (FIGO stageIA) surgery, gBRCA -WT sBRCA -BRCA1 pathogenic detected \nBlood B1 and fresh tissue S1 received, FFPE block 1C received  \nIHC positive: CK7, PAX8, and napsin A \nER 2+ in <5% tumour cells \nPR 1+ in <5% tumour cells \nNo loss of MMR \n\n2021-02\tFamilial cancer panel : no variants were detected \n\n2021-03: \tBRCA test \nBRCA1, NM_007294.3 (c5 pathogenic) \n\n2021-04\tWGS  \nWGS failed in Sean's lab, no report issued.  \nHowever looking at the tumour purity on the html file (40%) which is better that the pathologist estimate (25-30%) Justin, Jocelyn and Tony are confident the data can still be interpreted.  \nWe could not call anything interesting but a SFRC WGS report should still be issued. Damien, Clare and Tony to generate report. \n\n2022-06: \tBROCA \nGermline BARD1 - deletion-insertion, c.1935_1954dup, p.E652fs \n*Pathogenic/Likely pathogenic per Clinvar. https://www.ncbi.nlm.nih.gov/clinvar/variation/127725/ \n\n2023-03: \tTSO 500 \n\nNo clinically significant variants were detected ";
      brca_report = "SFRC01376_BRCASomatic_19Mar2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA1";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "20Mar23: Feb 21 sample requested from RWH by Monica\n15Apr23: Feb21 sample received from RWH by Monica";
      patient_germline_mutations = "BRCA WT";
    };
    inherit samples;
    name = "SFRC01376";
    capture = TwistV2HR;
  }
