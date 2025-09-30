with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wP/9P/SHA256E-s2616185302--b4ab7fe5e1d2f695312ee2cb485cb5de629da1e23efc4b4ba1ee075eda012737.gz/SHA256E-s2616185302--b4ab7fe5e1d2f695312ee2cb485cb5de629da1e23efc4b4ba1ee075eda012737.gz";
      r2 = "4j/wG/SHA256E-s2618101039--941c58b5627b0a6bd4a38465c084726b55b4f313a5948363ac299362c3ea465f.gz/SHA256E-s2618101039--941c58b5627b0a6bd4a38465c084726b55b4f313a5948363ac299362c3ea465f.gz";
    }
    {
      site = "B9";
      class = "tumours";
      pdx = false;
      r1 = "fg/jv/SHA256E-s13516324136--55d542ce690eb73c878c9612d4b9278568db4b749a2891c4c1960f1064a99311.gz/SHA256E-s13516324136--55d542ce690eb73c878c9612d4b9278568db4b749a2891c4c1960f1064a99311.gz";
      r2 = "jF/j8/SHA256E-s13661631488--53d36a5d9f42c3f74a9b3ae0896ca8e71e6ac4bbaafa9cadec681d188d4d37a7.gz/SHA256E-s13661631488--53d36a5d9f42c3f74a9b3ae0896ca8e71e6ac4bbaafa9cadec681d188d4d37a7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 22.07.2021\nDiscussed WES results.\nTMB 16, but tumour purity 0.32 from Facets tool, but top HF is 0.59, so purity underestimated, and approx 60% is truer value. This makes top COSMIC gene somatic mutation Adjusted HF=0.3 \nTMB - not high \nZNF521 - 14 copies - not sure of significance \nSomatic mutations - BRAF (0.6), PIK3CA hotspot mutation (0.3?),  ?VWF (0.15), MYC (0.24) potentially interesting, ARID1A fs (0.6) of note \nExtensive LOH \n\nClare meeting 08.04.2021\nReviewed B3 and B9 samples. Extract DNA from B9 for WES";
      d_case_summary = "61yo F with Stage IVB mucinous adenocarcinoma: suspected gynaecologic primary\nPresented with 3-4 weeks of crampy abdominal pain and associated 6kg weight loss.\nDiagnostic laparoscopy (converted to laparotomy) 10/12/2020: Modified radical hysterectomy, bilateral salpingo-oophorectomy, pelvic peritonectomy, rectosigmoid resection with Hartmann's procedure and formation of colostomy, infragastric omentectomy, pelvic node dissection. Intraoperatively: extensive peritoneal disease and omental cake, bulky uterus and ovaries, and a lesion involving rectosigmoid colon requiring Hartmann's procedure. \nPathology discussed in Gynaeoncology MDT:  Microscopically, there was mucinous adenocarcinoma involving the uterus, cervix and bowel, which was involved from lumen rather than epithelial into bowel. Adenocarcinoma of mucinous variant (gastric type) raising the possibility of primary cervix vs possible upper GI primary with metastases vs atypical endometrial origin. \nHistopathology: mucinous adenocarcinoma, positive for AE1/AE3, CK7, CEA (patchy), p16 (weak patchy), MUC1 (strong diffuse), MUC5AC (patchy), MUC6. Negative by IHC for GATA3, ER, CDX2, TTF1, CK20, WT1, PAX8, Her2 (0) and MUC2. P53: wildtype staining. pMMR. Majority of tumour bulk present in cervix, endometrium and myometrium, with involvement of fallopian tube and ovaries, and metastatic disease to bowel. IHC staining pattern seen in endometrial, biliary, pancreatic and upper gastrointestinal tumours. \nGastroscopy 18/12/2020: no obvious malignant appearing lesions, biopsies negative for malignancy.\nPET scan 8/1/2021: No occult pancreatic or other upper GI or alternate primary. Residual disease in peritoneum as well as peri-umbilical area. Focal avid liver lesions in segment 6/7 and 5/6 suspicious for metastases. Bilateral common iliac, external iliac, inguinal and left para-aortic avid lymphadenopathy. Subcm non-specific lung nodules.\nCommenced carboplatin/ paclitaxel 22/01/2021.\nPlanned referral to MoST.\nBlock requested from St George's Hospital, NSW on 13/2/21 by Warren. For WES. Bloods to be done on 6 April, 2021.";
      tumour_type = "Gynae cancer other";
      tumour_details = "Stage IVB mucinous adenocarcinoma: suspected gynaecologic primary";
      case_details = "61yo F with Stage IVB mucinous adenocarcinoma: suspected gynaecologic primary\nPresented with 3-4 weeks of crampy abdominal pain and associated 6kg weight loss.\nDiagnostic laparoscopy (converted to laparotomy) 10/12/2020: Modified radical hysterectomy, bilateral salpingo-oophorectomy, pelvic peritonectomy, rectosigmoid resection with Hartmann's procedure and formation of colostomy, infragastric omentectomy, pelvic node dissection. Intraoperatively: extensive peritoneal disease and omental cake, bulky uterus and ovaries, and a lesion involving rectosigmoid colon requiring Hartmann's procedure. \nPathology discussed in Gynaeoncology MDT:  Microscopically, there was mucinous adenocarcinoma involving the uterus, cervix and bowel, which was involved from lumen rather than epithelial into bowel. Adenocarcinoma of mucinous variant (gastric type) raising the possibility of primary cervix vs possible upper GI primary with metastases vs atypical endometrial origin. \nHistopathology: mucinous adenocarcinoma, positive for AE1/AE3, CK7, CEA (patchy), p16 (weak patchy), MUC1 (strong diffuse), MUC5AC (patchy), MUC6. Negative by IHC for GATA3, ER, CDX2, TTF1, CK20, WT1, PAX8, Her2 (0) and MUC2. P53: wildtype staining. pMMR. Majority of tumour bulk present in cervix, endometrium and myometrium, with involvement of fallopian tube and ovaries, and metastatic disease to bowel. IHC staining pattern seen in endometrial, biliary, pancreatic and upper gastrointestinal tumours. \nGastroscopy 18/12/2020: no obvious malignant appearing lesions, biopsies negative for malignancy.\nPET scan 8/1/2021: No occult pancreatic or other upper GI or alternate primary. Residual disease in peritoneum as well as peri-umbilical area. Focal avid liver lesions in segment 6/7 and 5/6 suspicious for metastases. Bilateral common iliac, external iliac, inguinal and left para-aortic avid lymphadenopathy. Subcm non-specific lung nodules.\nCommenced carboplatin/ paclitaxel 22/01/2021.\nPlanned referral to MoST.\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Block recalled by Warren on 13/02/21\nReceived by Warren on 15/03/21\nB9 block received by Warren 22/03/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01375";
  }
