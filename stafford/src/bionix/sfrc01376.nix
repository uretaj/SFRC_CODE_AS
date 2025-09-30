with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        octopus.callSomatic = def octopus.callSomatic {mem = 150;};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kG/0G/SHA256E-s68977068677--a69fed3a37828ae19466063731dfccf567801f190ae3a556625eac56b135d4f9.gz/SHA256E-s68977068677--a69fed3a37828ae19466063731dfccf567801f190ae3a556625eac56b135d4f9.gz";
      r2 = "JK/FV/SHA256E-s77094484244--c2a8092e83e66b9f9a033da113357f3328bb178906678e10eb51d34c90c4b309.gz/SHA256E-s77094484244--c2a8092e83e66b9f9a033da113357f3328bb178906678e10eb51d34c90c4b309.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "w8/zm/SHA256E-s98348898479--a80da556b210beaead171d17ba682d4ca7b14d4e154a8d09bda1ad9367ef72eb.gz/SHA256E-s98348898479--a80da556b210beaead171d17ba682d4ca7b14d4e154a8d09bda1ad9367ef72eb.gz";
      r2 = "kW/16/SHA256E-s108043993377--4d2d15ef4575f56190dd80fc31f010ae68297b5ddb00aa65310127afc0a3cd9a.gz/SHA256E-s108043993377--4d2d15ef4575f56190dd80fc31f010ae68297b5ddb00aa65310127afc0a3cd9a.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "08/wv/SHA256E-s4576909659--65723409813d01ae7cdb72f437bb9210f96e92c5ada1b80a0f5937b3d93cb9c5.gz/SHA256E-s4576909659--65723409813d01ae7cdb72f437bb9210f96e92c5ada1b80a0f5937b3d93cb9c5.gz";
      r2 = "g0/17/SHA256E-s4666158582--ece5c41417fe1a35345df53481334dfffa33b32183b5e1059192b06724246690.gz/SHA256E-s4666158582--ece5c41417fe1a35345df53481334dfffa33b32183b5e1059192b06724246690.gz";
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
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01376";
  }
