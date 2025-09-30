with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qp/jG/SHA256E-s39150461666--fde0291e790882f0ad9e9e63629653a7a53e2f7806e82dd8f88067ec15921780.gz/SHA256E-s39150461666--fde0291e790882f0ad9e9e63629653a7a53e2f7806e82dd8f88067ec15921780.gz";
      r2 = "4f/fG/SHA256E-s40761645564--d443c8f0dc8a60d06ddd670aad77316a72d263d288bafb115ec7ca8693ce3ed9.gz/SHA256E-s40761645564--d443c8f0dc8a60d06ddd670aad77316a72d263d288bafb115ec7ca8693ce3ed9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "vx/4x/SHA256E-s102572674911--48296008f45a98118e3409465f65a1f88a736e7c89e4a38a15aac70cd8b7e45a.gz/SHA256E-s102572674911--48296008f45a98118e3409465f65a1f88a736e7c89e4a38a15aac70cd8b7e45a.gz";
      r2 = "Kk/qV/SHA256E-s107143783835--b85e0093c12edc7194b0c6c1ca3a4c02c60fb814150a66c0ccdde84fa016134c.gz/SHA256E-s107143783835--b85e0093c12edc7194b0c6c1ca3a4c02c60fb814150a66c0ccdde84fa016134c.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "7Z/Gf/SHA256E-s9462966852--a464e8244cb73a66ddf6f220495157e1c544e9a4e1991c56f6f07e348491eff6.gz/SHA256E-s9462966852--a464e8244cb73a66ddf6f220495157e1c544e9a4e1991c56f6f07e348491eff6.gz";
      r2 = "VV/MK/SHA256E-s9453028877--9b8be87e1082f6ad7c418b78de22eff2da79b32ed179ef54d4b980aaf85997ab.gz/SHA256E-s9453028877--9b8be87e1082f6ad7c418b78de22eff2da79b32ed179ef54d4b980aaf85997ab.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "RC Meeting 17.02.2022\nDiscussed WGS report.\nNotes from Variant meeting: \nInactivating rearrangement of STK11, low WTS (recurrent in CEAD).\nThe MYC fusion results in amplification of MYC.\nJayesh Desai is the PI for PMR-116 (RNA pol I inhibitor) - this is the next CX-5461 \nNot AMG650 or Most Circuit - not for cervical adeno  \nDiscussion: the MYC amp gets her onto the PMR-116 trial.  \nWe have a PDX. Can't quite tell if cervical or not. Ask Gayanie if review has been done. \n\n(Germline STK11 could be a marker of drug sensitivity, can get everolimus. But somatic STK11 may be harbinger of drug resistance. Would like to understand this better in future. ) \n\nMeeting with Clare 18.11.2021\nFresh tissue S1\nExtract DNA and RNA for WGS. Still need blood. ";
      date_of_death = "5/2022";
      d_case_summary = "Rosie McBain, senior Gynae-oncology Fellow consented the patient at Prof Clare Scott's request. She required urgent biopsy following Petermac clinic review. This was arranged urgently in the RWH immediately following clinic as had been discussed in that morning's Petermac MDM. Adenocarcinoma, favoured to be of cervix origin, could be endometrial. HPV-associated probably. WGS will sort this out so need fresh tissue preferably for WGS. Negative cervical screening the year before.";
      date_consented = "2021-10-26";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Cervical adenocarcinoma, but could be endometrial";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01474";
  }
