with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g0/6g/SHA256E-s5645171335--3459c0ea618f7eba284af4a4542c0a306983394a579c66e213a0e009b65d702e.gz/SHA256E-s5645171335--3459c0ea618f7eba284af4a4542c0a306983394a579c66e213a0e009b65d702e.gz";
      r2 = "7q/gq/SHA256E-s5838765920--1c49127c81d7c34114784e705ff0ae7ca6f83ee60f9eb6676ea66acf7c93197e.gz/SHA256E-s5838765920--1c49127c81d7c34114784e705ff0ae7ca6f83ee60f9eb6676ea66acf7c93197e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "0m/Fp/SHA256E-s24063724014--d7be4b62d0c36b3eef5ed8f371cb34c0c690a8a6b3113026079d5cd74231502c.gz/SHA256E-s24063724014--d7be4b62d0c36b3eef5ed8f371cb34c0c690a8a6b3113026079d5cd74231502c.gz";
      r2 = "fQ/6m/SHA256E-s25156829132--0fd54e1b8bef0325f999138e0813054d1f818a5c3f23b75adaa66d3ff3c3ffc7.gz/SHA256E-s25156829132--0fd54e1b8bef0325f999138e0813054d1f818a5c3f23b75adaa66d3ff3c3ffc7.gz";
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
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01585";
  }
