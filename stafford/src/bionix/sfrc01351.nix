with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4B";
      class = "tumours";
      pdx = false;
      r1 = "W6/57/SHA256E-s12374986305--5cce0886b69d9cb303a2915cc8c765f273890b60a926595943b8f471859b30d7.gz/SHA256E-s12374986305--5cce0886b69d9cb303a2915cc8c765f273890b60a926595943b8f471859b30d7.gz";
      r2 = "xw/51/SHA256E-s13037727140--1c8b013158c261069b1caac5bc72c1d027370942fbb3aa9bcd8bc35ce0c10257.gz/SHA256E-s13037727140--1c8b013158c261069b1caac5bc72c1d027370942fbb3aa9bcd8bc35ce0c10257.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "37/mJ/SHA256E-s5222516974--47ef3568a30ccfb77d2955ab33a5aa9b038b7b7ef0707ac853f6b6af286aa686.gz/SHA256E-s5222516974--47ef3568a30ccfb77d2955ab33a5aa9b038b7b7ef0707ac853f6b6af286aa686.gz";
      r2 = "wz/pj/SHA256E-s5681791127--34e9f7e73c7ac1d7275ca841189820c7674b89f0548263996847484763eda976.gz/SHA256E-s5681791127--34e9f7e73c7ac1d7275ca841189820c7674b89f0548263996847484763eda976.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "26.04.2023\nDiscussed WES report. \nOther somatic variants too low frequency to be drivers. Only FOXL2 reportable. \n\nClare's Meeting 03.11.2022\nDo WES on FFPE Block 4B.";
      d_case_summary = "60 yo female with granulosa cell tumor of ovary. Bloods to be done 9 Feb 2021 interstate.";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "granulosa cell tumor of ovary";
      case_details = "60F\n\n2009: Dx GCT\nSurgery: LSO \n\n2015-09: recurrent GCT. RSO surgery, hysterectomy, omentectomy and debulking \n\n2015-10: Carboplatin and Paclitaxel x 6 \n\n2018-03: Commenced Anastrozole \n\n2020-10: Laparotomy with excision of multiple mets. Peri-hepatic nodule fixed and blocked (Block 4B)\n\n2020-11: Carboplatin and Caelyx x 6 \n\n2021-02: Blood B1 received\n\n2022-05: Commenced Provera. Pt doing well.\n\n2022-10: FFPE Block 4B received.\n\n2022-11: CT scan: Increase in size of peritoneal nodule noted\n\n2022-12: FFPE Block 4B sent for WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "20/09/2022: Oct 2020 sample requested from SSWP pathology by Devindee.\n03/10/2022: Oct 2020 sample block received.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01351";
    capture = CREv2;
  }
