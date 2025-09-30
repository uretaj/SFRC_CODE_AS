with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "G4/Pm/SHA256E-s1884578323--892c8d144ba6bd8308750df893be7afb7ddb8f6aa22938d35e9e9eb7baa4a305.gz/SHA256E-s1884578323--892c8d144ba6bd8308750df893be7afb7ddb8f6aa22938d35e9e9eb7baa4a305.gz";
      r2 = "W1/j2/SHA256E-s1849727933--7d5e4620f2482bfb50fb235c3a19fa7657540cbb16b914c769d5abc53b61223f.gz/SHA256E-s1849727933--7d5e4620f2482bfb50fb235c3a19fa7657540cbb16b914c769d5abc53b61223f.gz";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "w4/vq/SHA256E-s1911864575--4146b79e41fcaa8c8a2b385a53cc45189dca10ee8b7777945d21c43a62949b2d.gz/SHA256E-s1911864575--4146b79e41fcaa8c8a2b385a53cc45189dca10ee8b7777945d21c43a62949b2d.gz";
      r2 = "FJ/f4/SHA256E-s1879810572--a0d1b63b3646655578acbf0150b94db3b0db810fa96953672d8ec1e3998721fc.gz/SHA256E-s1879810572--a0d1b63b3646655578acbf0150b94db3b0db810fa96953672d8ec1e3998721fc.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1k/pw/SHA256E-s1499763081--940b43e86656e25163ad15537ccee62d349b94284e92061679d7c9c59bebdd2d.gz/SHA256E-s1499763081--940b43e86656e25163ad15537ccee62d349b94284e92061679d7c9c59bebdd2d.gz";
      r2 = "f3/2G/SHA256E-s1563665714--a7c55d3bccff876cae0eb76a23da3162685cf57c5436048369639a14b7be7484.gz/SHA256E-s1563665714--a7c55d3bccff876cae0eb76a23da3162685cf57c5436048369639a14b7be7484.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Wq/Pp/SHA256E-s1577108258--ba0b3717bcdff0248a9905cae058369b88ba1705d0520dc3a58533b4bc603c89.gz/SHA256E-s1577108258--ba0b3717bcdff0248a9905cae058369b88ba1705d0520dc3a58533b4bc603c89.gz";
      r2 = "wx/P9/SHA256E-s1648770167--0df06ab92ad40007999c92ccc19a593b8e87aeb663bb0e1e36f9e0f3ab3eaf08.gz/SHA256E-s1648770167--0df06ab92ad40007999c92ccc19a593b8e87aeb663bb0e1e36f9e0f3ab3eaf08.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Lucy's follow up email on 18.10.2023:  Documentation of the Lynch syndrome diagnosis is also now on redcap too and I've added it to the draft WES report.\n\nRC Meeting 12.10.23\nTWIST WES on FFPE Block 1B\n- MSI, High TMB \n- Germline MSH2 variant is a VUS. Can't find data in Redcap for the testing for this germline variant that led to Lynch Syndrome diagnosis \n- Reportable somatic MSH2 variant \n- Pathogenic somatic variants other than MSH2 artefactual? No...real. Frame in the context that there are extra variants but not at frequencies consistent with them being drivers. \n\nBriony - are you able to please find the germline testing results (for MSH2) and add to redcap \n\nClare's Meeting 10.03.2023\nTo do WES on FFPE Block 1B as patient is dMMR. \n\n";
      d_case_summary = "49yo female with Stage IC 1 grade 2 endometrioid ovarian cancer - platinum-resistant\n- 2021 TAH BSO and staging \n- lmmunohistochemistry with loss ofMSH2 and MSH6. \n- lymphadenectomy was considered, however, not performed due to MDT consensus for adjuvant chemotherapy as staging IC \n       1 due to intraoperative spill. \n- Underwent four cycles of adjuvant chemotherapy with three-weekly carboplatin and paclitaxel until November 2021. \n- Jan 2021 - CA-125 persistently elevated at the end of chemotherapy at 39.\n\nMoST participant.";
      tso500_external = "SFRC01590_MoST_Panel_3Aug2022_Redacted.pdf";
      date_consented = "2022-04-12";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Endometrioid ovarian cancer, Stage IC1 grade 2";
      case_details = "50F\n\n2021-07: Dx Stage IC1 grade 2 endometrioid ovarian cancer (Block 1B)\nSurgery: TAH/BSO\nIHC positive: ER and PR (strong patchy)\np53: wild type\ndMMR: Loss of staining of MSH2 and MSH6. Lynch Syndrome confirmed upon finding germline MSH2 mutation.\n\n2021-11: Completed 4x cycles of carboplatin/paclitaxel\n\n2022-03: Dx metastatic endometrioid ovarian adenocarcinoma to rectum\nIHC positive: ER, CK7\nIHC negative: PR, CK20, WT1, SATB2\ndMMR: Loss of expression of MSH2 and MSH6. MLH1 and PMS2 retained.\n\n2022-06: Blood B1 received.\n\n2023-01: FFPE Block 1B received.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01590_FCC_Report_17June2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "30Jan2023: July 2021 sample received from Mater by Briony\n21/06/2022: July 2021 sample requested from Mater pathology by Devindee.";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01590";
  }
