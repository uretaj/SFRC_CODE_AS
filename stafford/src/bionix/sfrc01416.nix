with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "gv/70/SHA256E-s14697723803--be107e45816320e4503d1d1f6a6d51a0eea293c85069cf2bf566e96785b6fba5.gz/SHA256E-s14697723803--be107e45816320e4503d1d1f6a6d51a0eea293c85069cf2bf566e96785b6fba5.gz";
      r2 = "mv/Wx/SHA256E-s13736490473--7a3a9eb2eb143e078c5d2652a26e698ab40a0ac13294f96f2d04fde8374ac552.gz/SHA256E-s13736490473--7a3a9eb2eb143e078c5d2652a26e698ab40a0ac13294f96f2d04fde8374ac552.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "K3/95/SHA256E-s6029884069--3e05cd38fca33eb2d1c9c534965b8a6c56067a7b9367d265f44baea46c0d0a7b.gz/SHA256E-s6029884069--3e05cd38fca33eb2d1c9c534965b8a6c56067a7b9367d265f44baea46c0d0a7b.gz";
      r2 = "Jp/z5/SHA256E-s6235696009--8da739fe68f84de00c0b2318408d83c9c5ce67eea2a8b2cc96c7ef4cac5a0557.gz/SHA256E-s6235696009--8da739fe68f84de00c0b2318408d83c9c5ce67eea2a8b2cc96c7ef4cac5a0557.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2J/fw/SHA256E-s3422917875--ab12437d9d78aea12f6fc058bc46b0f6240ae93102a5f0b2d707ccffb967361b.gz/SHA256E-s3422917875--ab12437d9d78aea12f6fc058bc46b0f6240ae93102a5f0b2d707ccffb967361b.gz";
      r2 = "kV/4z/SHA256E-s3271230803--67c1859c965ffdada66686f8610230bf6ec32e7a98ee738feb11f98c98df694b.gz/SHA256E-s3271230803--67c1859c965ffdada66686f8610230bf6ec32e7a98ee738feb11f98c98df694b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9v/FF/SHA256E-s1331231324--2edefe488125de6c82c777f0dd52ca50d6cb66e87b4fd11a5aba50922c3c8464.gz/SHA256E-s1331231324--2edefe488125de6c82c777f0dd52ca50d6cb66e87b4fd11a5aba50922c3c8464.gz";
      r2 = "W4/Qz/SHA256E-s1403025754--d499050e624d579cb42415759e442eb4f47d85fec1a3b4a1b672f3fa4a363efa.gz/SHA256E-s1403025754--d499050e624d579cb42415759e442eb4f47d85fec1a3b4a1b672f3fa4a363efa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2021.07.29\nSFRC01416_1A, make DNA, do WES\n\nClare's meeting notes 2021.07.01\nPlan: Briony to let Clare know there was no tumour in sample. They will find out surgeon and find diagnostic  FFPE block - Warren to recall  \nDo WES on FFPE block. ";
      d_case_summary = "82 year old female with small cell carcinoma of the endometrium. Tissue and bloods collected from surgery on 8/06/2021.\nJulie Lamont sent email after surgery- \"there didn't appear to be a lot of gross tumour\"";
      date_consented = "2021-06-01";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "small cell carcinoma of the endometrium";
      case_details = "82 year old female with small cell carcinoma of the endometrium. Tissue and bloods collected from surgery on 8/06/2021. \n\nJulie Lamont sent email after surgery- \"there didn't appear to be a lot of gross tumour\" ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2021 D&C sections received by Warren 20/7/21 from Epworth Pathology";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01416";
  }
