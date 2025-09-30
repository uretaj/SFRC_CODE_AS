with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "jF/kX/SHA256E-s26371245438--1080b2fd7173e03ffb3bcfb340eae3ccabf64fa5281f76465d68646ad0f85116.gz/SHA256E-s26371245438--1080b2fd7173e03ffb3bcfb340eae3ccabf64fa5281f76465d68646ad0f85116.gz";
      r2 = "83/FK/SHA256E-s27119772877--ccedbae0fc38ed11cd79a8ed5098cf54989b21cc4e12708b03f5bdd34d2aa572.gz/SHA256E-s27119772877--ccedbae0fc38ed11cd79a8ed5098cf54989b21cc4e12708b03f5bdd34d2aa572.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9f/0w/SHA256E-s5478497934--aee0b47b4014d509550afa7c1cd66e3f9ccfc4f8c2ca880d040ddda8f8c1280b.gz/SHA256E-s5478497934--aee0b47b4014d509550afa7c1cd66e3f9ccfc4f8c2ca880d040ddda8f8c1280b.gz";
      r2 = "Jx/2w/SHA256E-s5692692250--d7976f54d764ed5b4ccc3230132879a8b78db85fc27d94aaa154286a76dc2c8d.gz/SHA256E-s5692692250--d7976f54d764ed5b4ccc3230132879a8b78db85fc27d94aaa154286a76dc2c8d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "2021.03.11 Clare meeting\nOCT still has no tumour. \nAngela/Clare to contact the doctor about no tumour.\nNo more to be done as patient is deceased.\n\n2021.02.08 Clare and Ratana\nReview of S1 - no tumour. Ratana to get H&E images together to send to Clare and Angela, so they can forward to treating clinicians and other pathologists to review.";
      date_of_death = "02/2021";
      d_case_summary = "62 yo male with primary haemangioendothelioma of the liver.\nLiver biopsy arranged for 22/1/21 could not proceed for safety reasons but bloods were collected - for WGS.\nBiopsy of the pleura is being considered. Sample from lung biopsy collected 29Jan2021.";
      tumour_type = "EHE (Epithelioid HemangioEndothelioma)";
      tumour_details = "epithelioid haemangioendothelioma (EHE) of the liver";
      case_details = "62yo male, EHE\n\n2002: initial diagnosis EHE. No associated ascites.\n\n2003-11: Liver biopsy histopath.\n-Tumour cells IHC positive: CD31, CD34, Factor VIII, \n-CAM5.2, AE1/AE3 positive for hepacytes and and bile ducts, tumour cells negative\n-C-Kit (CD117) focal cytoplasmic positivity in tumour cells, but also present in other non-neoplastic components showed positive staining, therefore may be nonspecific.\n\n2006: 6x cycles of carboplatin and etoposide completed, showing no significant anti-tumour effect. Treatment was discontinued. CT scan showed multiple lung metastases as well as liver disease. \n\n2010: re-examination via CT Scan. No change in lung nodules or liver. No associated ascites, normal respiratory examination, no peripheral lymphadenopathy. No additional intervention required.\n\n2015: CT scans: pulmonary and hepatic lesions stable in size compared to previous study. Increased free fluid around liver, throughout pelvis and and abdomen.\n\n2017: CT scan: stable pulmonary metastases, liver lesion stable. Liver: caudate and left lobe are asymmetrically enlarged. Right lobe not confidently identified. No ascites. No new metastatic disease.\n\n2020: Abdominal ultrasound and CT scans. Liver has cirrhotic appearance with shrunken right lobe and hypertrophied left lobe. Multiple calcific foci along the anterior margin of the right lobe of the liver. Multiple ill-defined hepatic lesions are noted, esp. on left margin and do not have typical appearance for cysts. Potential metastatic disease. Multiple pulmonary nodules in the lung discovered. Moderate amount of ascites.\n\n2021-01: Left pleural biopsy (surgical) tissue S1 processed in lab. OCT showed no tumour, FFPE block A3 recalled.\nTissue also fixed and blocked (FFPE block A3)\nIHC positive: CD31 and CD34 (strong and diffuse), GATA3 (weak and patchy)\nIHC negative: CAM5.2, TTF1, Calretinin, WT1\n\n2021-02: Blood B1 received\n\n2021-02: Deceased\n\n2021-12: FFPE block A3 received.\n\n2022-03: DNA sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2021 lung biopsy block received by Devindee 16/12/2021.";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01368";
  }
