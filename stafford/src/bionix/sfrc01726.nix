with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k4/FW/SHA256E-s52998592727--93a071d228d30d6b4c3d56f63fe1b78392bf486b8e53aba0e27d6e3d737bb239.gz/SHA256E-s52998592727--93a071d228d30d6b4c3d56f63fe1b78392bf486b8e53aba0e27d6e3d737bb239.gz";
      r2 = "Wq/qX/SHA256E-s59249840708--73aefb98fec71580f3fa6e9447ba6872bda8e172cdf3e0ace371cf025bb99e3d.gz/SHA256E-s59249840708--73aefb98fec71580f3fa6e9447ba6872bda8e172cdf3e0ace371cf025bb99e3d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "KQ/6q/SHA256E-s140971977142--820569169840deb5274b660a4bb6b768d462d9cf79501e2efadffd6e4cd2b535.gz/SHA256E-s140971977142--820569169840deb5274b660a4bb6b768d462d9cf79501e2efadffd6e4cd2b535.gz";
      r2 = "fz/MF/SHA256E-s149695299773--6703f0aff4252c112b862bc3fc168c230a152ae1c95091d0e69e46e10dc0b9c9.gz/SHA256E-s149695299773--6703f0aff4252c112b862bc3fc168c230a152ae1c95091d0e69e46e10dc0b9c9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nTypical uLMS findings.\nATRX HP frequency close to tumour purity (CN model gave 60% but variant HF values suggest 35-40%) \nStructural variants look very interesting (Jennifer Ureta) \n\nClare's Meeting 20.04.2023\nReviewed S1 tissue\n60 - 80% purity in small areas. See if there is a diagnostic block from this procedure as this S1 - to do TSO500 (Ratana emailed Briony and Monica 21.04.2023). On the OCT, do DNA only WGS. Can ask Joep if no RNA data is helpful in this case. ";
      d_case_summary = "66F w Hx uterine malignancy ?ESS ?LMS in SriLanka 2018. No histo in Aus.\nPET hot spots in T1 vertebra and RLL lung. Bx of T1 was normal in 2021";
      date_consented = "2023-02-25";
      tumour_type = "uLMS";
      tumour_details = "?ESS, ?uLMS\nWGS indicates is uLMS";
      case_details = "Female, 66 yo, initial diagnosis path report in India and no diagnosis tissue available in Australia \n\n2018-06: Initial Diagnosis Uterine malignant neoplasm \n\n2018-07: TAHBSO (Sri Lanka) \n\n2018-08 - 2018-09: Radiation \n\n2019-11 Radiation Pelvis (Sri Lanka) Given for presumed bone met's (no Bx) \n\n2019-11 - 2020-01 Medical Treatment Oral cyclophosphamide 50mg daily / zoledronic acid (Sri Lanka) Cyclo - ceased on immigration to Australia Given for presumed bone met \n\n2023-02: Oncologist plan: Refer to thoracic surg for resection lung nodule. Needs tissue to pathology + Needs somatic BRCA if LMS confirmed  \n\n2023-03: Blood B1 received. Tissue S1 from biopsy received \nIHC negative: Cytokeratin (AE1/AE3, CAM5.2, HMWCK/34BE12), WT1, ER, TTF-1, SF1, INSM1, synaptophysin, desmin, HMB-45, Melan-A, calretinin, CD10, CD 34, KIT, DOG1, STAT6, CD56, ERG, S100, SOX-10, NUTM1, panTRK, CD45 and CD30, RB1, ATRX, and PTEN \nIHC positive: P53 \nCD99 and SMA weak, INI1 and BRG1 retained \nThe cuboidal and glandular cells express AE1/AE3, CAM5.2. HMWCK/34BE12 and TTF1 are interpreted as entrapped lung epithelium rather than tumour. \nPAX8 weakly stains some cells of uncertain type  \n\nDiagnosis: Possible metastatic uLMS, the differential includes an undifferentiated primary or metastatic sarcoma, carcinoma or melanoma. Endometrial stromal sarcoma would be more likely. \n\nOPA NGS +/- RNA NGS to follow ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01726";
  }
