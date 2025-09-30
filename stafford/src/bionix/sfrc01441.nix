with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D11U";
      class = "tumours";
      pdx = false;
      r1 = "59/0F/SHA256E-s19693224575--f92f73fcb592f77acfd1e12c936c4c7f23dc074370b8b24258837a45278a01b8.gz/SHA256E-s19693224575--f92f73fcb592f77acfd1e12c936c4c7f23dc074370b8b24258837a45278a01b8.gz";
      r2 = "11/mZ/SHA256E-s20423042117--73defc131d8c2428f4d6c7c32ba3817ea5d9018ca0e189d6b7071f1e03a4b881.gz/SHA256E-s20423042117--73defc131d8c2428f4d6c7c32ba3817ea5d9018ca0e189d6b7071f1e03a4b881.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "F5/QW/SHA256E-s4735599000--dcd165c33793cd0319c2eaf49c87b72c7ba2b5c7b19f47f20790de9e0622b6db.gz/SHA256E-s4735599000--dcd165c33793cd0319c2eaf49c87b72c7ba2b5c7b19f47f20790de9e0622b6db.gz";
      r2 = "gJ/GK/SHA256E-s4951903945--e60cb5f07b53e397d573a1ab63c4814e4246a4c5bbada0e9681cd587e898c166.gz/SHA256E-s4951903945--e60cb5f07b53e397d573a1ab63c4814e4246a4c5bbada0e9681cd587e898c166.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2021.09.24\nSFRC01441_1D11U:Do WES when blood arrives \nRas/Raf pathway of interest, including RASA1. Use SFRC01192 WGS as a reference";
      date_of_death = "06/2023";
      d_case_summary = "Advanced LGSOC on AI, diagnosed 2011.\n Previous history of a Stage 3B low grade serous CA dx in 2011\n Primary RSO, sigmoid colectomy, ometecomy and colostomy formation 18/10/11\n Completed carbo/taxol adjuvant chemo 22/3/12\n Relapse March 2014\n Enrolled on the Paragon study and has been on arimidex since 2014\n March 2021 had symptoms from the inguinal node and had a lymph node dissection\n\nrequest for molecular test advice/ interpretation";
      date_consented = "2021-07-15";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "71 year old female \n\n2011: diagnostic Advanced LGSOC on AI. Previous history of a Stage 3B low grade serous CA dx  \n\n10-2011 :Primary RSO, sigmoid colectomy, ometecomy and colostomy formation  \n\n03-2012: Completed carbo/taxol adjuvant chemo  \n\n03-2014: Relapse, enrolled on the Paragon study and has been on arimidex, commence anastrozole \n\n03-2021: had symptoms from the inguinal node and had a lymph node dissection \nBlock 1D11U received, sent for WES, 70% tumour purity)\n\nIHC: ER, PAX8 and CK7 positive \n\n2021-11: Blood B1 received \n\nrequest for molecular test advice/ interpretation ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01441_ARCPortal_04Aug2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Block requested from Dorevitch by Warren 18/08/21, received 14/9/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01441";
  }
