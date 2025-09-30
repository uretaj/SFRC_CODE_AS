with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3C";
      class = "tumours";
      pdx = false;
      r1 = "QK/P1/SHA256E-s13951781758--e35271b71e86b557777a106b36923df8f70a23e83c196fd131c469d80edeb817.gz/SHA256E-s13951781758--e35271b71e86b557777a106b36923df8f70a23e83c196fd131c469d80edeb817.gz";
      r2 = "qk/xz/SHA256E-s14199209880--dfaf3e0c75440014f2b06105c66bb13060d2a2252733ed8de8110c5b6297a276.gz/SHA256E-s14199209880--dfaf3e0c75440014f2b06105c66bb13060d2a2252733ed8de8110c5b6297a276.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "42/8k/SHA256E-s6458982123--b21f3a2b0f588b0438308086affa15184a6f1669657ed6cb691f1a8873e60c23.gz/SHA256E-s6458982123--b21f3a2b0f588b0438308086affa15184a6f1669657ed6cb691f1a8873e60c23.gz";
      r2 = "zg/qx/SHA256E-s6762534813--556bc3b5e5b25e345bd876861a3d4f67a38ef77cad32a743ba58427bec3af9e3.gz/SHA256E-s6762534813--556bc3b5e5b25e345bd876861a3d4f67a38ef77cad32a743ba58427bec3af9e3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 30.03.2023\nDiscussed WES report:\nSomatic FOXL2. A hallmark of GCT. Nothing else found.\n\nClare's Meeting 22.12.2022\nFFPE Block 3C has large volume of tumour, 85-90% purity. Have blood. Good tumour block, to do WES, urgent (because of recurrence).\n\nTissue never recalled in past? FFPE requested 14Nov2022. Patient has recurred again. ";
      d_case_summary = "recurrence of granulosa cell tumour first diagnosed 2012.";
      date_consented = "2021-05-05";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Recurrence of granulosa cell tumour";
      case_details = "46F\n\n2012-03: Dx GCT (benign)\nSurgery: Laparpscopic RSO\n\n2019-09: Dx endometrial polyp (benign)\n\n2021-03: Recurrent GCT, metastases in rectal deposit and omentum.\nSurgery: TLH/BSO. Rectal deposit fixed and blocked (Block 3C)\nIHC positive: ER (2+, 80%), PR (2/3+, 90%)\n\n2021-05: Blood B1 received\n\n2022-04: Biopsies: Gastric, duodenal, rectal lesion. Gastric and duodenal normal. \nRectal lesion: Features consistent with well-differentiated neuroendocrine tumour (carcinoid tumour)\nIHC positive: CK AE1/3, CAM5.2, NSE, CD56, synaptophysin\nIHC negative: chromogranin, EMA\nki67: <2% positive nuclei\n\n2022-11: Progressive disease.\n\n2022-11: Sections from FFPE Block 3C received.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "14/11/2022: 2021 sample requested from RWH pathology by Devindee.";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01405";
  }
