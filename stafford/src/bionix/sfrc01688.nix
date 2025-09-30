with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2Q/QG/SHA256E-s25689777481--6566336ac92c9ee4a382e36d55110ccc27f062b3541ff66e7caa97cfe3f6adac.gz/SHA256E-s25689777481--6566336ac92c9ee4a382e36d55110ccc27f062b3541ff66e7caa97cfe3f6adac.gz";
      r2 = "W3/z1/SHA256E-s28031184497--d9f518e30ab62d92d08be810fe68f50857d5e5e368888e18cccc4fe241db201c.gz/SHA256E-s28031184497--d9f518e30ab62d92d08be810fe68f50857d5e5e368888e18cccc4fe241db201c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Wv/wm/SHA256E-s25764642920--4556c291f3cf935263ac60935b2a5bcc5269ab276db869daf548e236603c74d6.gz/SHA256E-s25764642920--4556c291f3cf935263ac60935b2a5bcc5269ab276db869daf548e236603c74d6.gz";
      r2 = "FF/6M/SHA256E-s28260502055--c84b15db7d2c2b9f6d7a2f95c7ddfbeebeb8d4b2418e392dc754001a2c6dcc03.gz/SHA256E-s28260502055--c84b15db7d2c2b9f6d7a2f95c7ddfbeebeb8d4b2418e392dc754001a2c6dcc03.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "PX/QG/SHA256E-s60440469195--121d7cbb948b04f47df4e1ad3bbdc4017afaf70b1c83dc36fbb039d253d16839.gz/SHA256E-s60440469195--121d7cbb948b04f47df4e1ad3bbdc4017afaf70b1c83dc36fbb039d253d16839.gz";
      r2 = "JQ/4q/SHA256E-s63584784048--9e18982c829e29e01b9d26430333bfe1b86f35ba43eff56c4fe74b42b9c7223a.gz/SHA256E-s63584784048--9e18982c829e29e01b9d26430333bfe1b86f35ba43eff56c4fe74b42b9c7223a.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "xQ/2X/SHA256E-s60735439232--5f851b17b02e83f5b9584f99f3d6622ef7cf0546c10261fa122f8cfda636bed4.gz/SHA256E-s60735439232--5f851b17b02e83f5b9584f99f3d6622ef7cf0546c10261fa122f8cfda636bed4.gz";
      r2 = "Qz/0F/SHA256E-s64309022281--5763f92bd911d66b9c92030571282f869799def49d9ca4fb9d4aadc103fe7d59.gz/SHA256E-s64309022281--5763f92bd911d66b9c92030571282f869799def49d9ca4fb9d4aadc103fe7d59.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "qx/gg/SHA256E-s3819185742--85c72810876779ec8bd8c0f54583aed403b27f4f4369a7837a947fd55baa1ccd.gz/SHA256E-s3819185742--85c72810876779ec8bd8c0f54583aed403b27f4f4369a7837a947fd55baa1ccd.gz";
      r2 = "4v/3F/SHA256E-s3890002963--e3b7fbdce06dcb0bf1ed1b057bf4a1bbddeff8febc20fc6fb5bc424a74c2a8f9.gz/SHA256E-s3890002963--e3b7fbdce06dcb0bf1ed1b057bf4a1bbddeff8febc20fc6fb5bc424a74c2a8f9.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "zv/fm/SHA256E-s3726558858--38cbd42136b12357441c864cb9d76560562a0c97f3c543fc1795c33ea46ee403.gz/SHA256E-s3726558858--38cbd42136b12357441c864cb9d76560562a0c97f3c543fc1795c33ea46ee403.gz";
      r2 = "QV/kq/SHA256E-s3817289577--7de4e52cd91599f819511cb7c3b0ba7eca3cda7262c03d1f0f07c040de0609f9.gz/SHA256E-s3817289577--7de4e52cd91599f819511cb7c3b0ba7eca3cda7262c03d1f0f07c040de0609f9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's Meeting 22.12.2022\nOCT S1 block is entirely tumour, purity 45 - 50%.  Have bloods - to do WGS. Gynae tumour site uncertain, favoured low grade serous carcinoma, focus on MAPK pathway. Mucinous/serous (RWH MDM).";
      d_case_summary = "LGSOC on ascites";
      tso500_external = "SFRC01688_TSO500_27Jun2023_Redacted.pdf";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01688";
  }
