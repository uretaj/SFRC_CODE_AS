with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.4";
      class = "tumours";
      pdx = false;
      r1 = "2Q/Gf/SHA256E-s24363587501--bafa08db1c043620dde70ff23e0ef008eb16a764217fd49b23ef3c45eb7af569.gz/SHA256E-s24363587501--bafa08db1c043620dde70ff23e0ef008eb16a764217fd49b23ef3c45eb7af569.gz";
      r2 = "21/Q2/SHA256E-s25896490908--ed9af92cccac52c4747d7fb310b420dabcc42fdf4d115d10351d014b0feaecfe.gz/SHA256E-s25896490908--ed9af92cccac52c4747d7fb310b420dabcc42fdf4d115d10351d014b0feaecfe.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qk/9X/SHA256E-s5594941777--b65f0fe7fafaff066c06b452e6da3cf86c19d488a689f7177a860fc74acf6a03.gz/SHA256E-s5594941777--b65f0fe7fafaff066c06b452e6da3cf86c19d488a689f7177a860fc74acf6a03.gz";
      r2 = "9m/1W/SHA256E-s6129563846--f841e61bed4da0312f1499a7ae05843e868cdbacdae0cf8e7c680b58e9f12e0e.gz/SHA256E-s6129563846--f841e61bed4da0312f1499a7ae05843e868cdbacdae0cf8e7c680b58e9f12e0e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1.4\n\n02.03.2023\nDiscussed WES Report - FFPE Block 1.4\n-Lots of somatic mutations & potential therapy options:\n -FBXW7 - WEE1i? \n -LZTR1 - RAFi? \n -MSH6 - Immunotherapy?  This also fits with high \n  signature 6 \n -PIK3CA, PPP2R1A, PTEN - PI3Ki \n-Also found somatic BRCA2: c.6986C>T, p.Pro2329Leu, missense_variant, 31%. Clinvar lists this as benign/uncertain. Matt to look into DMS to confirm if benign.\n-No TP53 mutation; wild type p53 via IHC.\n\nClare's Meeting 22.12.2022\nP53 IHC on all blocks - wild type p53 - unusual. Want to see molecular TP53 expression. Is a strange case. \nDNA from 1.4 - library for WES is done. Holly to curate WES report. \n\nClare's Meeting 30.11.2022\n-P53 IHC on all blocks (the CC should be negative, but positive in OCS) (check path report if done, but still want it) - path report says p53 wildtype \n-WES on 1.4 (if room in Dec batch, include it for discussion early next year). No sequencing on other two blocks.\n-Briony to check urgency/recurrence, will upload ARC portal letter ";
      d_case_summary = "Right ovary carcinosarcoma, 95% sarcomatous and 5%, with features of mucinous and endometrioid differentiation.\nLeft ovary clear cell carcinoma and endometrioid borderline tumour arising in anadenofibroma.\nKnown germline MSH6 mutation.  Bilateral ovarian cancer with different histologies as above.  Just finished C6 adjuvant chemo and tumour markers going up.  No disease on recent PET";
      date_consented = "2022-09-16";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "ovarian carcinosarcoma + Ovarian clear cell";
      case_details = "2022-04: Dx Ovarian carcinosarcoma \n-Surgery: Debulking (Blocks 1.4, 1.3, 3.6)\n-Chemotherapy: Adjuvant carbo/taxol\n-Radiotherapy following CT\nIHC positive: ER (2-3+, 80%), PR (3+, 80%), p16 (patchy)\nP53: Wild type\nRight ovary carcinosarcoma, 95% sarcomatous and 5%, with features of mucinous and endometrioid differentiation.\n\n2022-05: FCC Panel report (PMCC)\n-MSH6 pathogenic variant found \n(NM_000179.2, c.1804_1805del (p.Ser602fs))\n\n2022-10: Blood B1 received.\n\n2022-11: Sections from FFPE Blocks from 2022-04 Debulk received:\n1.4 - right tube and ovary (carcinosarcoma)\n1.3 - right ovarian mass (carcinosarcoma)\n3.6 - left ovary (clear cell carcinoma)\n\n2022-12: p53 IHC on sections from FFPE Blocks 1.4, 1.3, 3.6";
      pre_analysis_mutations = "Right ovary carcinosarcoma, 95% sarcomatous and 5%, with features of mucinous and endometrioid differentiation.\nLeft ovary clear cell carcinoma and endometrioid borderline tumour arising in anadenofibroma";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2022-09-29";
      fcc_report = "SFRC01660_FCCPanel_25Aug2022_Redacted.pdf";
      portal_letter = "SFRC01660_ARCPortal_27Oct2022_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "05/10/2022: Apr 2022 sample requested from Austin pathology by Devindee.\n17/10/2022 (new request): Apr 2022 sample tissue for both R) and L) ovary requested from Austin Pathology by Devindee\n04/11/2022: Apr 2022 sample received.\n08/11/2022: April 2022 slides for R and L ovary received.";
      patient_germline_mutations = "MSH6";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01660";
    capture = CREv2;
  }
