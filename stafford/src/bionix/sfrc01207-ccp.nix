with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/ccp/SFRC01207-B1_S7";
      suffix = "_001";
      hash1 = "8faf5ff39a420b1e7eebac6e4e37ec5166eced2165cd0836a43a2e93f8d62b736004d18723fa86d4bfa6b618d3b6102ae777ce06712388c3a2fc196718ae42e8";
      hash2 = "48220609c2ff98080cf39761147d698d39235c6b47997e22b702bea2411f9175f146c6906006d61265e9711fe46e02e2e5ff7c2cf72c6297aa95c5f31d4ee147";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "fastqs/pmcc/ccp/SFRC01207-S1_S8";
      suffix = "_001";
      hash1 = "859e3692312dc41427d79364637067169c4705b54097d96e6e96a8567e507d7a8459edd9a71037bc5e069c34bee74cbd7fa6eda3a1d5c6d98f7f3b5997ba36c9";
      hash2 = "8f1ec2bda47ff1929070851ccc8be59f3bb0fc23538964c8aab9431b18e19d180db3676aba3167f9cfbb99e9fd932e91633bee2e69ac618c6fafbadacc47b4bd";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 18.03.2021\nWES report to be finalised.\nTMB calculated? Yes (7) \nSignature 3 to remain exploratory? Not in report now? No signatures significant. \nDiscussion: Matt, Justin, Tony to add lines to add to reports.  \nNeed this: This report is automatically generated from f8bd47a1a62. \nMutations to be identified  \nRefseq v Ensembl gene annotation \n\nRC Meeting 04.02.2021\nWES results discussed (in Analysis DNA instrument)\n\nMeeting notes 09.11.2020\nBlock 2.1 reviewed. Our S1 and S2 didn't have much tumour \nWES? YES. Pick as much as I can - time it. \nDane Cheasley. Email Kylie about this plan, ask for any other advice. \nKylie's reply: Do you know whether we also received fresh tissue from this patient via AOCS or VCB for organoids?   \nAbout the FFPE it's a bit hard to tell from the images, but I'd be inclined to go for the most high purity area, 11, and see how much you get from that on its own. Reason being that if you are doing WES your depth might not be that high for FFPE so you need the most pure sample you can, so long as there is enough. What WES method are you using - via Sean? E.g. if you have 100X coverage at 40% then = ~40 reads for a mutation that is homozygous, ~20 reads for a het mutation, which might be OK but any less than that you are getting into the dodgy calls for FFPE. \nHowever, given that they are all on the same block I would also dissect out area 1 into in its own tube, and perhaps all the other little areas into one tube together, and then either extract all 3 at the same time, or store these 2 until you know what you get from area 11. \nIf you do some QC e.g. by PCR (we do a van Beers \"ladder\" PCR to see what the size of the amplifiable fragments are) and that is low, then you may need the DNA from the extra areas to add it to get it over the line for amplifiable content. \nSakshi's reply: I agree with Kylie. Adding to this,  \nJust by looking at the image attached, I would roughly estimate an yield of 200-250ng, combined areas 1 &11  (10 sections 10um thick).  If you are using Qiagen kits, digest the sample with PK for two days (I do not know why but the mucinous samples I have worked with, however small, need slightly longer digestions) , do a RNAse treatment, reapplication of the ATE (elute) to column with 10 min incubation will help increase the yield. \nMicrodissect the rest of areas in another tube as back up and do Van Beers.  If the fragment length is more than 300bp, low amounts of DNA would still work.\n\nMeeting notes 22.10.2020\nHave requested specimen/block 2 from another surgery. To do WES\n\nMeeting notes 08.10.2020\nS2 H&E review shows no tumour. \nPlan: Stain a later section for H&E (maybe tumour there)\nAlso, shared with Michael Christie for his opinion. He agreed no tumour in our OCT H&E. Said of the FFPE blocks he reviewed, block 2 would be best for WES.\n\nMeeting notes 05.03.2020\nGone over CCP again, difficulties to extract relevant genes from the analysis as no one has the necessary knowledge to pull out relevant genes, a curator is needed. Tony also agreed that the format of copy number display should be modify compare to WES report.\n\nMeeting notes 06.02.2020\nCCP results discussion: Jocelyn to look at relevance of germline variants. Justin to discuss CCP report in next meeting \n\nMeeting notes 08.08.2019\nPlan: Worried that biopsies are all normal tissue, run CCP panel anyway as will give 500X coverage (WES would only get 100X coverage), unsure whether will see ER amplification unless significantly amplified \nGen to ask Kylie about ER \nSmall amount of tissue from biopsy in May - PAX8 negative, CK20, CK7, CDK2 positive, unsure of ER status ";
      d_case_summary = "28 yo female with metastatic mucinous adnecarcinoma (lung lesions) of unknown primary - likely ovarian as she had previous history of borderline mucinous ovarian tumour (excised 2 years ago).\nCT guided biopsy of lung lesion - well differentiated mucinous adenocarcima (TTF1 neg, PAX8 Neg)   additional IHC (CDX2 pos, CK7 pos and CK20 pos)\nGwo's patient from Monash. WES result available 13/01/2021.";
      date_consented = "2019-07-30";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Metastatic mucinous adenocarcinoma (lung lesions) of unknown primary - likely ovarian";
      case_details = "Metastatic mucinous adnecarcinoma (lung lesions) of unknown primary - likely ovarian as she had previous history of borderline mucinous ovarian tumour (excised 2 years ago).\nCT guided biopsy of lung lesion - well differentiated mucinous adenocarcima (TTF1 neg, PAX8 Neg) + additional IHC (CDX2 pos, CK7 pos and CK20 pos)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2020 Adenocarcinoma requested from RMH via email a/p Ratana on 22/10/2020 by Josh\n\n2020 Adenocarcinoma Block 2.1 received on 27/10/2020 by Josh";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01207";
    capture = CCPv2;
    predictNeoantigens = false;
  }
