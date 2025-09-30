with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mk/3f/SHA256E-s1125880256--bee9ab6614e7c4f04ffab9ba4f83e3e1272fe960f177fe6a9e032519e3cb0678.gz/SHA256E-s1125880256--bee9ab6614e7c4f04ffab9ba4f83e3e1272fe960f177fe6a9e032519e3cb0678.gz";
      r2 = "Gz/z2/SHA256E-s1133129566--9107fc1893dd8e411d37cb6344348d14d86bd1eb560ed6c4d5e5c9c1cabe53ec.gz/SHA256E-s1133129566--9107fc1893dd8e411d37cb6344348d14d86bd1eb560ed6c4d5e5c9c1cabe53ec.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4z/6g/SHA256E-s1117161391--2bee1ecc8bdc7b7de0ec62597e317b2cd9b0ac5379437f5f312bca7ac647d125.gz/SHA256E-s1117161391--2bee1ecc8bdc7b7de0ec62597e317b2cd9b0ac5379437f5f312bca7ac647d125.gz";
      r2 = "zw/3f/SHA256E-s1126176459--af54d380602c93b5e3b77e057e234d094251c04fcc2370204b52a9cf9a3fe0ad.gz/SHA256E-s1126176459--af54d380602c93b5e3b77e057e234d094251c04fcc2370204b52a9cf9a3fe0ad.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "V1/5V/SHA256E-s740125823--70fd3fe84aaf2bc4fbaa1f74f4f147d956442af165fd96feb02b2c30501f70dc.gz/SHA256E-s740125823--70fd3fe84aaf2bc4fbaa1f74f4f147d956442af165fd96feb02b2c30501f70dc.gz";
      r2 = "QK/Mv/SHA256E-s766501681--34f7b73227ec734ae33fc5a5574985d3fac47a118c59fa85df6ab1c993a97b98.gz/SHA256E-s766501681--34f7b73227ec734ae33fc5a5574985d3fac47a118c59fa85df6ab1c993a97b98.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "ZZ/jQ/SHA256E-s756016458--b6be63934e97d57dfe48fd094aa156539896544e707b3c3a3cf501b229eac9bd.gz/SHA256E-s756016458--b6be63934e97d57dfe48fd094aa156539896544e707b3c3a3cf501b229eac9bd.gz";
      r2 = "60/6F/SHA256E-s783164884--b65a532d95feaecc0b5978e95bf57738a107c568f043dfc8fbbde7d97eed4550.gz/SHA256E-s783164884--b65a532d95feaecc0b5978e95bf57738a107c568f043dfc8fbbde7d97eed4550.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "9p/18/SHA256E-s855995330--11603ac9c12ab0fd36e3aab499a581d289dc3dc996d0e8780d7c8b8d8f9f97f7.gz/SHA256E-s855995330--11603ac9c12ab0fd36e3aab499a581d289dc3dc996d0e8780d7c8b8d8f9f97f7.gz";
      r2 = "Vz/20/SHA256E-s890741994--79b023fb1dd2c32d69cb8a3021fae61a9fe9a780a00030518e5fdcc8bb730f67.gz/SHA256E-s890741994--79b023fb1dd2c32d69cb8a3021fae61a9fe9a780a00030518e5fdcc8bb730f67.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 17.11.2022\nRediscussed WES report due to error in first report:\nMatt: \n-Report Signature 3 with widespread LOH. \n-HRD\n-germline FANCG\n\nSubmit sample for Myriad MyChoice\nDo methylation on this sample.\nB7H4 positive: potential to screen for AZD8205 trial\n\nRC Meeting 27.10.2022\nDiscussed WES report.\nGermline FANCG.\nSomatic TP53, NF1, PIK3CA.\nB7H4 IHC positive.\n\nRC Meeting 15.09.2022\nDiscussed TSO500 report. A trial was suggested, (pamiparib + tislelizumab) but AZD8205 would be the best option.\n\nEmails 18.7.2022\nB7-H4 IHC back, looks like staining in tumour.\n\nClare's Meeting 14.07.2022\n-Cyclin E has a H-score of 55 and therefore doesn't meet Ignite trial. Not reporting Cyclin E results as score is negative. \n-Ratana has S1 DNA ready to send for WES.\n-Cass to organise B7H4 staining (Ratana submitted on 15.07.2022)\n\nClare's Meeting 30.06.2022\n-Deep WES on S1 OCT - URGENT case\n-Nanostring on S1 FFPE \n-Cyclin E IHC ASAP (Ignite is closing in Sept!)";
      date_of_death = "11/2022";
      d_case_summary = "52yo with Stage IVB high grade serous ovarian cancer (COV panel WT) had an incomplete metabolic response after 6 cycles of Carboplatin/Paclitaxel/Bevacizumab. CA125 6127 to 733 (post 6 cycles) (Last cycle 28/4/22) to 814 (26/5/22)\n\nPast Medical History: Cholecystectomy for cholelithiasis, rhinoplasty, nulliparous, no regular medications, Normal BMI.";
      date_consented = "2022-05-26";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC\nBRCA1 methylation";
      case_details = "52yo woman\n\n2021-12: Diagnosed Stage IVB high grade serous ovarian cancer (COV panel WT). Incomplete metabolic response after 6x cycles of carboplatin/paclitaxel/bevacizumab.\n\nCytopathology on ascites\nER: 1 - 2+ intensity nuclear staining in 50% tumour cells\nPR: 2+ intensity nuclear staining in 20% tumour cells\n\n2022-06: Laparoscopy, biopsies, BSO, hysterectomy. Fresh tissue S1 received. Blood B1 received. Chemotherapy response score: 1 (no response)\nIHC positive: PAX8, CK7, WT1, p53 (mutant), p16 (focal), ER 1 - 2 50%, PR 2+ 20%\nIHC negative: CK20/TTF1\n\n2022-07: Cyclin E IHC: negative (H-score 55). B7H4 results positive.\n\n2022-08: S1 and B1 DNA sent for WES:\nGermline FANCG.\nSomatic TP53, NF1, KRAS, PIK3CA.\nB7H4 IHC positive.\n\nS1 FFPE Block sent for TSO500: \nTier II - Potential Clinical Significance: NF1, TP53, FANCG";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01585_PortalLetter_26May22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01585";
  }
