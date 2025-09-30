with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "91/55/SHA256E-s393169313--ceea73ce731c961e92630e4fe5a8b14ff2e6948f9d5a72b2688c4836c0dedd47.gz/SHA256E-s393169313--ceea73ce731c961e92630e4fe5a8b14ff2e6948f9d5a72b2688c4836c0dedd47.gz";
      r2 = "jw/02/SHA256E-s403173692--d331dafb71dcbdd20e0caf9bb2f019982875dd734c03d7cee66c8e3bdc576c37.gz/SHA256E-s403173692--d331dafb71dcbdd20e0caf9bb2f019982875dd734c03d7cee66c8e3bdc576c37.gz";
    }
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "9w/03/SHA256E-s411650745--6315df79b61afafe791b6e4ebada31df84bb72f567a2930116fb220f128ec540.gz/SHA256E-s411650745--6315df79b61afafe791b6e4ebada31df84bb72f567a2930116fb220f128ec540.gz";
      r2 = "1k/4z/SHA256E-s423154049--b0271b66baf64f20e0bad59b5874862fb5725eb3524cc6c1afde5cb8eefbf892.gz/SHA256E-s423154049--b0271b66baf64f20e0bad59b5874862fb5725eb3524cc6c1afde5cb8eefbf892.gz";
    }
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "Qq/x8/SHA256E-s418924557--cb899ab6c6f96b166e5c8598e2de0129012a62cfffee51cde0ccae92f50759de.gz/SHA256E-s418924557--cb899ab6c6f96b166e5c8598e2de0129012a62cfffee51cde0ccae92f50759de.gz";
      r2 = "Zm/Z3/SHA256E-s431009851--e13dbfeb7a939a629928bdf46af4de2addcdd5281224cb3e335003afcc7e7631.gz/SHA256E-s431009851--e13dbfeb7a939a629928bdf46af4de2addcdd5281224cb3e335003afcc7e7631.gz";
    }
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "3w/mm/SHA256E-s422551955--fd6aa60482b4fe8ed4e45c5cafb05a281654f96bebc4c8861c9382eae116e584.gz/SHA256E-s422551955--fd6aa60482b4fe8ed4e45c5cafb05a281654f96bebc4c8861c9382eae116e584.gz";
      r2 = "vw/xG/SHA256E-s434270276--0987657bbe27cd567310e40fb321bf299f7c41c35e227d21a6b1d10b6cf86965.gz/SHA256E-s434270276--0987657bbe27cd567310e40fb321bf299f7c41c35e227d21a6b1d10b6cf86965.gz";
    }
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "Xg/wq/SHA256E-s428163659--43c607ef6ec664f2f984a4c927580ae04c4496229b11452dd225b3cff10c5351.gz/SHA256E-s428163659--43c607ef6ec664f2f984a4c927580ae04c4496229b11452dd225b3cff10c5351.gz";
      r2 = "g1/08/SHA256E-s440208736--4025f01f25dde708a04ea0872ccc073795740c57a991f44ac25bdd8354f9b8bc.gz/SHA256E-s440208736--4025f01f25dde708a04ea0872ccc073795740c57a991f44ac25bdd8354f9b8bc.gz";
    }
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "v9/6z/SHA256E-s437387619--4f059a7865634451fe395a8d20c6e8fa38e2507738d216c6249564be5524a33b.gz/SHA256E-s437387619--4f059a7865634451fe395a8d20c6e8fa38e2507738d216c6249564be5524a33b.gz";
      r2 = "7w/7g/SHA256E-s447959397--5011d744a8a9f37a8e5151dbff78c5823b5f958e5e655a48f192065229248eb4.gz/SHA256E-s447959397--5011d744a8a9f37a8e5151dbff78c5823b5f958e5e655a48f192065229248eb4.gz";
    }
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "7W/P5/SHA256E-s424398182--c22b2d8267c43bb0db469cabf063edd3bcd8ca618787f5c39f77e1d4cfdef4c9.gz/SHA256E-s424398182--c22b2d8267c43bb0db469cabf063edd3bcd8ca618787f5c39f77e1d4cfdef4c9.gz";
      r2 = "j5/PK/SHA256E-s436128640--dd933a5f696477f1b473ba83ab4314510050ff9b5438abfe4a7ed8d9d5c07087.gz/SHA256E-s436128640--dd933a5f696477f1b473ba83ab4314510050ff9b5438abfe4a7ed8d9d5c07087.gz";
    }
    {
      site = "2.2";
      class = "tumours";
      pdx = false;
      r1 = "4v/Gp/SHA256E-s424024891--bf3de0d28cf0b493bcdf7562d3b0a08149e0ac0634b75f24f10a8d078fa4e908.gz/SHA256E-s424024891--bf3de0d28cf0b493bcdf7562d3b0a08149e0ac0634b75f24f10a8d078fa4e908.gz";
      r2 = "0Z/jq/SHA256E-s433684089--38127727ee3728e92bf44ade90ef8051e6d5f0d3648571a4c1c289f160221ddc.gz/SHA256E-s433684089--38127727ee3728e92bf44ade90ef8051e6d5f0d3648571a4c1c289f160221ddc.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qp/PJ/SHA256E-s2018842858--14abea2825ad602f6693bfbc99f4bd1f20cb016e6feddd9d7ce00b9c39841fad.gz/SHA256E-s2018842858--14abea2825ad602f6693bfbc99f4bd1f20cb016e6feddd9d7ce00b9c39841fad.gz";
      r2 = "p1/V9/SHA256E-s2090133423--0cf810a25725883234eaa7501fecab793a7f708a9c719f626a784defd0c5cfb1.gz/SHA256E-s2090133423--0cf810a25725883234eaa7501fecab793a7f708a9c719f626a784defd0c5cfb1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mM/Fm/SHA256E-s1934510288--35160e7bcc67b43797a39c7da32f60633bf8b8c55617f5ce800e296e8e0b3251.gz/SHA256E-s1934510288--35160e7bcc67b43797a39c7da32f60633bf8b8c55617f5ce800e296e8e0b3251.gz";
      r2 = "gF/GF/SHA256E-s1994784256--3be90b04f42ca1ac67b444868694703fd7a7798b91243c7c270a068e0967ee38.gz/SHA256E-s1994784256--3be90b04f42ca1ac67b444868694703fd7a7798b91243c7c270a068e0967ee38.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "f1/pp/SHA256E-s1939886203--c8b5e572e4ccb104e4c21a81ae1a3a5646798e33ec0f3908c6aef0c7cc6dda13.gz/SHA256E-s1939886203--c8b5e572e4ccb104e4c21a81ae1a3a5646798e33ec0f3908c6aef0c7cc6dda13.gz";
      r2 = "6g/86/SHA256E-s1994806976--6bd4651ea97b4e093045eec1b492b203f82151d7f35e59434acb257cee41f7e2.gz/SHA256E-s1994806976--6bd4651ea97b4e093045eec1b492b203f82151d7f35e59434acb257cee41f7e2.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vx/Xp/SHA256E-s2002653160--d84ef5300f2486005fdf85a1751dd1b5cce63a44971e00430edbae0897eb9cc2.gz/SHA256E-s2002653160--d84ef5300f2486005fdf85a1751dd1b5cce63a44971e00430edbae0897eb9cc2.gz";
      r2 = "X5/0m/SHA256E-s2057683679--f48465bc8870c44ac8993ecca6a9ca98794065e80c99d9f2f2ef634694574d0b.gz/SHA256E-s2057683679--f48465bc8870c44ac8993ecca6a9ca98794065e80c99d9f2f2ef634694574d0b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 14.3.24:\nCheck methylation status.\n\nSample meeting 2023.06.15\nPlan for FFPE block 2.2: Imaging super responder, WES, nanostring. Tell Kristy ";
      d_case_summary = "HGSOC (dx 2014)";
      date_consented = "2023-03-29";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "Ovarian cancer, Stage IIIC HG serous ovarian cancer\nBRCA NEG\nDiagnostic laparotomy\nNACT x3\n2014-09: Debulking including, BSO, FFPE block 2.2 received\n2015-01: surgery, FFPE block 1.3 received. \nAdjuvant chemo x3\n2023-04: Blood B1 received, nodule on left uper lobe, suspicion of new primary lung cancer. After further investigation, the nodule as disappeared after further imaging.  \n2023-06 NED\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "24Apr23: 2014sample requested from Austin by Monica\n24Apr23: 2015sample requested from Austin by Monica\n03May23: 2014sample received from Austin by Monica\n03May23: 2015sample received from Austin by Monica";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
    };
    inherit samples;
    name = "SFRC01739";
    capture = TwistV2HR;
  }
