with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 60;};})];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fp/2z/SHA256E-s7304809055--cc0b2aed20c35d852dcb3c318db8413434466944403434d36acd2141fc80935e.gz/SHA256E-s7304809055--cc0b2aed20c35d852dcb3c318db8413434466944403434d36acd2141fc80935e.gz";
      r2 = "Wq/qF/SHA256E-s7719664721--0ece1f9ad132264b1bbd52cb133301aaf0dca2e2ef70bf70c063e95e164a4c0b.gz/SHA256E-s7719664721--0ece1f9ad132264b1bbd52cb133301aaf0dca2e2ef70bf70c063e95e164a4c0b.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Zf/Wx/SHA256E-s23490157414--b87b923ef88d4e00045c8ea7f37fdda738f2c0999dbf301e381a26b60acac925.gz/SHA256E-s23490157414--b87b923ef88d4e00045c8ea7f37fdda738f2c0999dbf301e381a26b60acac925.gz";
      r2 = "XK/WJ/SHA256E-s23977133786--57088130f6e215d336ecc70011984c7f6cc84086043c5f7bd17f974a1ecfb060.gz/SHA256E-s23977133786--57088130f6e215d336ecc70011984c7f6cc84086043c5f7bd17f974a1ecfb060.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "kp/VM/SHA256E-s20837883466--b8f81280ffca604ce8bde906909f253ddcb94b4e43ae2f2e78db6e692ad2123b.gz/SHA256E-s20837883466--b8f81280ffca604ce8bde906909f253ddcb94b4e43ae2f2e78db6e692ad2123b.gz";
      r2 = "xQ/j3/SHA256E-s21844488159--a7bc3422b649e13a00cfd41643554089baf9ddc7dbf9250b60c280a37badfccb.gz/SHA256E-s21844488159--a7bc3422b649e13a00cfd41643554089baf9ddc7dbf9250b60c280a37badfccb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0132";
      meeting_discussions_follow_up = "RC Meeting 20.04.2023\nDiscussed WES Report for S1 and S2:\n-Limited detection in S2 sample, why it's struggling to call anything. Looks like sample match, lots of overlap between S1 & S2. Either poor quality DNA or sequencing. \n-Myriad Score Aug 2019 sample: 29 - NEGATIVE \n-Methylation on S1 - not methylated \n-BROCA: TP53 (same as WES), gBRCC3 (VUS) and RF1 (not seen in WES) \n-No drug targets, no HRD. \n-MYC amplification useful. \n-To report: MYC amplification and gMUTYH. Mention MSH2 in report although not reportable.\n\nClare's Meeting 30.06.2022\n-New SOLACE2 patient.\n-Send Matt BROCA results for S1. Ratana to check volume of S1 DNA (Box 8, G/7)\n-WES for 2019 S1 and S2 FFPE (B1 for Germline)\n-B2 important for other things like liquid TSO500\n-Asha to extract DNA and RNA on S2 FFPE sample\n\nMeeting notes 2019.09.26\nNothing to do for now ";
      myriad_report = "SFRC01218_MyriadResult_14Mar2023_Redacted.pdf";
      d_case_summary = "HGSOC Pt of Clare's on SOLACE2";
      date_consented = "2019-09-02";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "64yo woman\n\n2019-08: Diagnosed HGSOC FIGO Stage IIIC.\nSurgery:  Primary debulking surgery, laparotomy, left salpingo oophorectomy, pelvic\nperitonectomy and diaphragmatic stripping, partial bladder cystectomy and anterior\nresection with defunctioning ileostomy, omentectomy\nIHC positive: CK7, p53, Pax8 and Ber EP4 (diffuse strong positivity), WT1 (moderate focal positivity), Oestrogen receptors demonstrate moderate, +2 nuclear positivity in approximately 50% tumour nuclei, Progesterone receptors demonstrate moderate, +2 nuclear positivity in approximately 5% tumour nuclei.\n\n2019-09: Blood B1 received. Snap frozen omentum (Tissue S1) received.\n\n2020-01: Completed 6x cycles of carboplatin and Paclitaxel\n\n2020-02: Tested for germline and somatic BRCA mutations, none identified.\n\n2021-12: CT scan: no signs of obvious recurrent disease.\n\n2022-03: Small rise in CA125, might indicate recurrent disease. \n\n2022-06: Blood B2 received. Tumour tissue from surgery (tissue S2) received.\n";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative GIS 29, BRCA negative";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01218";
    capture = CREv2;
  }
