with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VK/Pw/SHA256E-s49712354204--e492909492ad789978708124db66f9cebb89932ccf5892a5c2aabefb5a09f4e9.gz/SHA256E-s49712354204--e492909492ad789978708124db66f9cebb89932ccf5892a5c2aabefb5a09f4e9.gz";
      r2 = "ZG/Qk/SHA256E-s55553602424--5876ee45bca484fe18121aed32953258e5ae30a0053db5053e421df8756f4984.gz/SHA256E-s55553602424--5876ee45bca484fe18121aed32953258e5ae30a0053db5053e421df8756f4984.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "83/JW/SHA256E-s84970369898--3fe53e6444bfcb8c42b7706e45904b01f17e7a16f4dbf1f5a5a60eb01005a53e.gz/SHA256E-s84970369898--3fe53e6444bfcb8c42b7706e45904b01f17e7a16f4dbf1f5a5a60eb01005a53e.gz";
      r2 = "fP/30/SHA256E-s93230026665--d1c8411255b850133ab1c90d8732737148b526b3450e8d39cfbf7f3795819bbf.gz/SHA256E-s93230026665--d1c8411255b850133ab1c90d8732737148b526b3450e8d39cfbf7f3795819bbf.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "fX/k7/SHA256E-s4443411679--1f02e51ed8088838188ace728317819766e08419b2dd18bbd2e947186e16260b.gz/SHA256E-s4443411679--1f02e51ed8088838188ace728317819766e08419b2dd18bbd2e947186e16260b.gz";
      r2 = "g3/Gx/SHA256E-s4499360179--9dc74a8cd76b96054de21f770e2f6cff6a95f4b928be50b751616f1fc3d44dbf.gz/SHA256E-s4499360179--9dc74a8cd76b96054de21f770e2f6cff6a95f4b928be50b751616f1fc3d44dbf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 25.05.2023\nDiscussed WGS report with SFRC data.\n\nClare's Meeting 23.03.2023\n-Have blood \n-For stromal project \n-Do WGTS on S1 OCT tissue";
      date_of_death = "01/2024";
      d_case_summary = "53F with stage IV low grade endometrial stromal sarcoma (arising in endometriosis)\n6/12 of abdominal pain, LOW\n25/8/2021 - TAH   BSO: LG ESS, ER/PR \n3/11/2021 - Commenced provera 200mg daily\n19/1/2023 - PET MRI: suggestive of recurrence\n22/2/2023 - Cytoreduction omental and pelvic recurrence (residual <5mm, non-measurable): LG ESS, CD10 , ER 1-2 /60%, PR 1-2 /60-70%\n8/3/2023 - Observation pending measurable disease (PARAGON-2)\n\npHx: DCIS R breast\nGermline ovarian panel: no HRD/MMR mutation identified";
      date_consented = "2023-02-22";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Low grade endometrial stromal sarcoma of uterus, plus previous DCIS";
      case_details = "53F\n\n2019-09: Dx DCIS\n\n2019-10: Surgery: WLE R) breast\nIHC positive: ER, PR\n\n2020-01: Surgery: Re-excision margins R) breast\n\n2020-02: Surgery: Re-excision margins R) breast\n\n2020-03 - 2020-04: Radiation\n\n2020-04 - 2021-08: Tamoxifen\n\n2021-08: Dx low grade endometrial stromal sarcoma of the uterus, Stage IVB\nSurgery: TAH/BSO\nIHC positive: ER, PR, CD10, SMA (patchy)\nIHC negative: Caldesmon, inhibin, EMA, Cyclin D1\n\n2021-11: Commmenced Provera\n\n2023-01: Recurrence\n\n2023-02: Surgery - pelvic tumour. Fresh tissue S1 received. Blood B1 received. ";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01724_FCPanel_08Oct2021_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01724";
  }
