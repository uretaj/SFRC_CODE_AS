with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4.1";
      class = "tumours";
      pdx = false;
      r1 = "MV/jZ/SHA256E-s17534376090--e9e921ea288675612170fe9dbb8cc96239e2baf5201805a8993f485b8f659c85.gz/SHA256E-s17534376090--e9e921ea288675612170fe9dbb8cc96239e2baf5201805a8993f485b8f659c85.gz";
      r2 = "4q/0K/SHA256E-s17898896137--2a2ad8ea017d38b000ce65bd835929cf5896a1ea558a8e365dddafaef2a30b6a.gz/SHA256E-s17898896137--2a2ad8ea017d38b000ce65bd835929cf5896a1ea558a8e365dddafaef2a30b6a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "z4/3j/SHA256E-s6989694727--fe3dd5d9d7b7683137a84f1fcd2dc60e40301425371f4950310c039e3f002e06.gz/SHA256E-s6989694727--fe3dd5d9d7b7683137a84f1fcd2dc60e40301425371f4950310c039e3f002e06.gz";
      r2 = "0K/44/SHA256E-s7096958345--42a5dc83bc02b02802418345d4b2d462a6a3592f7cc92e84915a29b16a8c534d.gz/SHA256E-s7096958345--42a5dc83bc02b02802418345d4b2d462a6a3592f7cc92e84915a29b16a8c534d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 03.08.2023\nDiscussed WES report:\n-No reportable germline variants. \n-Reportable FOXL2 somatic variant and potentially reportable TGFBR2 variant (low HF). \n\nClare's Meeting 22.12.2022\nFFPE Block 4.1 (Same as S1 - S4 surgery) has large volume of tumour, 85-90% purity. Have blood. To do WES.\n\nClare's Meeting 17.11.2022\nS1 - S4 tissue has no tumour despite multiple metastases found. Briony emailed Olga to let her know none of our tissue had tumour (on 10.11.2022) and Clare will send histopath report to Stephen to recall appropriate FFPE blocks.";
      d_case_summary = "Granulosa cell tumour dx 2011";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "GCT";
      case_details = "2011-05: Dx ovarian GCT\nSurgery: RSO\n\n2018-02: Peritoneal recurrence of GCT via laparoscopy.\nSurgery: Lapararomoty\n\n2020-02: Letrozole treatment finished\n\n2020-10: Progressive disease.\n\n?2021: Bevacizumab and cyclophosphamide\n\n2022-10: Dx metastatic cervical cancer\nSurgery. Fresh tissue S1 - S4 received (no tumour in any specimens). Blood B1 received.\nIHC performed on metastasis on liver surface:\nPositive: PR (5, 2+, 7/8), inhibin\nNegative: ER (2, 1+, 3/8)\nLeft paracolic gutter fixed and blocked (Block 4.1)\n\n2022-11: FFPE Block 4.1 (Same as S1 surgery) received.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "14/11/2022: Oct 2022 sample requested from PMC pathology by Devindee.\n21/11/2022: Oct 2022 block received.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01665";
    capture = CREv2;
  }
