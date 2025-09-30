with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "63/FJ/SHA256E-s20992052963--e1a05d424af4d4983b4adf35fca7fd9c497166ce83b6819f9b83c730f7097fba.gz/SHA256E-s20992052963--e1a05d424af4d4983b4adf35fca7fd9c497166ce83b6819f9b83c730f7097fba.gz";
      r2 = "61/QF/SHA256E-s21165480357--7ddecec2d14258bda9bd2d9c53d4ceabd3f2ba064c627ca056b0cd338d6d1ed5.gz/SHA256E-s21165480357--7ddecec2d14258bda9bd2d9c53d4ceabd3f2ba064c627ca056b0cd338d6d1ed5.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "01/kQ/SHA256E-s6126417109--9d029f6f98555235018fb46d623d0ac7aa78d14d25778dec3045b7f57592285a.gz/SHA256E-s6126417109--9d029f6f98555235018fb46d623d0ac7aa78d14d25778dec3045b7f57592285a.gz";
      r2 = "8G/Gq/SHA256E-s6442329435--4a8589d21ce961fe4188e86522f1059acb313d75538e75db0388321c77521ac5.gz/SHA256E-s6442329435--4a8589d21ce961fe4188e86522f1059acb313d75538e75db0388321c77521ac5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 15.12.2022\nDiscussed WES report:\nGermline VHL mutations, to be reported and FCC to look into - Clare. Somatic SMARCA4 variants to be reported. \n\nPlan: Can send RNA for fusion analysis (all SCCOHT cases)? Add this to a Project Meeting in Feb, to discuss (would like all 5 cases, CIRCOS plots that would be bland). There should be another case in Tasmania. Email to Devindee and Clare, Mandy, Briony - identified SCCOHT summary. Should be 6 cases in total, Devindee to recall the other 2 cases and the 3rd for Clare to find. \n\nClare to check with Paul on Thursday 22nd in FCC meeting relevance of gVHL. Report SMARCA4 variants.  \n\nClare, Ratana, Rachael, Holly 05.09.2022\nFFPE Block1D failed WGS. Send for WES.\n\nClare's meeting 26.08.2022\nSmall cell cancer of ovary, always do WGS regardless of age, and FFPE. Will be bland tumour.  DNA + RNA, maybe do fusion analysis as well. Possibility of nanostring if there is leftover RNA.\n\nEmail from Clare 19.07.2022\nThe FFPE will be for WGS, very rare case";
      d_case_summary = "FIGO IIa, Small Cell Carcinoma of the Ovary Hypercalcaemic Type dx 01Apr22 Treated surgically  TAH BSO 07April22 and PAVEP (Cisplatin, Doxorubicin, etoposide and Cyclophosphamide) from 03May22 ongoing. Otherwise well.";
      date_consented = "2022-05-05";
      tumour_type = "SCCOHT";
      tumour_details = "Small cell carcinoma of the ovary hypercalcaemic type (SCCOHT)";
      case_details = "44yo woman\n\n2022-04: Diagnosed FIGO IIa Small Cell Carcinoma of the Ovary Hypercalcaemic Type, SMARC4 aberrant. Left ovary fixed and blocked (Block 1D)\n-Surgery - hysterectomy, BSO, omentectomy. Ascites \n present.\n-Histopath on frozen sections (Block 1D)\n -IHC positive: WT1, p16, AE1/3; synaptophysin, \n  CD10, EMA (focal positive), CAM5.2 (patchy)\n -IHC negative: PR, ER, GATA3, TTF-1, CK7, CK20, \n  CD56, Napsin A, chromogranin, PAX-8, Claudin-4, \n  claretinin, CDX-2, SATB2, vimentin\n -p53: wild type\n -Ki67: high staining\n -pMMR, no BRAF mutation\n -SMARC4 shows abberant loss \n\n2022-05: Commenced PAVEP chemotherapy (Cisplatin, Doxorubicin, etoposide and Cyclophosphamide)\n\n2022-07: Block 1D received. Blood B1 received. \n\n2022-09: 1D and B1 DNA sent for WGS. Failed QC, sent for WES instead.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01586_ARCPortalLetter_27May22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "18/07/2022: Apr 2022 sample block requested from Royal Hobart Hospital pathology by Devindee. \n30/07/2022: Apr 2022 block received from RHH pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01586";
    capture = CREv2;
  }
