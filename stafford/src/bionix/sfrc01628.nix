with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "16/ZF/SHA256E-s36697380318--94213a0a2f7f98122e720774bac68b9931264191101863abe27fadb7d4f51595.gz/SHA256E-s36697380318--94213a0a2f7f98122e720774bac68b9931264191101863abe27fadb7d4f51595.gz";
      r2 = "6W/93/SHA256E-s37796440411--dcf52967b5d1223d5a1383f923f56e5cb98424ddfc54fa58a4173662350aad9d.gz/SHA256E-s37796440411--dcf52967b5d1223d5a1383f923f56e5cb98424ddfc54fa58a4173662350aad9d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "MQ/vF/SHA256E-s81833846033--31cccb03a8420a695f0e197f6fdf2f1a730762221afd4db47e3e7a779bfd301c.gz/SHA256E-s81833846033--31cccb03a8420a695f0e197f6fdf2f1a730762221afd4db47e3e7a779bfd301c.gz";
      r2 = "2z/PG/SHA256E-s84319644591--e8084913b37853661d0649e41487da31b56f4454d313bdd6c4a5c1bf46feafdd.gz/SHA256E-s84319644591--e8084913b37853661d0649e41487da31b56f4454d313bdd6c4a5c1bf46feafdd.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "qW/ZZ/SHA256E-s3875363767--610354acb2a32e4fe389685ab9a5076aa8149549c3a16f07fd8f7c1dfe810c86.gz/SHA256E-s3875363767--610354acb2a32e4fe389685ab9a5076aa8149549c3a16f07fd8f7c1dfe810c86.gz";
      r2 = "jV/Kx/SHA256E-s3769803374--cb2af4e15957b578c56fa93d4e2a15a6224ad5344a55d7b971609e4d46eafbb3.gz/SHA256E-s3769803374--cb2af4e15957b578c56fa93d4e2a15a6224ad5344a55d7b971609e4d46eafbb3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 09.03.2023\nDiscussed WES Report (Block A1 - endometrioid endometrial adenocarcinoma)\n-Lots of C>T and G>A changes - lots of FFPE artefact happening. Somatic PTEN and PIK3CA not actionable because of this.\n-High MSI, High TMB and MSH6 mutation opens the door for potential immunotherapy. \n\nClare's Meeting 17.11.2022\n-FFPE Block 2B has small area of tissue at 10% purity, not adequate for sequencing. Leave for now. \n-For Kristy: neoantigens\n-Potential for MMR IHC as discovered dMMR in endo cancer. Clare to ask someone to do. Ratana has emailed Clare the WGS report. \n\nClare's Meeting 02.11.2022\nFor double primary project. WES on Block A1 (endometrioid endometrial carcinoma) - Cat 3.\n\nRC Meeting 27.10.2022\nDiscussed WGS report (Grimmond and SFRC).\nIs dMMR and has high TMB, so immunotherapy is best treatment.\nJAK1 inactivation, low expression by WTS (in the immune response pathway), so ??resistance to IO?\n\n05.09.2022\nJoep emailed, gave him 2x 1 ml plasma vials since this is MSI-hi ctDNA sample.\n\nEmails 15.08.2022\nDiscussed with Clare, is dMMR, so now rare case. Submit for WGTS\n\nEmail from Briony to Rachael & Ratana 08.08.2022\nCase was downgraded on final pathology to Grade 2 endometrioid, so not high grade and not rare. Ratana to hold off on WGTS until discussed further with Clare.\n\nClare's Meeting 05.08.2022\nRatana to do WGTS on OCT S1. \nFFPE S1 for Imalki (double primary)";
      d_case_summary = "Originally diagnosed as grade 3 endometrioid endometrial cancer, downgraded on final pathology to Grade 2 endometrioid.\nBut there was isolated loss of staining of MSH6 on IHC, so maybe Lynch - has been referred to genetics team for germline testing.\nExtensive LVSI, so she has been referred to discuss adjuvant RT or not.\nductal breast cancer 2014";
      date_consented = "2022-07-21";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Grade 2 endometrioid endometrial adenocarcinoma (Originally thought to be grade 3)  Ductal breast cancer 2014";
      case_details = "46F\n\n2014: Diagnosed ductal breast cancer. Tissue fixed and blocked (Block 2B)\n-IHC positive: ER (strong, 90%), PR (strong, 80%)\n-IHC negative: HER2 (1+)\n\n2022-07: Diagnosed Grade 2 endometrial cancer (initially Grade 3) following hysteroscopy dilation and curettage. Anterior uterus and cervix fixed and blocked (Block A1)\n-Histopath following curettage:\n -p53 wild type\n -patchy p16 expression\n-Surgery: TAH/BSO, pelvic lymph node dissection. \n Fresh tissue S1 and Blood B1 received\n -IHC positive: ER, PR\n -dMMR: Intact nuclear staining for MLH1, MSH2, \n   PMS2; MSH6 negative\n\nEnrolled to ARC Portal for research only.\n\n2022-08: S1 & B1 DNA sent for WGS:\nMSH6 mutation & CN neutral loss of heterozygosity\nPIK3CA activating mutations (x2)\nARID1A, CHEK1, JAK1 (x2) inactivating mutations\nTP53 mutation of uncertain clinical significance\nPTEN (x2) and CTCF inactivating mutations of uncertain clinical significance.\n\n2022-09: BraOVO + Lynch Genes germline variant screen: VUS MSH6:c.2309G>A, p.(Gly770Asp)\n\n2022-09: Block A1 (uterus and cervix; same as S1 surgery) received.\n\n2022-10: Block 2B (breast) received. \n\n2023-01: B1 and Block A1 DNA sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01628_PortalLetter_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "02/09/2022: July 2022 sample requested from Territory pathology by Devindee. \n28/09/2022: July 2022 block received.\n05/10/2022: March 2014 sample requested from Western Diagnostic pathology by Devindee. \n14/10/2022: March 2014 block received by Devindee.";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_germline_mutations = "MSH6";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01628";
    predictNeoantigens = true;
  }
