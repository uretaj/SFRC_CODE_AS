with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 30;};})];
}; let
  samples = [
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "Xw/mv/SHA256E-s15174511764--0e584716fac841947646701e42bea547e11781613605eb3df42c808025c4d9a3.gz/SHA256E-s15174511764--0e584716fac841947646701e42bea547e11781613605eb3df42c808025c4d9a3.gz";
      r2 = "V2/Xw/SHA256E-s15882614632--a3a81b7efc4c4a0ae44fd0c2ed7994c740efca1ec2c187f7f056a0e0f5bc467c.gz/SHA256E-s15882614632--a3a81b7efc4c4a0ae44fd0c2ed7994c740efca1ec2c187f7f056a0e0f5bc467c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "50/Gk/SHA256E-s6149109810--8f0197ce16bef7533fd132730e852c85dc58963a7c9f5488b0ca740ce326fd15.gz/SHA256E-s6149109810--8f0197ce16bef7533fd132730e852c85dc58963a7c9f5488b0ca740ce326fd15.gz";
      r2 = "9Z/Q5/SHA256E-s6396688391--570fa5c22f4740ec1b2d3460229384c4044ab7134cc91a3ae410556175382061.gz/SHA256E-s6396688391--570fa5c22f4740ec1b2d3460229384c4044ab7134cc91a3ae410556175382061.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2023.05.18\nPlan for FFPE block 18H-2: I think the tumour purity is borderline for TSO500, however the dissection area is big enough and easily accessible, try TSO 500? yes \nFor multiple primary project \nAsk Matt about shallow WGS rather than TSO 500? How much DNA and where to send it  \nMatt: Send for TSO500, not shallow WGS. \n\nClare's Meeting 17.11.2022\nMSH6 IHC to be done on 21.06.2018 (bowel) block. Would need to get the original lab to do it and pay for it (Melbourne Path). Clare to do.\n\nWES Meeting 20.10.2022/Clare, Ratana, Mandy, Rachael 21.10.2022\nGermline MSH6 + deletion = dMMR\n\nMSI PCR or IHC to confirm effects of MSH6 \n\nDamien to look into NF1 and EGFR mutations  \n\nClare to issue urgent report. Potential for immunotherapies.\n\nEmail from Clare 16.08.2022\nThis multiple primary patient has been found to have a germline MSH6 mutation. Also known to have an inherited mutation for cleft palate: IRF6 & has implications for cancer. WES curation soon for ovarian cancer diagnosis. Would like WES on colon cancer to go alongside it.  \n\nClare, Ratana and Rachael 25.07.2022\nPrioritise the WES. Clinically urgent.\nWe did not get fresh tissue. New tumour was on the bowel (not in). Currently unsure if recurrence. \n\nClare's meeting 05.05.2022\nBlock 2D: WES and BROCA. Blood is in transit & will arrive 06.05.22! ";
      d_case_summary = "51 yo woman\n48yo Dx two synchronous bowel cancers - Stage 3 rectal ca, ascending colon ca, 2018\n49yo Dx sessile serrated polyps upper colon on colonoscopy, two medium sized\n(categorised as two independent multiple primary invasive cancer instances)\n50yo Dx clear cell ovarian cancer Stage 1C, 2021\nBCC skin\nStage 1C clear cell ovarian cancer - Dr Geraldine Goss, Ms Kym Reid, referred by GP Dr Yuven Ramachadran\nJuly 2022: Prasad Cooray, new extraluminal lesion behind caecum - difficult to access by process; may defer to Kym Reid";
      date_consented = "2022-02-08";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell ovarian carcinoma stage 3     Previous: Stage 3 colorectal cancer (rectal and ascending colon)";
      case_details = "51 yo woman \n\n2018-10\tBiopsies (18H-1 and 18H-2 received H&E for both, & slides for 18H-2) \n\n2018-10: \tDiagnosis of two primary colorectal cancers: Stage 3 rectal cancer and ascending \t\tcolon cancer. \n\n2019: \t\tDiagnosis of sessile serrated polyps upper colon on colonoscopy, two medium \t\tsized (categorised as two independent multiple primary invasive cancer \t\t\tinstances) \n\n2020: \t\tdiagnosis of stage 1C clear cell ovarian cancer \n\n2021-07: \tSurgery BSO, D and C, Block 2D received  \nPathology: High grade clear cell carcinoma of the ovary, fragmented Peritoneal \twashings positive \nStage 1C \nHistology on right tube and ovary \nIHC positive: CK7, PAX-8, HNF-1B, Napsin A (focal) AMACR (focal) \nIHC negative: CK20, CDX2, WT1, ER, PR \nNormal wild type staining for p53  \nRight tube and ovary and (tissue 2D) fixed and blocked.  \n\n2021-11: \tSurgery: TAH, omentectomy: R0  \n\n2021 - 2022: \tChemotherapy: carboplatin/paclitaxel x 6, completed on 8/1/2022 \n\n2022-03: \tBlock 2D received. \n\n2022-05: \tFamilial Cancer Panel: Pathogenic variant of MSH6 detected (Ex 5, \t\tNM_000179.2, c.3343dup NP_000170.1:p.(Ile1115Asnfs*4)) \n\n2022-06: \tBlood B1 received. 2D DNA sent for BROCA \nGermline MSH6 - deletion-insertion, c.3343dupA, p.L1114fs, 76.6% \n*Not reported on ClinVar or gnomAD, but could be germline considering VAF \nGermline PPP2R1A - substitution, c.544C>T, p.R182W, 43.0% \n*Reported pathogenic/likely pathogenic germline mutation on ClinVar https://www.ncbi.nlm.nih.gov/clinvar/variation/190312/ \nGermline NF1 - substitution, c.3826C>T, p.R1276*, 29.7% \n*Reported pathogenic germline mutation on ClinVar https://www.ncbi.nlm.nih.gov/clinvar/variation/237556/ \nSomatic PIK3CA - substitution, c.323G>A, p.R108H, 22.8% \nSomatic PTEN - substitution, c.697C>T, p.R233*, 31.7% \nSomatic PTEN - substitution, c.545T>A, p.L182*, 25.2% \nSomatic TP53 - substitution, c.733G>A, p.G245S, 27.9% \n\n2022-08: \t2D and B1 DNA sent for WES \nWES Meeting 20.10.2022 \nTMB: 33 \nPurity: 49% \n\nGermline variants:  \nMSH6, frameshift variant, 51% \n(ENST00000234420.10, c.3343dupA, p.Ile1115fs) \n*Matches Cancer panel finding \n\nSomatic variants (Cosmic genes) \nPPP2R1A, missense variant, 43% \n(ENST00000322088.11, c.544C>T, p.Arg182Trp) \n\n*Clinvar: pathogenic/likely pathogenic \n\n*Is an Endometrial hotspot mutation (https://pubmed.ncbi.nlm.nih.gov/27485451/) \n\nNF1, stop gained, 35% \n(ENST00000358273.9, c.3826C>T, p.Arg1276*) \n\n*Clinvar: pathogenic \nPTEN, stop gained, 28% \n(ENST00000371953.8, c.545T>A, p.Leu182*) \n\n*Clinvar: pathogenic \nPTEN, stop gained, 25% \n(ENST00000371953.8, c.697C>T, p.Arg233*) \n\n*Clinvar: pathogenic \n**Two PTEN mutations are not clinically targetable \nTP53, missense variant, 28% \n(ENST00000269305.8, c.733G>A, p.Gly245Ser) \n\n*Clinvar: pathogenic \n\n*One copy: possible dominant negative \nNSD1, stop gained, 26% \n(ENST00000439151.6, c.6349C>T, p.Arg2117*)  \n\n*Clinvar: pathogenic \nEGFR, missense variant & splice region variant, 22% \n(ENST00000275493.7, c.2281G>A, p.Asp761Asn) \n\n*Clinvar: likely pathogenic \nMutational Signatures: \nSignature 6: 48%, fit 1706 \nCN loss:  \nAKT - focal \nWNK1 - focal \nSMARCA4/KEAP1 - large deletion \nAmplifications: None \n\nDiscussion: \nGermline MSH6 + deletion = dMMR \nMSI PCR or IHC to confirm effects of MSH6  \nDamien to look into NF1 and EGFR mutations   \nClare to issue urgent report. Potential for immunotherapies. ";
      pre_analysis_mutations = "The heterozygous variant c.3343dupA was detected in exon 5 of the MSH6 gene";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01528_FamCancerPanel_20Jul2022_Redacted.pdf";
      portal_letter = "SFRC01528_Letter_08Aug22_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "15/03/2022: July 2021 sample requested from Melbourne Pathology by Devindee. \n23/03/2022: July 2021 sample slides received by Devindee. \n15/09/2022: June 2018 sample requested from Omnipath pathology by Devindee. Omnipath contacted Briony- minimal tissue in block, discussed with Kristy and decided we will just get H&E.\n23Feb2023: June 2018 sample received by Monica\n22Jun23: Jun18 sample received from Omnipath by Monica\n";
      mp_subgroup_sfrcp4_new_id = "2 plus 1 or more non-malignant";
      patient_germline_mutations = "MSH6";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01528";
    predictNeoantigens = true;
  }
