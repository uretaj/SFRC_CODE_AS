with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qw/mv/SHA256E-s38440272576--9da03f679a3f369f0df368888bb0cbc1d720397ad74d2ecca2a46070b1e8e5ff.gz/SHA256E-s38440272576--9da03f679a3f369f0df368888bb0cbc1d720397ad74d2ecca2a46070b1e8e5ff.gz";
      r2 = "9m/gf/SHA256E-s41162182585--714793493e2c1a7595b88179b8ae83d5741b4e154040284611d91deac88c7fb0.gz/SHA256E-s41162182585--714793493e2c1a7595b88179b8ae83d5741b4e154040284611d91deac88c7fb0.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "v2/FX/SHA256E-s104586326141--4a73a844f1276756f15dc89a15340c4e981f2f6a5818143b2aa488d2d4831afd.gz/SHA256E-s104586326141--4a73a844f1276756f15dc89a15340c4e981f2f6a5818143b2aa488d2d4831afd.gz";
      r2 = "5k/z1/SHA256E-s113265945635--b23d1619b8c987aa2d9a0ee82a1055d1fbcc7709fcbe828c978ac7ef49961e84.gz/SHA256E-s113265945635--b23d1619b8c987aa2d9a0ee82a1055d1fbcc7709fcbe828c978ac7ef49961e84.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "9J/50/SHA256E-s5371169152--07d0180cc530c49081a9be4df48e37c06dc938aed9172a790210a000769b95f3.gz/SHA256E-s5371169152--07d0180cc530c49081a9be4df48e37c06dc938aed9172a790210a000769b95f3.gz";
      r2 = "46/26/SHA256E-s5410817099--a6df7350e88525cfa83fc71fc98586ac73f2dd98bc32768f5c6b72b5d89db7bb.gz/SHA256E-s5410817099--a6df7350e88525cfa83fc71fc98586ac73f2dd98bc32768f5c6b72b5d89db7bb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 27.10.2022\nDiscussed WGS report (Grimmond and SFRC.\nHR Proficient (CHORD 0.002). Sig 3 highest (25%). \nNo need to send for methylation.\n\nClare's Meeting 30.05.2022\nRatana to do WGS on S1 (SF tissue)";
      blood_recall_history = "Blood taken PMCC 14 April22";
      date_of_death = "6/2022";
      d_case_summary = "uLMS";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "2021-06: Diagnosed leiomyosarcoma of the uterus.\nSurgery: total hysterectomy and bilateral salpingectomy. \nIHC positive: desmin (strong, patchy), SMA (strong & diffuse), CD10 (patchy)\nIHC negative: Beta HCG\n\nBRCA test: no pathogenic variants detected\n\n2021-08: Resection of lung nodule. Histopath review on uLMS and lung nodule: malignant spindled cell tumour in keeping with leiomyosarcoma. Non-necrotising granulomata within both lymphoid tissue and lung parenchyma.\n\n2021-12: Metastatic leiomyosarcoma, tumour infiltrating right ovary. Left ovary, right & left pelvic sidewall, left uterosacral: high grade defifferentiated sarcoma, metastatic leiomyosarcoma showing dedifferentiation.\nHistopath on right ovary\nIHC positive: desmin, caldesmon\nIHC negative: ER, PR\nKi-67: shows approx. 50-60% proliferative activity in the most mitotically active areas of the tumour.\n\nHistopath left ovary:\nIHC positive: vimentin\nIHC negative: desmin, caldesmon, pan cytokeratin AE1/3\n\n2022-04: Blood B1 received\n\n2022-05: frozen tumour from ovary (surgery 2021-12) received (tissue S1)";
      brca_report = "SFRC01498_BRCAReport_13Sep2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07/11/2022: June 2021 and Aug 2021 blocks requested from Anatpath and MH pathology respectively by Devindee for the uLMS study. \n21/11/2022: Aug 2021 and June 2021 blocks received.";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01498";
  }
