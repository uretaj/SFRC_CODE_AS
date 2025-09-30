with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 30;};})];
}; let
  samples = [
    {
      site = "1IPX";
      class = "tumours";
      pdx = false;
      r1 = "Q6/2P/SHA256E-s23264734599--4c75d80d918edcec148fe85e14a5493536ba8d94b118f61c55fb89bd2003fc3a.gz/SHA256E-s23264734599--4c75d80d918edcec148fe85e14a5493536ba8d94b118f61c55fb89bd2003fc3a.gz";
      r2 = "14/1q/SHA256E-s24004646224--1215462b4892fd543dae657792d8d4d570dfd161f32baf79bf9d9940bcaf2fba.gz/SHA256E-s24004646224--1215462b4892fd543dae657792d8d4d570dfd161f32baf79bf9d9940bcaf2fba.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3g/GQ/SHA256E-s6871116507--c278aba5a99ed1ca98dd8a2b919d0cf7156268ebcff1fa3eabed2fdfc21661f1.gz/SHA256E-s6871116507--c278aba5a99ed1ca98dd8a2b919d0cf7156268ebcff1fa3eabed2fdfc21661f1.gz";
      r2 = "gx/XF/SHA256E-s7075108468--f41b3db5795fe31c4fafe107855cd36bfd34857f40d8ebf49ce88cf7d72b6abe.gz/SHA256E-s7075108468--f41b3db5795fe31c4fafe107855cd36bfd34857f40d8ebf49ce88cf7d72b6abe.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block 1IPX\n\nRC Meeting 15.12.2022\nDiscussed WES Report for Block 1IPX:\n-Seems non-HRD, a lot going on, but no actionable targets.\n-Can ask Kate Sutherland significance of KEAP1 amplifcation (CN 18), but it might be a passenger event. \n-Send to Damien, Clare, Briony, Mandy and Matt to mock up. Clare to see how urgent patient is. \n-Mandy to speak to Clare about it in early Jan.\n\nClare's Meeting 30.06.2022\n2 Primary case. Do WES on FFPE block 1IPX";
      d_case_summary = "Hgsoc First diagnosed 2008, splenic recurrence 2013, rectal receurrence and liver Met resected at epworth recently after 6 cycles of chemo.\nBrca WT last done 3 years ago and somatic WT";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC\nAlso breast cancer";
      case_details = "2008-03: Initial diagnosis: FIGO Stage IIIc HGSOC, BRCA wildtype. Optimal Debulk followed by 6 cycles of Carboplatin and Paclitaxel.\n\n2013-01: Splenectomy for recurrence\n\n2019- Ca Breast- WLE and adjuvant Arimidex (currently on Arimidex)\n\n2021-05: Colonoscopy revealed large rectal mass- high grade serous carcinoma (PAX8 and CK7 pos). CT and PET confirmedb12 cm pelvic mass with associated nodal involvement of pelvis and paracolic nodes with a single liver metastasis. Somatic BRCA wildtype\n\n2021-05 - 2021-10: 2L Carboplatin and Paclitaxel x 6. Started Niraparib 300mg but intolerant after 2 days, then 200mg and arthralgi ++ and stopped due to surgery.\n\n2021-12: Low anterior resection, en bloc small bowel resection, liver resection. Diagnosed high\ngrade serous carcinoma in rectum. Commenced Niraparib.\n\nHistopath on colon (Block 1IPX)\nIHC positive: CK7, PAX8 (patchy), p53 (strong) & consistent with origin from HGSC of female genital tract.\nIHC negative: CK20, ER, PR, HER2\nPreserved staining for MLH1, PMS2, MSH2, MSH6.\n\n2022-02: Relapsed HGSOC\n\n2022-05: Blood B1 received. Block 1IPX (rectosigmoid colon) received.\n\n";
      brca_report = "SFRC01568_sBRCAPanel_26Jul2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01568_FCPanel_19Jul2018_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "22/04/2022: Dec 2021 sample requested from AnatPath pathology by Devindee. \n23/05/2022: Dec 2021 sample block received from AnatPath pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "2 Primary Breast Ovary only";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01568";
    capture = CREv2;
    predictNeoantigens = true;
  }
