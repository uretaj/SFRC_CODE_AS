with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          dipLogR = -0.444;
          preSeg = 50;
          segCrit = 200;
          widPerHet = 400;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qq/87/SHA256E-s5417435237--81a0ecd7807004ff87ed96ed5be801ae713798f688e23b677fb4ac4467386e96.gz/SHA256E-s5417435237--81a0ecd7807004ff87ed96ed5be801ae713798f688e23b677fb4ac4467386e96.gz";
      r2 = "x5/p4/SHA256E-s5506050031--7ef1c7635d4ed5082144617b4f3e3ae4eb9885c25099df17bef5f522a59f124e.gz/SHA256E-s5506050031--7ef1c7635d4ed5082144617b4f3e3ae4eb9885c25099df17bef5f522a59f124e.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "fG/kK/SHA256E-s27921701130--fd23eb50b0b9840ce7712fddd78f72d605fd6f37b5fe562774c5a17acc781da6.gz/SHA256E-s27921701130--fd23eb50b0b9840ce7712fddd78f72d605fd6f37b5fe562774c5a17acc781da6.gz";
      r2 = "PW/0Z/SHA256E-s28616361799--b18296de8ee4b19027c7ce7f54ca32aa13f66fb6c79cbd1ce5f089dfd6a8c215.gz/SHA256E-s28616361799--b18296de8ee4b19027c7ce7f54ca32aa13f66fb6c79cbd1ce5f089dfd6a8c215.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Paul James Meeting 21.07.2023\nAssociated with recessive mitotic spindle disease, OMIM gene, VUS and would need good evidence to support pathogenicity. Fine not to report. No FCC referral needed\n\nClare's Meeting 09.03.2023\n-Discussed Fresh Tissue S2: \n-Patient got on BGB283 trial, lung mets responded. Cervix tumour still growing, this is the big biopsy. \n-To do WES on Fresh Tissue S2 as low purity: 25 - 30%. Looking for some resistance mechanism in the MAPK pathway \n\nRC Meeting 03.02.2022\nDiscussed TSO500 report.\nKRAS uncommon in HGSOC (21% in LGSOC and 0.6% in HGSOC). No TP53 mutation, query LGSOC. Clare to investigate when doing report. Could be good candidate for Beigene trial \nBROCA meeting 18.02.2022\nNot enough DNA for WES or BROCA\n\nRC Meeting 25.11.2021\nTotal DNA is not enough for WGS (only have ~60 ng). Submit this sample for TSO500\n\nMeeting with Clare 18.11.2021\nOCT from S1: DNA only for WGS\n\n19/04/2021 email from Clare\nNo longer HGSOC, high grade endometrioid carcinoma of the ovary. \nThe clinical pathologist did a path review and said:\n\"The immunohistochemical profile WT1 (negative) and P53 reported as occasional cells positive (likely wild-type staining), is not supportive of serous carcinoma. \nThe histological and immunohistochemical features are  consistent with a metastatic endometrioid (or endocervical) adenocarcinoma. Ovarian serous primary is unlikely.\"\nClare has returned TSO500 report to treating doctor, patient can access Beigene trials (KRAS mutation).";
      d_case_summary = "high grade endometrioid carcinoma of the ovary (originally diagnosed as HGSOC)";
      date_consented = "2021-10-23";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "high grade endometrioid carcinoma of the ovary     (we had originally designated as HGSOC)";
      case_details = "42F, Initial Dx of HGSOC stage 4B, now HG endometrioid carcinoma of the ovary\n\n2020-06:\tInitial diagnosis, lung biopsy, invasive adenocarcinoma, female genital track primary origin \nIHC positive: CKAE1/3 and Pax 8, some cells positive for CK7. \nIHC negative:CK20, CDX2, Wt1, ER and TTF1 \n\n2020-06: Commenced carboplatin and paclitaxel, partial response. \n\n2020-08: FIGO stage IVB (cTX, cN1b, cM1b), gBRCA neg \n\n2020-10: Finished 6x carboplatin and paclitaxel.  Commenced bevacizumab maintenance. \n\n2020-12:\t declined debulking surgery \n\n2021-04 - from clinical pathology review and TSO500 report, this case is now high grade endometrioid carcinoma of the ovary\n\n2021-10: Completed 15 month of bevacizumab, progressive disease: pulmonary metastatic nodules and bone metastasis (iliac bone). \n\n2021-11: Commenced 5x carboplatin+doxorubicin \n\n2021-10: Received blood B1 and core biopsy S1 \n\n2021-12: S1 DNA sent for TSO500: \nTier IIC - KRAS pG12V\nTier III (VUS) - PIK3C2G c.3263delA\n\n2022-06: Commenced Dual RAFi/MEKi trial (BGB-283 and PD-0325901)\n\n2023-02: Surgery: Hysterectomy/BSO. \nFresh tissue S2 (upper cervix) received. \nFeatures consistent with carcinosarcoma with sarcoma component, suggestive of endometrioid morphology. \np53: wild type\npMMR: Staining preserved in MLH1, PMS2, MSH2, MSH6\nIHC Negative: ER, PR, WT1, HER2\n\n2023-03: EOT for RAFi/MEKi trial (BGB-283 and PD-0325901), 10 months on trial.\n\n2023-05: S2 DNA sent for WES (25-30% purity)";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "KRAS G12V";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01472";
    capture = CREv2;
  }
