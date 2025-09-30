with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "rna";
      pdx = false;
      r1 = "gv/2X/SHA256E-s21826064417--1e250882f85bf2ee948ef2f33911879ab96a2ee7a4383ccd647afaf660b17d4d.gz/SHA256E-s21826064417--1e250882f85bf2ee948ef2f33911879ab96a2ee7a4383ccd647afaf660b17d4d.gz";
      r2 = "9g/6K/SHA256E-s22003907835--c1e7fcfe277a50ac965bb80649a192bce7486aba9adceeb50909e1414f44e726.gz/SHA256E-s22003907835--c1e7fcfe277a50ac965bb80649a192bce7486aba9adceeb50909e1414f44e726.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "x4/VM/SHA256E-s36398236360--a85c3eaeb8745a2ff0800228290b1189744488a4fceca9bab9187b5107a9da1f.gz/SHA256E-s36398236360--a85c3eaeb8745a2ff0800228290b1189744488a4fceca9bab9187b5107a9da1f.gz";
      r2 = "Fq/5q/SHA256E-s38300649393--af557c35b4a2b27263f13ecf864a51507e613c33d39d85876fd55356e102f25d.gz/SHA256E-s38300649393--af557c35b4a2b27263f13ecf864a51507e613c33d39d85876fd55356e102f25d.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "w6/F1/SHA256E-s22025988019--430c6709e80a85645a15d0d8539f6970e7d33b7b0e1bbed95d56ad1f95f63026.gz/SHA256E-s22025988019--430c6709e80a85645a15d0d8539f6970e7d33b7b0e1bbed95d56ad1f95f63026.gz";
      r2 = "2X/qg/SHA256E-s22869392938--6eba30ab7688d4a7512e4ca01bd52750e6249ae00d15a45797971a59ee06f45f.gz/SHA256E-s22869392938--6eba30ab7688d4a7512e4ca01bd52750e6249ae00d15a45797971a59ee06f45f.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "MK/59/SHA256E-s21571484153--33723bdff5126bf65ec3f8aed6070e435254781cc1ff25d4b892eebb6b8c58e9.gz/SHA256E-s21571484153--33723bdff5126bf65ec3f8aed6070e435254781cc1ff25d4b892eebb6b8c58e9.gz";
      r2 = "V3/z8/SHA256E-s22390963325--c7332514561e89c08831dd898961919360faae2cac9a9ba0029363b9169816c7.gz/SHA256E-s22390963325--c7332514561e89c08831dd898961919360faae2cac9a9ba0029363b9169816c7.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "02/jp/SHA256E-s21632892522--3ee00a3145c259761dfce0da349f8d0d3401a34d1260fec6d8ccbd19f608037a.gz/SHA256E-s21632892522--3ee00a3145c259761dfce0da349f8d0d3401a34d1260fec6d8ccbd19f608037a.gz";
      r2 = "g1/KF/SHA256E-s22443377712--b56cf597fb15e42d1d20f02bd8c04cc6f6180ee2b3aa4d0bc3dfeed27ea00c31.gz/SHA256E-s22443377712--b56cf597fb15e42d1d20f02bd8c04cc6f6180ee2b3aa4d0bc3dfeed27ea00c31.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "Mq/fg/SHA256E-s21222970164--83a819ae805fdd29073860252421e1590e913936c0ca78fa00d76cbfe468dbed.gz/SHA256E-s21222970164--83a819ae805fdd29073860252421e1590e913936c0ca78fa00d76cbfe468dbed.gz";
      r2 = "Gq/PP/SHA256E-s22162060987--69e5ea4f363dbd605973183fa979d2e5da81d4e33d90e43db8d4be5bb1b7c92d.gz/SHA256E-s22162060987--69e5ea4f363dbd605973183fa979d2e5da81d4e33d90e43db8d4be5bb1b7c92d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3P/w9/SHA256E-s13756535684--8e96e2635bcac532d14d70b268d72972d70b670f0d43c0d5d2e209b22d226cf1.gz/SHA256E-s13756535684--8e96e2635bcac532d14d70b268d72972d70b670f0d43c0d5d2e209b22d226cf1.gz";
      r2 = "8q/1X/SHA256E-s15014081059--80db8cc8f9343e665cea7d0e7651825d94e7788a57ae5f99149c14338629dbad.gz/SHA256E-s15014081059--80db8cc8f9343e665cea7d0e7651825d94e7788a57ae5f99149c14338629dbad.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Z4/5Q/SHA256E-s13983360498--1313b6022548f2d0909a06bc2a80c340c81c65d6d3236534a0deccb45188b12a.gz/SHA256E-s13983360498--1313b6022548f2d0909a06bc2a80c340c81c65d6d3236534a0deccb45188b12a.gz";
      r2 = "92/8j/SHA256E-s15254005590--960c6180cb9df5471e1b30a0a816d7b16da0f58625d5d6c8706040fd5f17dbd7.gz/SHA256E-s15254005590--960c6180cb9df5471e1b30a0a816d7b16da0f58625d5d6c8706040fd5f17dbd7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9M/WK/SHA256E-s13935657576--21b5317c6e61f350c1c3fafec8c9798af60a9f4dd1c29f9021b4f2acb872d12d.gz/SHA256E-s13935657576--21b5317c6e61f350c1c3fafec8c9798af60a9f4dd1c29f9021b4f2acb872d12d.gz";
      r2 = "5m/v5/SHA256E-s15208122387--658ec0fad95f782946fd895cbd98d6e258a16a29d32938f78c5b70bd87096873.gz/SHA256E-s15208122387--658ec0fad95f782946fd895cbd98d6e258a16a29d32938f78c5b70bd87096873.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kM/7k/SHA256E-s14020530839--27413d77bb4bf04a2086cb0d9223c4e07e7e72c578dc1abe3192fd8f060c391e.gz/SHA256E-s14020530839--27413d77bb4bf04a2086cb0d9223c4e07e7e72c578dc1abe3192fd8f060c391e.gz";
      r2 = "j3/vw/SHA256E-s15408181560--88b86d9cfa37690c384396ac7e598576fad392760c993671604f95ade32c21ea.gz/SHA256E-s15408181560--88b86d9cfa37690c384396ac7e598576fad392760c993671604f95ade32c21ea.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "RC Meeting 24.06.2021\nDiscussed WGS report. No actionable findings.\n\n2021.03.15 - Clare answering Ratana's notes\nThe FFPE slides were submitted to Sean's lab for WGS. But they were returned, as they are short staffed and can't do the extraction. \nRatana can do DNA extraction, but RNA data would be useful for this bland tumour. Can do our own dual extraction of DNA and RNA from the FFPE? \nPlan: Yes if you can do RNA and DNA that would be worthwhile. \nCan you ask Holly and Matt about kits for RNA please. \nAlso ask Kym Pham - if we do RNA will they run it - and check she is ok about our choice of RNA kit. Maybe ask how they do it? Good for us to know what they do. \n\n2021.03.12\nHanded over FFPE sections to Sean's lab for WGS, but they are short staffed. Ratana to make DNA and RNA using AllPrep kit, will send those over for WGS.\n\n2021.02.08 Clare and Ratana\nBlock 1E has tumour. Can extract DNA for WES, but Clare has asked Sean to pay for WGS on the FFPE.\n\n2021.01.08 Clare and Ratana meeting\nOur S1 has no tumour. Ask Warren to recall block to do WES";
      d_case_summary = "19 yo female with possible HIGH grade endometrial stromal sarcoma (as opposed to low grade). Has FFPE from original hysteroscopy for molecular testing done in (Geelong?). Richard Williams to send the block to RCH (contact Fiona Chan: fiona.chan@rch.org.au) by the end of October/early September 2020. The patient had an MRI at RWH on 16th Nov and depending on the outcome, may have a repeat hysteroscopy and get more tissue. If not, recall block and do WES. Bloods were collected on 17 Nov. Surgery booked for 16/12/20- Trisha to collect tissue.";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "High grade endometrial stromal sarcoma";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = " Dec 2020 block recalled by Warren 13/1/21\n-------\nReceived by Warren 2/2/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01345";
  }
