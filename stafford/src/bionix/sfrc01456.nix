with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jG/6K/SHA256E-s42651064218--57d5db8c86ef319c92482dafa0809613c85cbf283ba63b6977a54b38e218c2cb.gz/SHA256E-s42651064218--57d5db8c86ef319c92482dafa0809613c85cbf283ba63b6977a54b38e218c2cb.gz";
      r2 = "W9/0P/SHA256E-s45573780053--59d94099e272f51feacc570a2c3942d708ad6f2657bed4d659507a27fa783ac8.gz/SHA256E-s45573780053--59d94099e272f51feacc570a2c3942d708ad6f2657bed4d659507a27fa783ac8.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Vk/X7/SHA256E-s86146030041--6f18988d6863e58cbb692599a22a49c18389ce2c0a8896b6a7acbb5196426202.gz/SHA256E-s86146030041--6f18988d6863e58cbb692599a22a49c18389ce2c0a8896b6a7acbb5196426202.gz";
      r2 = "x7/3z/SHA256E-s91810881530--6025bf7a97394def0e2734d4b462d34c08312f8aaa0c53e7c40e3bec1348eec5.gz/SHA256E-s91810881530--6025bf7a97394def0e2734d4b462d34c08312f8aaa0c53e7c40e3bec1348eec5.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "06/Q1/SHA256E-s5865341000--0e8cad30085b8f642185cb8da5e5a81914a5977a77d375a437208e57cd6ba237.gz/SHA256E-s5865341000--0e8cad30085b8f642185cb8da5e5a81914a5977a77d375a437208e57cd6ba237.gz";
      r2 = "5k/9V/SHA256E-s5934119912--f6a031ad5374afcdba0bfd404dfce3c2e4f85c87bb7cf2cbce01d51da2ec9c8d.gz/SHA256E-s5934119912--f6a031ad5374afcdba0bfd404dfce3c2e4f85c87bb7cf2cbce01d51da2ec9c8d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 23.03.2023\nDiscussed WGS report (Grimmond and SFRC).\nIn SFRC report, there is a germline RAD51D that may need referral to FCC. Could account for CN plot looking slightly HRD.\nNoisy sample, wouldn't trust mutational signatures.\nBRAF mutation matches Grimmond.\n\n07.02.2023\nS1 will be for urgent WGTS";
      blood_recall_history = "Bloods to be taken 20 April22";
      d_case_summary = "72F with a 53 year history of LGSOC\n- 1970 - initial diagnosis (age 25) in Sri Lanka, initial surgery, chemotherapy and WART (whole abdominal radiotherapy)\n- 8/2012 - left external iliac node recurrence, radiotherapy, 1L carbo pac\n- 5/2013 - pelvic node recurrence, radiotherapy 45Gy\n- 2014 - clinical trial: arimidex\n- 2016 - 2018 - clinical trial of BGBA317 (tislelizumab)\n- 2019 - 12/2019 - peglyated doxorubicin\n- 1/2020 - 7/2020 - calyx\n- 8/2021 - 9/2022 - Chlorambucil\n- 1/2023 - Fresh tissue for WGS\n\nIssue: had been slowly progressive for many years and is now progressing";
      date_consented = "2021-09-14";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "70F; Dx age 25 in Sri Lanka, no baseline tissue.\n\n2012-07: Pelvic surgery. No tumour tissue.\n\n2012-08: Surgery: Left external iliac lymph node\n\n2012: Nodal irradiation, 1st line therapy: carboplatin/paclitaxel\n\n2013-05: Localised pelvic node relapse.\nTreated with irradiation\n\n?? Commenced clinical trial involving Arimidex\n\n2014: Surgery: Large laparotomy and resection\n\n2016 - 2018: Immunotherapy trial: BGBA317 Tislelizumab, PD-1 inhibitor. Best response was SD for 2 years\n\n2019-12: Completed 2nd line chemothreapy: Pegylated doxorubicin\n\n2021-08 - 2021-09: 3rd line chemotherapy: Chlorambucil\n\n2020-01 - 2020-07: Chemotherapy: Caylex. Stable disease.\n\n2021-07: Biopsy. No malignancy identified.\n\n2022-04: Blood B1 received\n\n2022-12: Fresh Tissue S1 (Lymph node) received.";
      brca_report = "SFRC01456_BRCAPanel_21Dec2016_Redacted.pdf";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRAF V600E";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01456";
  }
