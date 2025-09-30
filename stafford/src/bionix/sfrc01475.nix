with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "93/23/SHA256E-s24545310577--fd36cc0673a7e91c46f59639c736b5cde40275de8e8ca97e5b01f65c52171ff8.gz/SHA256E-s24545310577--fd36cc0673a7e91c46f59639c736b5cde40275de8e8ca97e5b01f65c52171ff8.gz";
      r2 = "pM/Gv/SHA256E-s25205683005--92919d686087d40c2c8ced90b7ca0f57eb9f543db8ec71bd38a4d7dec4b77233.gz/SHA256E-s25205683005--92919d686087d40c2c8ced90b7ca0f57eb9f543db8ec71bd38a4d7dec4b77233.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      disable = true;
      r1 = "0Q/mK/SHA256E-s5773086274--9992ce670f1a72071afa35835533a6752ad2fdf5d422f720a14b3ea947e8d577.gz/SHA256E-s5773086274--9992ce670f1a72071afa35835533a6752ad2fdf5d422f720a14b3ea947e8d577.gz";
      r2 = "f7/Xw/SHA256E-s6048098660--c3e0aec677a31d6e2660d7c6e4066ad3af5bcd7c7b7bd61cb46afb356698941c.gz/SHA256E-s6048098660--c3e0aec677a31d6e2660d7c6e4066ad3af5bcd7c7b7bd61cb46afb356698941c.gz";
    }
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "4x/pF/SHA256E-s6453026153--902ea0dcd5f65f6d7ecc3ac3c48ce735b1c0f73807e4bb13f9c578a1f1abe91c.gz/SHA256E-s6453026153--902ea0dcd5f65f6d7ecc3ac3c48ce735b1c0f73807e4bb13f9c578a1f1abe91c.gz";
      r2 = "VV/90/SHA256E-s6744739818--37723fa7a7e0590d1ad231d7aeb97676966fa0a9cfaeee00ddfa7d5903f3e2f8.gz/SHA256E-s6744739818--37723fa7a7e0590d1ad231d7aeb97676966fa0a9cfaeee00ddfa7d5903f3e2f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.03.2023\nDiscussed WES report (with B2 DNA)\n-TP53 has CN 2 - copy neutral LoH\n-No SMC - new uLMS gene of interest\n-This is a uLMS desert--no hallmark genes seen, or at too low frequency to be reportable. There is good germline/somatic coverage despite only 85 filtered germline variants.\n-1533 - cervical LMS also desert.  \n-Both of these on proteomics project. Give to Tony for desert project and send for proteomics (Briony) if not already done - sent! \n-Report out as no actionable findings. \n\n12.12.2022 -  Pericardial window procedure to drain fluid at MPH. Bloods collected, but no tissue.\n\nClare's meeting 16.06.2022\nGermline DNA extracted from 'blood pellet', 120ng/ul. WES to go ahead with germline DNA + FFPE block A4. Leave TSO500 for now.  \n\nBriony at WES meeting 02.06.2022\nBlood for this patient too hard to obtain (1x STRECK three weeks at ambient, still in transit). Send tumour DNA for TSO-500 in the meantime and look into eyebrow hair extraction at a later date.\n\nClare's Meeting 30.05.2022\nWES on Block A4. Leave Block C as no tumour.";
      d_case_summary = "Uterine LMS, ER \nMyomectomy -> TAHBS 2102\nRecurrent disease (R) lung / pleura 07/2021";
      date_consented = "2021-10-26";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "2012-04: Dx uLMS\nSurgery: Myomectomy (FFPE Block C)\nIHC positive: SMA\n\n2012-08: Surgery: TAHBS (preserved ovaries)\nIHC positive: ER\n\n2021-07: Recurrent disease (R) lung/pleura. \n\n2021-09: Surgery: Pleural mass biopsy (FFPE Block A4)\nMalignant epithelioid tumour, consistent with metastatic epithelioid leiomyosarcoma.\nIHC positive: ER, PR, SMA (patchy), cytokeratin mix (A1/3A+CAM, patchy in a minority of cells)\nIHC negative: CD45 (LCA), S100, CD10, desmin, myosin HC-SM, caldesmon, CD117, HMB45\nKi-67: 30-40%.\n\n2021-09: BRCA tissue test: No pathogenic variants detected. \n\n2021-11 - 2022-01: Chemotherapy: Anastrozole and Radiation.\n\n2022-01: Chemotherapy: Docetaxel/Gemcitabine\n\n2022-05: Blocks C and A4 received. Block C has no tumour. \n\n2022-06: Blood B1 received - DO NOT USE THIS BLOOD\n\n2022-09: B1 and Block A4 DNA sent for WES. Results uncertain; likely due to B1 being stuck at ambient temp in the post for 3 weeks. Order new blood.\n\n2022-12: Blood B2 received.\n\n2023-01: B2 DNA sent for WES to be analysed with Block A4.\n";
      brca_report = "SFRC01475_BRCAPanel_15Dec2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA1/2 WT";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "21/04/2022: 2012 sample requested from DHM pathology by Devindee. \n21/04/2022: Sept 2021 sample requested from Alfred pathology by Devindee. \n06/05/2022: 2012 sample block received from DHM pathology by Devindee. \n06/05/2022: 2021 sample block received from Alfred pathology by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01475";
    capture = CREv2;
  }
