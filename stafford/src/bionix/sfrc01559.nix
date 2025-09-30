with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jf/4x/SHA256E-s40357671756--ebb16ff877a9f5ede8b29be3b5654294ebf463cd7ada38ee3498632987052ea8.gz/SHA256E-s40357671756--ebb16ff877a9f5ede8b29be3b5654294ebf463cd7ada38ee3498632987052ea8.gz";
      r2 = "jM/m1/SHA256E-s42551608235--dfbf66876b517ea26a2186da1e6d13bde63314918378db0e1c69762c016e495f.gz/SHA256E-s42551608235--dfbf66876b517ea26a2186da1e6d13bde63314918378db0e1c69762c016e495f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "0g/KF/SHA256E-s81831238372--7b9ec09a1547e3a575e4b29e848a00be1844109c05256b0900e67db927c9035e.gz/SHA256E-s81831238372--7b9ec09a1547e3a575e4b29e848a00be1844109c05256b0900e67db927c9035e.gz";
      r2 = "15/F0/SHA256E-s85151341206--d9361a2b4e2ef8729b99ead2684a809ab5c09678e6887bcb6139cdef70ab980d.gz/SHA256E-s85151341206--d9361a2b4e2ef8729b99ead2684a809ab5c09678e6887bcb6139cdef70ab980d.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "M3/24/SHA256E-s4658704793--4309db63f741a46a0f1ad1fdd50b2cc34c44f261b02eed6bf505bdcc96e9fe77.gz/SHA256E-s4658704793--4309db63f741a46a0f1ad1fdd50b2cc34c44f261b02eed6bf505bdcc96e9fe77.gz";
      r2 = "gf/0g/SHA256E-s4529943758--45507ba95602f2a68507f6e77d83fd9f824e6e9ad6864c9e8d1ef2fa5ffa861c.gz/SHA256E-s4529943758--45507ba95602f2a68507f6e77d83fd9f824e6e9ad6864c9e8d1ef2fa5ffa861c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "vulval vaginal";
      meeting_discussions_follow_up = "RC Meeting 21.07.2022\nDiscussed WGS report (Grimmond and SFRC).\nIn addition to Grimmond report, NKX2-1 (0.2AF) might be of note, which is an oncogene in lung cancer.\n\nClare meeting 21.04.2022\nTissue S1 OCT for WGS. No Her2 ISH.";
      d_case_summary = "mammary gland tumour of the vulva";
      date_consented = "2022-03-29";
      tumour_type = "Gynae cancer other";
      tumour_details = "mammary gland adenocarcinoma of the vulva";
      case_details = "72yo woman\n\n2022-03: Diagnosed adenocarcinoma of mammary gland type of the vulva\n\nIHC Positive: GATA3\n\nIHC Negative: PAX8, HER2 (1+), p16, CDX2, \n\nMammaglobin: Staining in occasional tumour cells\np53: wild type staining pattern\nOestrogen receptor protein (ER): 3+ intensity staining in 100% of tumour cells\nProgesterone receptor protein (PR): 3+ intensity and 30% of tumour cells\nSMM: Non-specific staining of stromal cells\n\n2022-04: Blood B1 received. Tissue S1 from surgery received.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01559";
  }
