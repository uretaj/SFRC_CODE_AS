with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "Kj/17/SHA256E-s14805995278--6549f0dab6668bb2a4f82e274c47ecc8bdbb0ebb140c0497ccfaa8c74d2f44f6.gz/SHA256E-s14805995278--6549f0dab6668bb2a4f82e274c47ecc8bdbb0ebb140c0497ccfaa8c74d2f44f6.gz";
      r2 = "JM/7V/SHA256E-s14953181667--c57bce5f10d79b28b4c3398dc9c81b8835efefa7ed1983a7ebab1c0092f61194.gz/SHA256E-s14953181667--c57bce5f10d79b28b4c3398dc9c81b8835efefa7ed1983a7ebab1c0092f61194.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vX/80/SHA256E-s4997639656--d53328b0eee862d0418962516d66460e6e320ee333e82e59406949ae7f85413c.gz/SHA256E-s4997639656--d53328b0eee862d0418962516d66460e6e320ee333e82e59406949ae7f85413c.gz";
      r2 = "W7/p4/SHA256E-s5126881567--e64d6a6f2c0c8fcd0f51cbe8a35569396dbf205be5008c6161f7c9a63deceef6.gz/SHA256E-s5126881567--e64d6a6f2c0c8fcd0f51cbe8a35569396dbf205be5008c6161f7c9a63deceef6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 26.08.2022\nH-score of Cyclin E1 IHC is 170 (high). \nMandy & Briony to issue IHC report for Cyclin E and email Dr the results. Patient might be able to go on Wee1 trial. Clare to add a note that the result is interesting because CCNE1 amplification is borderline in WES. Patient might also be able to screen for IGNITE.\n\nWES Meeting 28.07.2022\nOrganise Cyclin E1 IHC on block 1H.\n\nMeeting with Clare 10.02.2022\nOrganise WES on 1H, not urgent.\nHer 2 ISH Result should be on the ARC portal. Do WES on this case for Holly's project.\nIf it's p53 mutant and HER2 amplified it is an interesting case (regardless of whether serous or not) \n\nMeeting with Clare 16.12.2021\nGayanie's review: non serous \nBlock 1H: Organise ISH through Prue Allan and issue report. \nHER2+ endometrioid (non serous) are rare cases. \nCould be a control (2x multiple primary) for Kristy. \n\nOnce block arrives, need proper review to see if this is serous, rather than non-serous endometrioid adenocarcinoma with HER2+";
      d_case_summary = "IIIC endometrial carcinoma- p53 mutant and path review consistent with serous adenocarcinoma. HER2 immunohistochemistry staining= 2  staining in 90% of tumour,  3  staining in remaining 10%. Clinician referred for HER2/ISH please.\nHas had debulking surgery and currently receiving adjuvant chemotherapy (carboplatin and paclitaxel).\nHistory of 20mm G2 IDC of the left breast, 1/28 nodes positive, diagnosed in 2019. ER and PR positive and HER2 negative. Referred to the hereditary cancer clinic.\n\nReferral is for HER2 ISH testing to clarify if the patient may benefit from addition of trastuzumab to her chemotherapy regimen. Clinician also wants to refer the patient for further molecular profiling of her tumour eg WES to identify any potential therapeutic targets for future use at relapse.";
      date_consented = "2021-08-11";
      tumour_type = "HGSEC";
      tumour_details = "Endometrial carcinoma Her2 (query endometrioid?)  breast cancer";
      case_details = "67years old FIGO grade 2, IIIC endometrial carcinoma- p53 mutant and path review consistent with serous adenocarcinoma. HER2 immunohistochemistry staining= 2  staining in 90% of tumour,  3  in 10 % tumour cells. Clinician referred for HER2/ISH please. \n\nMismatch repair protein preserved \n\nGermline testing negative for high risk breast cancer genes: ATM, BRCA1/2, CHECK2, PALB2, TP53 \n\nHas had debulking surgery and currently receiving adjuvant chemotherapy (carboplatin and paclitaxel). \n\n2019-09:\tDiagnostic, mastectomy. History of 20mm G2 IDC of the left breast, 1/28 nodes positive. ER (90%) and PR (90%) positive and HER2 negative. Referred to the hereditary cancer clinic. Ki 67=20% \n\nAdjuvant therapy with FEC docetaxel, adjuvant endocrine therapy (letrozole switch to exemestane) \n\n2020-11: \tcontralateral mastectomy \n\n2021-07:\tSurgery, hysterectomy. (Tissue fixed and blocked (Block 1H)\nIHC positive: AE1/AE3, P16 \nIHC negative: Desmin, SMA \n\n2021-08:        Her2 IHC: 2-3+ \n\n2021-11:        Block 1H received\n\n2021-12:        HER2 ISH: 3+\n\n2022-03:       Blood B1 received. B1 and 1H DNA \n                       sent for WES\n\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01452_ARCPortalLetter__Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2021 block requested from Capital Pathology by Warren 6/9/21, received 9/11/21";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01452";
    predictNeoantigens = true;
  }
