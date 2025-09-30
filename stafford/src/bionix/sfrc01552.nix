with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "1P/Mq/SHA256E-s13267796116--a7beeaedb65e700957205efbf03f32419365443168ee213b1c2699a91f1ea825.gz/SHA256E-s13267796116--a7beeaedb65e700957205efbf03f32419365443168ee213b1c2699a91f1ea825.gz";
      r2 = "Wm/2z/SHA256E-s14085722444--6d90e738be3afdbe4b929fefd337ec7d0b6f343445e841c9fb2b2800888fba28.gz/SHA256E-s14085722444--6d90e738be3afdbe4b929fefd337ec7d0b6f343445e841c9fb2b2800888fba28.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0w/Pg/SHA256E-s6682954844--5af85e60b1563f29bd821f1f6ca1ac2a2006cd57b547b3e2f035a3873ffc55e2.gz/SHA256E-s6682954844--5af85e60b1563f29bd821f1f6ca1ac2a2006cd57b547b3e2f035a3873ffc55e2.gz";
      r2 = "QG/8x/SHA256E-s7342416671--82f2b03f7ebbdfb32d1af51a91ad7e576b446cd4f51c0bbccb846d0fe75556b5.gz/SHA256E-s7342416671--82f2b03f7ebbdfb32d1af51a91ad7e576b446cd4f51c0bbccb846d0fe75556b5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 13.04.2023\nDiscussed WES report: Only FOXL2 reportable and is known diagnostic biomarker of GCT. \n\nClare's Meeting 03.11.2022\nDo WES on FFPE Block 1J.";
      d_case_summary = "Stage 1C1 Granulosa cell tumour (right ovary with no surface involvement, PR ve, ER- ve), normal left tube/left ovary/omentum, uterus benign endometrial polyp/inactive endometrium/leiomyoma.";
      date_consented = "2022-03-28";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Stage 1C1 Granulosa cell tumour";
      case_details = "47F\n\n2022-02: Dx GCT \nSurgery: TLH, BSO. Tissue fixed and blocked (Block 1J)\nIHC positive: PR (2+, 30%), inhibin, AE1/3\nIHC negative: ER, EMA\n\n2022-10: Blood B1 received. Sections from FFPE Block 1J received.\n\n2022-12: DNA from Block 1J and B1 sent for WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "21/09/2022: Feb 2022 sample requested from RWH pathology by Devindee\n14/10/2022: Feb 2022 sample slides received.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01552";
    capture = CREv2;
  }
